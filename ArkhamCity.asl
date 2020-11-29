//Batman: Arkham City Autosplitter v3.0
//Originally created by Darkid, updated by ShikenNuggets and JohnStephenEvil
//Can split on pre-rendered cutscenes and load zones

state("BatmanAC", "Steam"){
	int isReloading			: 0x011711E8;
	int isLoading			: 0x01179F90; // Loading via black screen, i.e. area change
	int skin				: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x270, 0x2D0, 0x15C;
	string50 character		: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x270, 0x450, 0x0;
	byte clayface			: 0x01263118, 0x20, 0x8C, 0xBEC, 0xE26;
	int cutscenePlaying		: 0x012CAB74; // Video cutscenes
	int fightingClayface	: 0x0151BBF4;
	int inMainMenu			: 0x0151BF2C;
	byte chapter			: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0xE6;
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
	byte chapter			: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0xE6;
}

startup{
	// Settings to allow users to specify what values should be used for splitting
	// Default is just cutscenes since that's the easiest and probably most popular method
	settings.Add("splitOnCutscene", true, "Split on Cutscenes");
	settings.Add("splitOnLoads", false, "Split on Loading");
	settings.Add("splitOnBatsuit", false, "Split on Batsuit");
	settings.Add("splitOnClayface", false, "Split on Clayface");
	settings.Add("startAfterSkin", false, "Start After Skin Select");
	vars.state = 0;
}

init{
	switch(modules.First().ModuleMemorySize){
		case 0x194F000:
			version = "Steam";
			break;
		case 0x18AC000:
			version = "Epic";
			break;
	}
}

update{
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
	if(settings["splitOnCutscene"] && old.cutscenePlaying == 0 && current.cutscenePlaying == 1){
		return true;
	}
	if(settings["splitOnLoads"] && old.isLoading == 0 && current.isLoading == 1){
		return true;
	}
	if(settings["splitOnBatsuit"] && old.character.Contains("Playable_BruceW") && current.character.Contains("Playable_Batman")){
		return true;
	}
	if(settings["splitOnClayface"] && current.fightingClayface == 1 && old.clayface == current.clayface - 32){
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
		}else if(old.currentLevel.Contains("Church") && current.currentChapter > 2){
			return true; //Split on leaving Church revisit (Riddler)
		}
	}
}