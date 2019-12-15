//Batman: Arkham City Autosplitter 2.2
//Originally created by darkid, updated by ShikenNuggets and JohnStephenEvil
//Can split on pre-rendered cutscenes and load zones

state("BatmanAC", "Steam"){
	int cutscenePlaying : "BatmanAC.exe", 0x12CAB74; //Out-of engine cutscenes
	int inMainMenu : "BatmanAC.exe", 0x151BF2C;
	int isLoading : "BatmanAC.exe", 0x1179F90; //Loading via black screen, i.e. area change
	//int isRestartingCheckpoint : "BatmanAC.exe", 0x12D0848, 0x90, 0x788, 0x17C, 0x314, 0x14; //Holds 1 if restarting, any value o.w.
	//int fightingClayface : "BatmanAC.exe", 0x151BBF4;
	//int cutsceneSkippable : "BatmanAC.exe", 0x012D086C, 0x70, 0x7D0, 0x130;
}

state("BatmanAC", "Epic"){
	int cutscenePlaying : "BatmanAC.exe", 0x12B55D4;
	int inMainMenu : "BatmanAC.exe", 0x150BA2C;
	int isLoading : "BatmanAC.exe", 0x1164F90;
}

startup{
	//Settings to allow users to specifiy what values should be used for splitting
	//Default is just cutscenes since that's the easiest and probably most popular method
	settings.Add("splitOnCutscene", true, "Split on Cutscenes");
	settings.Add("splitOnLoads", false, "Split on Loading");
	//settings.Add("splitOnReload", false, "Split on Reload");
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
	
	vars.state = 0;
	//Constants to define states
	vars.MENU_STATE = 0;
	vars.START_STATE = 1;
	vars.SKIPPED_CUTSCENE_STATE = 2;
	vars.INGAME_STATE = 3;
}

update{
	//These are for the auto-start logic
	if(vars.state == vars.MENU_STATE && old.inMainMenu == 1 && current.inMainMenu == 0){
		vars.state = vars.START_STATE;
	}else if(vars.state == vars.START_STATE && old.cutscenePlaying == 1 && current.cutscenePlaying == 0){
		vars.state = vars.SKIPPED_CUTSCENE_STATE;
	}else if(vars.state != vars.MENU_STATE && old.inMainMenu == 0 && current.inMainMenu == 1){
		vars.state = vars.MENU_STATE;
	}
}

start{
	if(vars.state == vars.SKIPPED_CUTSCENE_STATE){
		vars.state = vars.INGAME_STATE;
		return true;
	}
}

split{
	//Split on Cutscene Start
	if(settings["splitOnCutscene"] && old.cutscenePlaying == 0 && current.cutscenePlaying == 1){
		return true;
	}
	
	//Split on Loading Start
	if(settings["splitOnLoads"] && old.isLoading == 0 && current.isLoading == 1){
		return true;
	}
}