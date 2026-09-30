//Batman: Arkham City Autosplitter v4.2
//Created by ShikenNuggets, JohnStephenEvil, 30Puns, and TpRedNinja
//Splits in a bunch of places for a bunch of reasons

state("BatmanAC", "Steam"){
	int isReloading			: 0x011711E8;
	int isLoading			: 0x01179F90;
	int skin				: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x270, 0x2D0, 0x15C;
	string50 character		: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x270, 0x450, 0x0;
	byte clayface			: 0x01263118, 0x20, 0x8C, 0xBEC, 0xE26;
	int cutscenePlaying		: 0x012CAB74;
	int inMainMenu			: 0x0151BF2C;
	string50 lastDoorRoom	: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0x5c, 0x0;
	string50 persistentLevel: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0x8c, 0x0;
	string50 currentLevel	: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0x98, 0x0;
	byte chapter			: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0xE6;
	byte subChapter			: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0xE7;
	int tfBoss				: 0x01263118, 0xC, 0x278, 0x30, 0x18, 0x3C;
	byte gameState			: 0x012A5474, 0x18, 0x0, 0x60, 0x1EC;
	float DeadShotNG		: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x34C, 0x10C, 0x10;
	float HushNG 			: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x34C, 0x10C, 0x14;
	float NoraNG			: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x34C, 0x10C, 0x1C;
	float DeadShotNGPlus	: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x34C, 0x118, 0x10;
	float HushNGPlus 		: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x34C, 0x118, 0x14;
	float NoraNGPlus		: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x34C, 0x118, 0x1C;
	float CameraLocationX 	: 0x01263118, 0x20, 0x8C, 0x9A8, 0x48;
	float CameraLocationY 	: 0x01263118, 0x20, 0x8C, 0x9A8, 0x4C;
	float CameraLocationZ 	: 0x01263118, 0x20, 0x8C, 0x9A8, 0x50;
}

state("BatmanAC", "Epic"){
	int isReloading			: 0x0115C1E8;
	int isLoading			: 0x01164F90;
	int skin				: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x270, 0x2D0, 0x15C;
	string50 character		: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x270, 0x450, 0x0;
	byte clayface			: 0x0124DD38, 0x20, 0x8C, 0xBEC, 0xE26;
	int cutscenePlaying		: 0x012B55D4;
	int inMainMenu			: 0x0150BA2C;
	string50 lastDoorRoom	: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0x5c, 0x0;
	string50 persistentLevel: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0x8c, 0x0;
	string50 currentLevel	: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0x98, 0x0;
	byte chapter			: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0xE6;
	byte subChapter			: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0xE7;
	int tfBoss				: 0x0124DD38, 0xC, 0x278, 0x30, 0x18, 0x3C;
	byte gameState			: 0x01290094, 0x18, 0x0, 0x60, 0x1EC;
	float DeadShotNG		: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x34C, 0x10C, 0x10;
	float HushNG 			: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x34C, 0x10C, 0x14;
	float NoraNG			: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x34C, 0x10C, 0x1C;
	float DeadShotNGPlus	: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x34C, 0x118, 0x10;
	float HushNGPlus 		: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x34C, 0x118, 0x14;
	float NoraNGPlus		: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x34C, 0x118, 0x1C;
	float CameraLocationX 	: 0x0124DD38, 0x20, 0x8C, 0x9A8, 0x48;
	float CameraLocationY 	: 0x0124DD38, 0x20, 0x8C, 0x9A8, 0x4C;
	float CameraLocationZ 	: 0x0124DD38, 0x20, 0x8C, 0x9A8, 0x50;
}

