/*******************************************
 * Batman: Arkham Asylum Autosplitter v2.0 *
 *******************************************/

state("ShippingPC-BmGame", "Steam"){
	int mainMenu		: 0x022C2DA4;
	int currentLevel 	: 0x022C3CDC, 0x324, 0x0, 0x34, 0xB0, 0x330, 0x25C; // Numerical value representing the current area
	string30 lastRoom	: 0x022C3CDC, 0x324, 0x0, 0x34, 0xB0, 0x35C, 0x400, 0x5C, 0x0; // Last area saved in
	float batmanX		: 0x022C3CDC, 0x324, 0x0, 0x34, 0x1A8, 0x54;
	int batclaw			: 0x022C3CDC, 0x324, 0x0, 0x34, 0x1A8, 0x6DC;
	int lineLauncher	: 0x022C3CDC, 0x324, 0x0, 0x34, 0x1A8, 0x6E4;
	int gel				: 0x022C3CDC, 0x324, 0x0, 0x34, 0x1A8, 0x6EC;
	byte showHUD		: 0x022C3CDC, 0x324, 0x0, 0x34, 0x39C, 0x1CC;
	byte openingDoor	: 0x022C3CDC, 0x324, 0x0, 0x34, 0x682;
	string30 roomName	: 0x022C3CDC, 0x324, 0x0, 0x34, 0x74C, 0x0; // Current area, with some exceptions
	int cutscenePlaying	: "binkw32.dll", 0x000233F0; // Cutscene Videos
}

state("ShippingPC-BmGame", "Epic"){
	int mainMenu		: 0x02252CF4;
	int currentLevel 	: 0x02245454, 0xC, 0x1C, 0xB0, 0x330, 0x25C;
	string30 lastRoom	: 0x02245454, 0xC, 0x1C, 0xB0, 0x35C, 0x400, 0x5C, 0x0;
	float batmanX		: 0x02245454, 0xC, 0x1C, 0x1A8, 0x54;
	int batclaw			: 0x02245454, 0xC, 0x1C, 0x1A8, 0x6DC;
	int lineLauncher	: 0x02245454, 0xC, 0x1C, 0x1A8, 0x6E4;
	int gel				: 0x02245454, 0xC, 0x1C, 0x1A8, 0x6EC;
	byte showHUD		: 0x02245454, 0xC, 0x1C, 0x39C, 0x1CC;
	byte openingDoor	: 0x02245454, 0xC, 0x1C, 0x682;
	string30 roomName	: 0x02245454, 0xC, 0x1C, 0x74C, 0x0;
	int cutscenePlaying	: "binkw32.dll", 0x000233F0;
}

startup{
	vars.shouldStart = 0;
	vars.flag1 = 0; // Heart Attack
	vars.flag2 = 0; // Double Titan
	vars.flag3 = 0; // Batclaw
	vars.previousLevel = 0;
}

init{
	switch(modules.First().ModuleMemorySize){
		case 0x026B3000:
			version = "Steam";
			break;
		case 0x02641000:
			version = "Epic";
			break;
	}
}

