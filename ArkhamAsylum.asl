/********************************************
 * Batman: Arkham Asylum Auto-splitter v1.2 *
 ********************************************/

state("ShippingPC-BmGame"){
	int mainMenu		: 0x022C2DA4;
	string30 lastRoom	: 0x022B5504, 0xC, 0x1C, 0x1A8, 0xB0, 0x35C, 0x400, 0x5C, 0x0;
	int batclaw			: 0x022B5504, 0xC, 0x1C, 0x1A8, 0x6DC;
	int lineLauncher	: 0x022B5504, 0xC, 0x1C, 0x1A8, 0x6E4;
	int gel				: 0x022B5504, 0xC, 0x1C, 0x1A8, 0x6EC;
	byte showHUD		: 0x022B5504, 0xC, 0x1C, 0x39C, 0x1CC;
	byte openingDoor	: 0x022B5504, 0xC, 0x1C, 0x682;
	string30 roomName	: 0x022B5504, 0xC, 0x1C, 0x74C, 0x0; // Current area, with some exceptions
	int cutscenePlaying	: "binkw32.dll", 0x000233F0; // Cutscene Videos
}

startup{
	vars.shouldStart = 0;
	vars.flag1 = 0; // Heart Attack
	vars.flag2 = 0; // Line Launcher
	vars.flag3 = 0; // Double Titan
	vars.flag4 = 0; // Bat-Better-Claw
	vars.flag5 = 0; // Batclaw Skip
}

update{
	current.timerPhase = timer.CurrentPhase;
	if(current.timerPhase.ToString() == "Running" && old.timerPhase.ToString() == "NotRunning"){
		vars.flag1 = 0;
		vars.flag2 = 0;
		vars.flag3 = 0;
		vars.flag4 = 0;
		vars.flag5 = 0;
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
	if(old.cutscenePlaying == 0 && current.cutscenePlaying == 1){
		if(current.roomName == "Max_B4"){
			return true; // Zsasz
		}else if(current.roomName == "Max_C5"){
			if(vars.flag1 == 1){
				vars.flag1++;
				return true; // Heart Attack
			}
			vars.flag1++;
		}else if(current.roomName == "Medical_A"){
			return true; // Dr. Skip
		}else if(current.roomName == "Medical_B7"){
			return true; // Bane
		}else if(current.roomName == "Cell_B2"){
			return true; // Warden
		}else if(current.roomName == "Cell_B1"){
			vars.flag4 = 0; // Reset Bat-Better-Claw flag, in case NMS
			return true; // Harley
		}else if(current.roomName == "Garden_B7"){
			return true; // Ivy
		}else if(current.roomName == "Visitor_C1"){
			if(vars.flag3 == 1){
				vars.flag3++;
				return true; // Double Titan
			}
			vars.flag3++;
		}
	}else if(old.roomName == "Medical_S1" && current.roomName == "Medical_B5"){
		return true; // Scarecrow 1
	}else if(current.roomName == "Admin_C1" && old.openingDoor == current.openingDoor - 2 && current.batclaw == 0 && vars.flag5 == 0){
		vars.flag5 = 1;
		return true; // Batclaw Skip, does not split in NMS
	}else if(old.roomName == "Admin_C1" && current.roomName == "Overworld_A3"){
		return true; // Bell Skip (Leaving the Mansion)
	}else if(old.roomName == "Cave_C1_Desc" && current.roomName == "Cave_B5"){
		return true; // Croc Start
	}else if(old.roomName == "Cave_B5" && current.roomName == "Cave_C1_Desc"){
		return true; // Killer Croc (Leaving the Croc area)
	}else if(old.roomName == "Cave_C6" && current.roomName == "Overworld_A1"){
		return true; // Leaving Elevator
	}else if(current.roomName == "Overworld_A2" && old.gel != current.gel){
		return true; // Batmobile
	}else if(current.roomName == "Garden_B3" && old.linelauncher != current.linelauncher){
		return true; // Line Launcher
	}else if(current.roomName == "Cave_B1_Desc" && old.batclaw != current.batclaw){
		if(vars.flag4 == 0){
			vars.flag4 = 1;
			return true; // Bat-Better-Claw
		}
	}
}