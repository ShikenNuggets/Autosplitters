/*********************************************
 * Batman: Arkham Origins Autosplitter v3.0  *
 * Memory addresses found by JohnStephenEvil *
 * Code by GreenBat                          *
 *********************************************/

state("BatmanOrigins"){
	int Cutscene : 0x29C68EC; //Cutscene playing
	int isLoading : 0x13D03F8; //Loading screen
	int MainMenu : 0x29CE140; //In the main menu
	string50 LastDoorRoom   : 0x014F7E10, 0x20, 0x8C, 0xC0, 0x4CC, 0x360, 0x5C, 0x0;
	string50 PersistentLevel   : 0x014F7E10, 0x20, 0x8C, 0xC0, 0x4CC, 0x360, 0x8C, 0x0;
	string50 CurrentLevel   : 0x014F7E10, 0x20, 0x8C, 0xC0, 0x4CC, 0x360, 0x98, 0x0;
	string50 Character : 0x014F62B4, 0x4CC, 0x0, 0x30, 0xC0, 0x4CC, 0x288, 0x4A8, 0x0;
	// int cch_menu : 0x29C6790
	byte Chapter : 0x014F7E10, 0x20, 0x8C, 0xC0, 0x4CC, 0x360, 0xF3;
	byte SubChapter : 0x014F7E10, 0x20, 0x8C, 0xC0, 0x4CC, 0x360, 0xF4;
	int JokerBeatdown : 0x014F62B4, 0x4CC, 0x0, 0x30, 0xC90, 0x1E4, 0x380, 0x0, 0x26C; // Number of hits on Joker, 54=done
}

startup{
	settings.Add("skin", false, "Split on picking a skin");
	settings.SetToolTip("skin", "Splits on picking a skin at the beginning of the game after Blackgate");
	
	settings.Add("sc", true, "Split on Cutscenes");
	
	settings.Add("sp", true, "Prevent Superfluous Splits");
	settings.SetToolTip("sp", "Add a 3 second cooldown after cutscene splits to prevent unwanted splits");
	
	vars.t = 0;
	vars.state = 0;
	vars.cooldown = 3000;
	vars.splitOnce = new Dictionary<string, bool>(){
		{"Lacey", false},
		{"Bank", false},
		{"Sewersii", false},
		{"BridgeSkip", false},
		{"BombRoom", false},
		{"Panopticon", false}
	};
}

update{
	if(vars.state == 0 && old.MainMenu == 1 && current.MainMenu == 0){
		vars.state = 1; //Just left the menu
	} else if(vars.state == 1 && old.Cutscene == 1 && current.Cutscene == 0 && current.Chapter == 1 && current.SubChapter < 1){
		vars.state = 2; //Cutscene ended after leaving the menu
	} else if(vars.state != 0 && old.MainMenu == 0 && current.MainMenu == 1){
		vars.state = 0; //Returned to the menu
	}
}

start{
	if(vars.state == 2){
		vars.state = 3;
		return true;
	}
	// Potential CCH start
	//bCinematicMode->135508224
	//bCinematicMode->135270656
}

