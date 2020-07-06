/********************************************
 * Batman: Arkham Asylum Auto-splitter v1.0 *
 ********************************************/

state("ShippingPC-BmGame"){
	int MainMenu        : 0x022C2DA4;
	string30 LastRoom   : 0x022B5504, 0xC, 0x1C, 0x1A8, 0xB0, 0x35C, 0x400, 0x5C, 0x0;
	int Batclaw         : 0x022B5504, 0xC, 0x1C, 0x1A8, 0x6DC;
	int Gel             : 0x022B5504, 0xC, 0x1C, 0x1A8, 0x6EC;
	byte ShowHUD        : 0x022B5504, 0xC, 0x1C, 0x39C, 0x1CC;
	byte OpeningDoor    : 0x022B5504, 0xC, 0x1C, 0x682;
	byte ICM            : 0x022B5504, 0xC, 0x1C, 0x683;
	string30 RoomName   : 0x022B5504, 0xC, 0x1C, 0x74C, 0x0; // Current area, with some exceptions
	int CutscenePlaying : "binkw32.dll", 0x000233F0; // Cutscene Videos
}

startup{
	settings.Add("NivSplits", true, "WR Split Points (sort of)");
	vars.shouldStart = 0;
	vars.flag1 = 0; // Heart Attack
	vars.flag2 = 0; // Line Launcher
	vars.flag3 = 0; // Double Titan
	vars.flag4 = 0; // Croc Start
	vars.flag5 = 0; // Bat-Better-Claw
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
	if(old.MainMenu == 44 && current.MainMenu == 43 && vars.shouldStart == 0){
		vars.shouldStart = 1; // Left Main Menu
	}else if(current.LastRoom == "Max_C0" && old.CutscenePlaying == 1 && current.CutscenePlaying == 0 && vars.shouldStart == 1){
		vars.shouldStart = 2; // Cutscene Ended Specifically in Intro Walk Area
	}else if(current.LastRoom == "Max_B3" && old.ShowHUD == current.ShowHUD - 2 && vars.shouldStart == 1){
		vars.shouldStart = 2; // Entered Intro Fight Area, Batarang Was Reallocated
	}
	if(current.MainMenu == 44 && vars.shouldStart != 0){
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
	if(settings["NivSplits"]){
		if(old.CutscenePlaying == 0 && current.CutscenePlaying == 1){
			if(current.RoomName == "Max_B4"){
				return true; // Zsasz
			}else if(current.RoomName == "Max_C5"){
				if(vars.flag1 == 1){
					vars.flag1++;
					return true; // Heart Attack
				}
				vars.flag1++;
			}else if(current.RoomName == "Medical_A"){
				return true; // Dr. Skip
			}else if(current.RoomName == "Medical_B7"){
				return true; // Bane
			}else if(current.RoomName == "Cell_B2"){
				return true; // Warden
			}else if(current.RoomName == "Cell_B1"){
				return true; // Harley
			}else if(current.RoomName == "Garden_B7"){
				return true; // Ivy
			}else if(current.RoomName == "Visitor_C1"){
				if(vars.flag3 == 1){
					vars.flag3++;
					return true; // Double Titan
				}
				vars.flag3++;
			}
		}else if(old.OpeningDoor == current.OpeningDoor - 2){
			if(current.RoomName == "Admin_C1"){
				return true; // Batclaw Skip & Bell Skip (Leaving the Mansion)
			}else if(current.RoomName == "Cave_C1_Desc"){
				if(vars.flag4 == 0){
					vars.flag4 = 1;
					return true; // Croc Start
				}
			}else if(current.RoomName == "Cave_B5"){
				return true; // Killer Croc (Leaving the Croc area)
			}else if(current.RoomName == "Cave_C6"){
				return true; // Leaving Elevator
			}
		}else if(current.RoomName == "Overworld_A2" && old.Gel != current.Gel){
			return true; // Batmobile
		}else if(current.RoomName == "Garden_B3"){
			if(old.CutscenePlaying == 1 && current.CutscenePlaying == 0){
				vars.flag2 = 0;
			}else if(old.ICM == current.ICM - 1){
				if(vars.flag2 == 1){
					vars.flag2++;
					return true; // Line Launcher
				}
				vars.flag2++;
			}
		}else if(current.RoomName == "Cave_B1_Desc" && old.Batclaw != current.Batclaw){
			if(vars.flag5 == 0){
				vars.flag5 = 1;
				return true; // Bat-Better-Claw
			}
		}else if(old.RoomName == "Medical_S1" && current.RoomName == "Medical_B5"){
			return true; // Scarecrow 1
		}
	}
}