startup{
	settings.Add("startAfterSkin", false, "Start After Skin Select");
	settings.SetToolTip("startAfterSkin", "If you wish to play with a skin, you'll need to enable this setting. If this setting is enabled, you'll need to open the skin select screen every time for the auto start to work, even if you're choosing the default skin.");
	
	settings.Add("legacyMode", false, "Legacy Mode [Not Recommended]");
	settings.SetToolTip("legacyMode", "Enables the old autosplitter settings, for those who wish to continue using them. If you don't know what this is, don't use it.");
	
	settings.Add("splitOnCutscene", false, "Split on Cutscenes", "legacyMode");
	settings.Add("splitOnLoads", false, "Split on Loads", "legacyMode");
	settings.SetToolTip("splitOnLoads", "This will give you more split points, but loads can happen at unexpected times. Be ready to undo splits a lot.");
	settings.Add("splitOnBatsuit", false, "Split on Batsuit", "legacyMode");
	settings.Add("splitOnClayface", false, "Split on Clayface", "legacyMode");
	
	vars.state = 0;
	vars.cutscenesThisChapter = 0;
	vars.tfBossWasActive = false;
	vars.tfSplitDone = false;

	// list of side missions
	//item 1 is for ng
	//item 2 is for ng+
	vars.SideMissions = new List<Tuple<Func<dynamic, float>, Func<dynamic, float>>>{
		Tuple.Create<Func<dynamic, float>, Func<dynamic, float>>(s => s.DeadShotNG, s => s.DeadShotNGPlus),
		Tuple.Create<Func<dynamic, float>, Func<dynamic, float>>(s => s.HushNG, s => s.HushNGPlus),
		Tuple.Create<Func<dynamic, float>, Func<dynamic, float>>(s => s.NoraNG, s => s.NoraNGPlus)
	};

	// a variable to check if we have control of batman.
	// this checks to make sure all of the following values are false:
	// loading, reloading, cutscene, main menu, and pause menu
	// 0 is the value for false for loading, cutscene, mainmenu and pause menu variables, 1 is for false for reloading
	vars.hasControl = false;
	// a variable for if the xyz has changed
	vars.XYZChanged = false;
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
	vars.XYZChanged = current.CameraLocationX != old.CameraLocationX || current.CameraLocationY != old.CameraLocationY || current.CameraLocationZ != old.CameraLocationZ;
	vars.hasControl = current.isLoading == 0 && current.isReloading == 1 && current.cutscenePlaying == 0 && current.inPauseMenu == 0  && current.inMainMenu == 0;
	current.timerPhase = timer.CurrentPhase;
	if(old.timerPhase.ToString() == "NotRunning" && current.timerPhase.ToString() == "Running"){
		vars.cutscenesThisChapter = 0;
		vars.tfBossWasActive = false;
		vars.tfSplitDone = false;
	}
	
	if(current.chapter == 9 && current.character != null && current.character.Contains("Playable_Catwoman") && current.tfBoss != 0){
		vars.tfBossWasActive = true;
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
	if(vars.state == 2 && current.chapter == 1 && !current.currentLevel.Contains("Court")){
		vars.state = 3;
		return true;
	}
}

split{
	bool anyLegacySettingsEnabled = settings["splitOnCutscene"] || settings["splitOnLoads"] || settings["splitOnBatsuit"] || settings["splitOnClayface"];
	if(settings["legacyMode"] && anyLegacySettingsEnabled){
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
		
		//Don't check anything else if legacy mode is on
		return false;
	}
	
	//This value should be reset before anything else happens
	//0 usually just means a quit to menu happened, so ignore that
	//There's only one cutscene in chapter 9 (and it probably means a quit to menu in NG+), so ignore that too
	if(old.chapter != current.chapter && current.chapter != 0 && current.chapter != 9){
		vars.cutscenesThisChapter = 0;
	}
	
	//---Cutscenes---
	if(old.cutscenePlaying == 0 && current.cutscenePlaying == 1){
		vars.cutscenesThisChapter++;
		if(current.chapter == 1 && current.subChapter == 2 && old.currentLevel.Contains("Court_")){
			//Ignore Courthouse 1 and 2
		}else if(current.chapter == 3 && current.subChapter == 1 && old.currentLevel.Contains("Steel_") && vars.cutscenesThisChapter > 1){
			//Ignore second cutscene in Steel Mill, but ONLY if we're in the Steel Mill (i.e. not w/Cat)
		}else if(current.chapter == 3 && current.subChapter == 3 && current.lastDoorRoom.Contains("Museum_B1")){
			//Ignore Gladiator Pit cutscene
		}else if(current.chapter == 9 && current.lastDoorRoom.Contains("Under_S2")){
			//Ignore Clayface cutscene
		}else{
			return true; //Split on all other cutscenes
		}
	}
	
	//---Loads---
	if(old.isLoading == 0 && current.isLoading == 1){
		if(((current.chapter == 2 && current.subChapter == 2) || current.chapter > 2) && (old.persistentLevel.Contains("Church") || (old.persistentLevel.Contains("OW") && old.lastDoorRoom.Contains("None")))){
			return true; //Enter Church Tower + Exit Church Revisit (100%)
		}else if(current.chapter == 3 && current.subChapter == 2 && old.lastDoorRoom.Contains("GCPD_")){
			return true; //Exit GCPD 1
		}else if(current.chapter == 3 && current.subChapter == 2 && old.lastDoorRoom.Contains("Museum_S1")){
			return true; //Grundy Skip/Jammer Skip (leaving Museum back)
		}
		
		if(old.lastDoorRoom.Contains("MadHatter_")){
			return true; //Split on leaving Mad Hatter (100%)
		}else if(current.chapter == 9 && old.lastDoorRoom.Contains("Under_C1")){
			return true; //Underground Backtrack (100%)
		}
		
		if(old.lastDoorRoom.Contains("PDLCSM")){
			return true; //Exit Steel Mill (HQR)
		}
	}
	
	//---Chapter Changes---
	if(current.chapter != old.chapter || current.subChapter != old.subChapter){
		if(current.chapter == 3 && old.subChapter == 2 && current.subChapter == 3){
			return true; //Start Jammers
		}else if(current.chapter == 4 && old.subChapter == 1 && current.subChapter == 2 && !old.lastDoorRoom.Contains("OW_")){
			return true; //Enter Fiona Predator (only if Robin skip happened)
		}else if(old.chapter != 0 && old.chapter < 6 && current.chapter == 7){
			return true; //NG+ skip
		}
	}
	
	//---Area Changes---
	if(current.lastDoorRoom != old.lastDoorRoom){
		if(current.chapter == 3 && current.subChapter == 3 && old.lastDoorRoom.Contains("OW_") && current.lastDoorRoom.Contains("Museum_")){
			return true; //Enter Museum 2 after jammers
		}else if(current.chapter == 4 && current.subChapter == 2 && old.lastDoorRoom.Contains("OW_") && current.lastDoorRoom.Contains("Under_C1")){
			return true; //Enter Underground after ninja chase
		}else if(current.chapter == 6 && current.subChapter == 1 && old.lastDoorRoom.Contains("OW_") && current.lastDoorRoom.Contains("Steel_C4")){
			return true; //Enter Steel Mill 2 (only if not doing Steel Mill 2 skip)
		}else if(current.chapter == 7 && old.lastDoorRoom.Contains("OW_") && current.lastDoorRoom.Contains("Under_B5")){
			return true; //Enter Underground after Hugo monologue
		}else if(current.chapter == 2 && current.subChapter == 2 && old.lastDoorRoom.Contains("PDLCOW_") && !current.lastDoorRoom.Contains("OW_")){
			return true; //Enter Hideout (HQR)
		}else if(current.chapter == 3 && old.lastDoorRoom.Contains("PDLCIN_A1") && current.lastDoorRoom.Contains("PDLCIN_C2")){
			return true; //Harley Predator (HQR)
		}
	}
	
	//---Character Changes---
	if(current.character != old.character){
		if(old.character.Contains("Playable_BruceWayne") && current.character.Contains("Playable_Batman")){
			return true; //Batsuit
		}else if(current.chapter == 7 && old.character.Contains("Playable_Catwoman") && current.character.Contains("Playable_Batman")){
			return true; //After Cat 3
		}else if(current.chapter == 9 && !current.lastDoorRoom.Contains("Under_S2") && old.character.Contains("Playable_Batman") && current.character.Contains("Playable_Catwoman")){
			return true; //Before Catwoman Cleanup (100%)
		}else if(old.character.Contains("Playable_Batman") && current.character.Contains("Playable_Robin")){
			return true; //HQR
		}else if(old.character.Contains("Playable_Robin") && current.character.Contains("Playable_Batman")){
			return true; //HQR
		}
	}
	
	//---Other---
	if(!string.IsNullOrWhiteSpace(current.lastDoorRoom) && current.lastDoorRoom.Contains("Under_S2") && old.clayface == current.clayface - 32){
		return true; //Clayface interaction
	}
	
	//---Two-Face (Any% w/Cat)---
	if(current.chapter == 9 && current.lastDoorRoom.Contains("Museum_") && current.character.Contains("Playable_Catwoman") && !vars.tfSplitDone && vars.tfBossWasActive && current.tfBoss == 0 && current.gameState == 0x02){
		vars.tfSplitDone = true;
		return true; //Two-Face's health bar faded off screen
	}

	//---Side Missions---
	for (int i = 0; i < vars.SideMissions.Count; i++){
		if(((vars.SideMissions[i].Item1(current) == 100 && vars.SideMissions[i].Item1(old) != 100)|| 
		(vars.SideMissions[i].Item2(current) == 100 && vars.SideMissions[i].Item2(old) != 100)) && vars.hasControl){
			return true; //Split on any side mission being completed
		}
	}

	//---Riddler Split---
	if(vars.XYZChanged && current.currentLevel.Contains("Riddler_08")){
		return true; //Split on Riddler Takedown
	}
}
