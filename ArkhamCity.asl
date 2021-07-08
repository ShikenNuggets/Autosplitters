//Batman: Arkham City Autosplitter v4.0
//Originally created by Darkid, updated by ShikenNuggets and JohnStephenEvil
//Splits in a bunch of places for a bunch of reasons

state("BatmanAC", "Steam"){
	int isReloading			: 0x011711E8;
	int isLoading			: 0x01179F90; // Loading via black screen, i.e. area change
	int skin				: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x270, 0x2D0, 0x15C;
	string50 character		: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x270, 0x450, 0x0;
	byte clayface			: 0x01263118, 0x20, 0x8C, 0xBEC, 0xE26;
	int cutscenePlaying		: 0x012CAB74; // Video cutscenes
	int fightingClayface	: 0x0151BBF4;
	int inMainMenu			: 0x0151BF2C;
	string50 lastDoorRoom	: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0x5c, 0x0;
	string50 currentLevel	: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0x98, 0x0;
	byte chapter			: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0xE6;
	byte subChapter			: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0xE7;
}

state("BatmanAC", "Epic"){
	int isReloading			: 0x0115C1E8;
	int isLoading			: 0x01164F90;
	int skin				: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x270, 0x2D0, 0x15C;
	string50 character		: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x270, 0x450, 0x0;
	byte clayface			: 0x0124DD38, 0x20, 0x8C, 0xBEC, 0xE26;
	int cutscenePlaying		: 0x012B55D4;
	int fightingClayface	: 0x0150B52C;
	int inMainMenu			: 0x0150BA2C;
	string50 currentLevel	: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0x5c, 0x0;
	string50 currentLevel	: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0x98, 0x0;
	byte chapter			: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0xE6;
	byte subChapter			: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0xE7;
}

startup{
	// Settings to allow users to specify what values should be used for splitting
	// Default is just cutscenes since that's the easiest and probably most popular method
	settings.Add("splitOnCutscene", true, "Split on Cutscenes");
	settings.Add("splitOnLoads", false, "Split on Loading [Not Recommended]");
	settings.SetToolTip("splitOnLoads", "This will give you more split points, but loads can happen at unexpected times so you need to be paying attention to LiveSplit for the entire run.");
	settings.Add("splitOnBatsuit", true, "Split on Batsuit");
	settings.Add("splitOnClayface", false, "Split on Clayface");
	settings.Add("startAfterSkin", false, "Start After Skin Select");
	
	settings.Add("2021mode", false, "Experimental Mode [Not Recommended]");
	settings.SetToolTip("2021mode", "This will ignore all other settings and implement the 'ideal' version of the autosplitter. Not guaranteed to correctly support all categories");
	
	vars.state = 0;
	vars.cutscenesThisChapter = 0;
}

init{
	switch(modules.First().ModuleMemorySize){
		case 0x194F000:
			version = "Steam";
			break;
		case 0x18C5000: //GOG
			version = "Steam";
			break;
		case 0x18AC000:
			version = "Epic";
			break;
	}
}

update{
	current.timerPhase = timer.CurrentPhase;
	if(current.timerPhase.ToString() == "Running" && old.timerPhase.ToString() == "NotRunning"){
		vars.cutscenesThisChapter = 0;
	}
	
	if(settings["startAfterSkin"] && vars.state == 0 && current.skin == 1){
		vars.state = 4;
	}else if(vars.state == 0 && old.inMainMenu == 1 && current.inMainMenu == 0){
		vars.state = 1;
	}else if(!settings["startAfterSkin"] && vars.state == 1 && old.cutscenePlaying == 1 && current.cutscenePlaying == 0){
		vars.state = 2;
	}else if(vars.state == 4 && old.isReloading == 0 && current.isReloading == 1){
		vars.state = 2;
	}else if(vars.state != 0 && old.inMainMenu == 0 && current.inMainMenu == 1){
		vars.state = 0;
	}
}

start{
	if(vars.state == 2 && current.chapter == 1){
		vars.state = 3;
		return true;
	}
}

split{
	if(settings["2021mode"]){
		//---Cutscenes---
		if(old.cutscenePlaying == 0 && current.cutscenePlaying == 1){
			vars.cutscenesThisChapter++;
			if(current.chapter == 1 && current.subChapter == 2 && old.currentLevel.Contains("Court_")){
				//Ignore Courthouse 1 and 2
			}else if(current.chapter == 3 && current.subChapter == 1 && old.currentLevel.Contains("Steel_") && vars.cutscenesThisChapter > 1){
				//Ignore second cutscene in Steel Mill, but ONLY if we're in the Steel Mill (i.e. not w/Cat)
			}else{
				return true; //Split on all other cutscenes
			}
		}
		
		//---Loads---
		if(old.isLoading == 0 && current.isLoading == 1){
			if(current.chapter == 2 && current.subChapter == 2 && old.currentLevel.Contains("Church_")){
				return true; //Exit Church/Enter Tower
			}
			
			if(current.chapter == 3 && current.subChapter == 2 && old.currentLevel.Contains("GCPD_")){
				return true; //Exit GCPD 1
			}
		}
		
		//---Chapter Changes---
		if(old.chapter != current.chapter){
			vars.cutscenesThisChapter = 0;
		}
		
		if(current.chapter == 3 && old.subChapter == 2 && current.subChapter == 3){
			return true; //Start Jammers
		}else if(current.chapter == 4 && old.subChapter == 1 && current.subChapter == 2){
			return true; //Enter Fiona Predator
		}
		
		//---Area Changes---
		if(current.chapter == 3 && current.subChapter == 3 && old.lastDoorRoom.Contains("OW_") && current.lastDoorRoom.Contains("Museum_")){
			return true; //Enter Museum 2 after jammers (not ideal but I can't figure out a better split point)
		}
		
		//---Other---
		if(old.character.Contains("Playable_BruceWayne") && current.character.Contains("Playable_Batman")){
			return true; //Batsuit
		}
		
		if(current.currentLevel.Contains("Under_S2") && old.clayface == current.clayface - 32){
			return true; //Clayface interaction
		}
		
		//If 2021 mode is on, ignore all other settings
		return false;
	}
	
	if(settings["splitOnCutscene"] && old.cutscenePlaying == 0 && current.cutscenePlaying == 1){
		return true;
	}
	if(settings["splitOnLoads"] && old.isLoading == 0 && current.isLoading == 1){
		return true;
	}
	if(settings["splitOnBatsuit"] && old.character.Contains("Playable_BruceWayne") && current.character.Contains("Playable_Batman")){
		return true;
	}
	if(settings["splitOnClayface"] && current.currentLevel.Contains("Under_S2") && old.clayface == current.clayface - 32){
		return true;
	}
	
	//HQR
	if(old.character.Contains("Playable_Robin") && current.character.Contains("Playable_Batman") && current.chapter != 2){
		return true;
	}
	if(old.character.Contains("Playable_Batman") && current.character.Contains("Playable_Robin")){
		return true;
	}
	
	//100%
	if(old.isLoading == 0 && current.isLoading == 1){
		if(old.currentLevel.Contains("MadHatter_01")){
			return true; //Split on leaving Mad Hatter
		}else if(old.currentLevel.Contains("Church") && current.chapter > 2){
			return true; //Split on leaving Church revisit (Riddler)
		}
	}
}