split{
	//Disable cooldown if we're not using it
	if(settings["sp"] && settings["sc"]){
		if(old.Cutscene == 1 && current.Cutscene == 0){
			vars.t = Environment.TickCount;
			return false;
		} else if(old.Cutscene == 0 && current.Cutscene == 1 && Environment.TickCount - vars.t < vars.cooldown){
			return false;
		}
	}
	
	// Cutscenes
	if(settings["sc"] && old.Cutscene == 0 && current.Cutscene == 1){
		if("BatCaveHQ".Equals(current.PersistentLevel) && current.Chapter == 2 && current.SubChapter == 0){
			return false; // Stop split on use batcomputer and fast travel out of batcave for the first time
		} else if("PoliceStation".Equals(current.PersistentLevel) && current.Chapter == 4){
			return false; // Stop split on sewers cutscene
		} else if(("NewGotham_T1".Equals(current.LastDoorRoom) || "Bridge_A1".Equals(current.LastDoorRoom) || "OldGotham_A1".Equals(current.LastDoorRoom) 
					|| "Bridge_A2".Equals(current.LastDoorRoom)) && current.Chapter == 7 && current.SubChapter == 1){
			return false; // Prevent split on distract firefly cutscene
		} else if("GothamBridge".Equals(current.PersistentLevel) && current.Chapter == 8){
			return false; // Prevent extra cutscene after firefly
		} else if("RegentHotel_A2".Equals(current.CurrentLevel) && current.Chapter == 6 && current.SubChapter == 1){
			return false; // Splashdown
		} else if("RegentHotel_B3".Equals(current.LastDoorRoom) && current.Chapter == 6 && current.SubChapter == 2){
			return false; // Bane start cutscene
		} else if("Prison".Equals(current.PersistentLevel) && current.Chapter == 9){
			return false; // Endgame cutscene and post-credit cutscene
		}
		return true;
	}
	
	// Loads
	if(old.isLoading == 0 && current.isLoading == 1){
		if(current.Chapter == 3 && current.SubChapter == 2 && "PoliceStation_A1".Equals(current.LastDoorRoom)){
			return true; // Exit GCPD
		} else if(!vars.splitOnce["BridgeSkip"] && "Bridge_A3".Equals(current.CurrentLevel) && current.Chapter == 7 && current.SubChapter == 2){
			vars.splitOnce["BridgeSkip"] = true;
			return true; // Bridge skip
		} 
	}
	
	// Area Changes
	if((old.PersistentLevel != current.PersistentLevel && !(string.IsNullOrWhiteSpace(old.PersistentLevel) || string.IsNullOrWhiteSpace(current.PersistentLevel)))
			|| (old.CurrentLevel != current.CurrentLevel  && !(string.IsNullOrWhiteSpace(old.CurrentLevel) || string.IsNullOrWhiteSpace(current.CurrentLevel)))
			|| (old.LastDoorRoom != current.LastDoorRoom  && !(string.IsNullOrWhiteSpace(old.LastDoorRoom) || string.IsNullOrWhiteSpace(current.LastDoorRoom)))){
		if(old.PersistentLevel.Contains("BatCaveHQ") && current.PersistentLevel.Contains("tower") && current.Chapter == 2){
			return true; // Enter Coventry GCR Tower
		} else if("Tower_C1".Equals(old.CurrentLevel) && "NewGotham_A3".Equals(current.CurrentLevel) && current.Chapter == 2){
			return true; // Exit GCR Tower
		} else if(!vars.splitOnce["Lacey"] && "NewGotham_A9".Equals(old.LastDoorRoom) && "Appartment_S0".Equals(current.LastDoorRoom)){
			vars.splitOnce["Lacey"] = true;
			return true; // Enter Lacey Towers
		} else if(!vars.splitOnce["Bank"] && "Bank_A1".Equals(old.LastDoorRoom) && "OldGotham_F1".Equals(current.LastDoorRoom)){
			vars.splitOnce["Bank"] = true;
			return true; // Exit Bank
		} else if("OldGotham_C4".Equals(old.LastDoorRoom) && "SteelMill_A1".Equals(current.LastDoorRoom)){
			return true; // Enter Steel Mill
		} else if(vars.splitOnce["Sewersii"] && "NewGotham_T1".Equals(old.LastDoorRoom) && "PoliceStation_C7".Equals(current.LastDoorRoom) && current.Chapter == 7){
			vars.splitOnce["Sewersii"] = true;
			return true; // Enter Sewers II
		} else if("PoliceStation_C3".Equals(old.CurrentLevel) && "PoliceStation_B2".Equals(current.CurrentLevel) && current.Chapter == 7){
			return true; // Autopsy Report in Sewers
		} else if(!vars.splitOnce["BombRoom"] && "GothamBridge_C1".Equals(old.LastDoorRoom) && "GothamBridge_B1".Equals(current.LastDoorRoom) 
					&& current.Chapter == 7 && current.SubChapter == 2){
			vars.splitOnce["BombRoom"] = true;
			return true; // Enter bomb room
		} else if(!vars.splitOnce["Panopticon"] && "Prison_C5".Equals(old.LastDoorRoom) && "Prison_B3".Equals(current.LastDoorRoom) && current.Chapter == 8){
			vars.splitOnce["Panopticon"] = true;
			return true; // Prison door to fight after saving Harely
		}
		// CCH
		// MadHatter_A3 -> _A1
	}
	
	// Chapter Changes
	if((old.Chapter != current.Chapter || old.SubChapter != current.SubChapter) && !string.IsNullOrWhiteSpace(current.Character)){
		if(current.Character.Contains("Playable_Bat")){
			if(current.Chapter == 2 && old.SubChapter == 0 && current.SubChapter == 1){
				return true; // Enter Final Offer
			} else if(current.Chapter == 2 && old.SubChapter == 1 && current.SubChapter == 2){
				return true; // Elevator after casino in Final Offer
			} else if (current.Chapter == 3 && old.SubChapter == 0 && current.SubChapter == 1 && "NewGotham_C1".Equals(old.CurrentLevel)){
				return true; // Enter GCPD for the first time
			} else if (current.Chapter == 3 && old.SubChapter == 1 && current.SubChapter == 2){
				return true; // Pickup disruptor
			} else if(old.Chapter == 3 && current.Chapter == 4){
				return true; // Sewer computer
			} else if(old.Chapter == 4 && current.Chapter == 6){
				return true; // Defeat Copperhead
			} else if(current.Chapter == 6 && old.SubChapter == 1 && current.SubChapter == 2){
				return true; // Splashdown
			} else if(old.Chapter < 7 && current.Chapter == 7 && current.SubChapter == 1){
				return true; // Bane HQ
			} else if(current.Chapter == 7 && old.SubChapter == 1 && current.SubChapter == 2){
				return true; // Talk to Gordon inside Bridge
			} else if(current.Chapter == 8 && old.SubChapter == 0 && current.SubChapter == 1 && "BatcaveHQ_A1".Equals(old.LastDoorRoom)){
				return true; // Return to Blackgate
			}
		} else if(current.Character.Contains("Playable_BmCashReg")){
			if(current.Chapter == 3 && old.SubChapter == 1 && current.SubChapter == 2){
				return true; // CCH Scan before GothCorp I
			} 	
		}
	}
	
	// Character Changes
	if(old.Character != current.Character && !(string.IsNullOrWhiteSpace(old.Character) || string.IsNullOrWhiteSpace(current.Character))){
		if(settings["skin"] && old.Character.Contains("Playable_BatMan") && current.Character.Contains("Playable_Batman")){
			return true; // Split on picking skin
		} else if(old.Character.Contains("Playable_DLCBruceWayne") && current.Character.Contains("Playable_BmCashReg")){
			return true; // CCH Suit up
		}
	}
	
	// Joker Beatdown
	if("Prison".Equals(current.PersistentLevel) && old.JokerBeatdown < 54 && current.JokerBeatdown == 54){
		return true;
	}
}