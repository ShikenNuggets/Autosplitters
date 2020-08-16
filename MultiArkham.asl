//Multiple Arkham Games Autosplitter v0.1
//Pauses Game Time on even (or odd) split indices
//This is a temporary solution until we figure out proper auto-start and auto-end for all four games

state("ShippingPC-BmGame"){
	int mainMenu		: 0x022C2DA4;
	string30 lastRoom	: 0x022B5504, 0xC, 0x1C, 0x1A8, 0xB0, 0x35C, 0x400, 0x5C, 0x0; // Last area saved in
	byte showHUD		: 0x022B5504, 0xC, 0x1C, 0x39C, 0x1CC;
	int cutscenePlaying	: "binkw32.dll", 0x000233F0; // Cutscene Videos
}
state("BatmanAC"){}
state("BatmanOrigins"){}
state("BatmanAK"){}

startup{
	vars.shouldStart = 0;
	
	settings.Add("pauseEven", true, "Pause On Even Splits [2, 4, 6]");
	settings.Add("pauseOdd", false, "Pause On Odd Splits [1, 3, 5]");
}

update{
	if(old.mainMenu == 44 && current.mainMenu == 43 && vars.shouldStart == 0){
		vars.shouldStart = 1; // Left Main Menu
	}else if(current.lastRoom == "Max_C0" && old.cutscenePlaying == 1 && current.cutscenePlaying == 0 && vars.shouldStart == 1){
		vars.shouldStart = 2; // Cutscene Ended, in Intro Walk Area
	}else if(current.lastRoom == "Max_B3" && old.showHUD == current.showHUD - 2 && vars.shouldStart == 1){
		vars.shouldStart = 2; // Entered Intro Fight Area, HUD was allocated
	}
	
	if(current.mainMenu == 44 && vars.shouldStart != 0){
		vars.shouldStart = 0;
	}
}

start{
	if(vars.shouldStart == 2){
		vars.shouldStart = 0;
		return true;
	}
}

isLoading{
	if(settings["pauseEven"] && timer.CurrentSplitIndex % 2 != 0){
		return true;
	}else if(settings["pauseEven"] && timer.CurrentSplitIndex % 2 == 0){
		return false;
	}
	
	if(settings["pauseOdd"] && timer.CurrentSplitIndex % 2 != 0){
		return false;
	}else if(settings["pauseOdd"] && timer.CurrentSplitIndex % 2 == 0){
		return true;
	}
}