update{
	current.timerPhase = timer.CurrentPhase;
	if(current.timerPhase.ToString() == "Running" && old.timerPhase.ToString() == "NotRunning"){
		vars.flag1 = 0;
		vars.flag2 = 0;
		vars.flag3 = 0;
		vars.previousLevel = 0;
	}
	
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

split{
	Dictionary<string, int> Rooms = new Dictionary<string, int>(){
		{ "Admin_A", 22691 }, //Main Hall
		{ "Admin_B1", 47191 }, //Library
		{ "Admin_C1", 47221 }, //Mansion Entrance
		{ "Admin_C9", 47259 }, //Wayne Manor
		{ "Admin_S2", 47266 }, //Scarecrow 2
		{ "Cave_B1", 47512 }, //Batcave
		{ "Cave_B5", 47531 }, //Croc's Lair
		{ "Cave_C1", 47547 },
		{ "Cave_C6", 47570 },
		{ "Cell_B1", 1647 },
		{ "Cell_B2", 47603 },
		{ "Garden_B5", 48506 }, //Double Titan
		{ "Garden_B7", 48513 }, //Ivy
		{ "Max_C1", 37749 },
		{ "Max_B4", 48753 },
		{ "Max_B6", 48768 },
		{ "Medical_B4", 48872 },
		{ "Medical_B5", 48878 }, //Morgue
		{ "Medical_B7", 48894 },
		{ "Medical_S1", 48929 }, //Scarecrow 1
		{ "Overworld_A1", 49203 }, //Arkham West
		{ "Overworld_A2", 49221 }, //Arkham North
		{ "Overworld_A3", 49237 }, //Arkham East
		{ "Visitor_B1", 49906 },
		{ "Visitor_C1", 49917 }
	};
	
	// When loading through a door, the currentLevel value equals 0. To split on loading doors, the following is required.
	if(old.currentLevel != 0 && current.currentLevel == 0){
		vars.previousLevel = old.currentLevel;
	}
	
	if(old.cutscenePlaying == 0 && current.cutscenePlaying == 1){
		if(current.currentLevel == Rooms["Max_B4"]){
			return true; // Zsasz
		}else if(current.currentLevel == Rooms["Max_B6"]){
			if(vars.flag1 == 0){
				vars.flag1 = 1;
				return true; // Heart Attack
			}
		}else if(current.currentLevel == Rooms["Medical_B4"]){
			return true; // Dr. Skip
		}else if(current.currentLevel == Rooms["Medical_B7"]){
			return true; // Bane
		}else if(current.currentLevel == Rooms["Cell_B2"]){
			return true; // Warden
		}else if(current.currentLevel == Rooms["Cell_B1"]){
			vars.flag3 = 0; // Reset Batclaw flag, in case NMS
			return true; // Harley
		}else if(current.currentLevel == Rooms["Max_C1"]){
			return true; // Did anyone catch the game last night (NMS)
		}else if(current.currentLevel == Rooms["Cave_B5"]){
			return true; // Croc Start (NMS)
		}else if(current.currentLevel == Rooms["Garden_B7"]){
			return true; // Ivy
		}else if(current.currentLevel == Rooms["Visitor_C1"] || current.currentLevel == Rooms["Visitor_B1"]){
			if(vars.flag2 == 1){
				vars.flag2++;
				return true; // Double Titan
			}
			vars.flag2++;
		}
	}else if(old.currentLevel == Rooms["Medical_S1"] && current.currentLevel == Rooms["Medical_B5"]){
		return true; // Scarecrow 1
	}else if(current.currentLevel == Rooms["Admin_C1"] && old.openingDoor == current.openingDoor - 2 && current.batmanX > 0){
		return true; // Batclaw Skip, does not split in NMS
	}else if(old.currentLevel == Rooms["Admin_B1"] && current.currentLevel == Rooms["Admin_C9"]){
		return true; // Wayne Manor (NMS)
	}else if(old.currentLevel == Rooms["Admin_S2"] && current.currentLevel == Rooms["Admin_A"]){
		return true; // End Scarecrow 2 (NMS)
	}else if(vars.previousLevel == Rooms["Admin_C1"] && current.currentLevel == Rooms["Overworld_A3"]){
		vars.previousLevel = 0;
		return true; // Exit Mansion
	}else if(old.currentLevel == Rooms["Cave_C1"] && current.currentLevel == Rooms["Cave_B5"]){
		return true; // Croc Start
	}else if(old.roomName == "Cave_B5" && current.roomName == "Cave_C1_Desc"){
		return true; // Killer Croc (Leaving the Croc area)
	}else if(old.roomName == "Cave_C6" && current.roomName == "Overworld_A1"){
		return true; // Leaving Elevator
	}else if(current.currentLevel == Rooms["Overworld_A2"] && old.gel != current.gel){
		return true; // Batmobile
	}else if(current.currentLevel == Rooms["Garden_B5"] && old.lineLauncher != current.lineLauncher){
		return true; // Line Launcher
	}else if(current.currentLevel == Rooms["Cave_B1"] && old.batclaw != current.batclaw){
		if(vars.flag3 == 0){
			vars.flag3 = 1;
			return true; // Batclaw & Ultra Batclaw
		}
	}
}