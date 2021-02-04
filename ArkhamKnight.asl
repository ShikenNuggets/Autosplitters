/***************************************************
 * Batman: Arkham Knight Auto Splitter v1.22	   *
 * By JohnStephenEvil, ShikenNuggets, and GreenBat *
 **************************************************/

state("BatmanAK", "Steam-Old"){
	int storyPercentage			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0x4EC; // Main Story Progression (0-100)
	string50 currentLevel		: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0x18C, 0x0;
	byte sideMission1			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x95;
	string50 sideMission1Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x9C, 0x0;
	byte sideMission2			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x129;
	string50 sideMission2Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x130, 0x0;
	byte sideMission3			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x1BD;
	string50 sideMission3Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x1C4, 0x0;
	byte sideMission4			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x251;
	string50 sideMission4Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x258, 0x0;
	byte sideMission5			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x2E5;
	string50 sideMission5Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x2EC, 0x0;
	byte sideMission6			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x379;
	string50 sideMission6Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x380, 0x0;
	byte sideMission7			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x40D;
	string50 sideMission7Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x414, 0x0;
	byte sideMission8			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x4A1;
	string50 sideMission8Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x4A8, 0x0;
	byte sideMission9			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x535;
	string50 sideMission9Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x53C, 0x0;
	byte sideMission10			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x5C9;
	string50 sideMission10Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x5D0, 0x0;
	byte sideMission11			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x65D;
	string50 sideMission11Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x664, 0x0;
	byte sideMission12			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x6F1;
	string50 sideMission12Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x6F8, 0x0;
	byte sideMission13			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x785;
	string50 sideMission13Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x78C, 0x0;
	byte sideMission14			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x819;
	string50 sideMission14Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x820, 0x0;
	byte sideMission15			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x8AD;
	string50 sideMission15Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x8B4, 0x0;
	byte sideMission16			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x941;
	string50 sideMission16Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x948, 0x0;
	byte sideMission17			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x9D5;
	string50 sideMission17Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x9DC, 0x0;
	byte sideMission18			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0xA69;
	string50 sideMission18Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0xA70, 0x0;
	int jokerPunches			: 0x03197080, 0x30, 0x84, 0xA9C, 0x1AA8;
}

state("BatmanAK", "Steam-Current"){
	int storyPercentage			: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0x4EC; // Main Story Progression (0-100)
	string50 currentLevel		: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0x18C, 0x0;
	byte sideMission1			: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x95;
	string50 sideMission1Name	: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x9C, 0x0;
	byte sideMission2			: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x129;
	string50 sideMission2Name	: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x130, 0x0;
	byte sideMission3			: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x1BD;
	string50 sideMission3Name	: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x1C4, 0x0;
	byte sideMission4			: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x251;
	string50 sideMission4Name	: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x258, 0x0;
	byte sideMission5			: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x2E5;
	string50 sideMission5Name	: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x2EC, 0x0;
	byte sideMission6			: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x379;
	string50 sideMission6Name	: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x380, 0x0;
	byte sideMission7			: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x40D;
	string50 sideMission7Name	: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x414, 0x0;
	byte sideMission8			: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x4A1;
	string50 sideMission8Name	: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x4A8, 0x0;
	byte sideMission9			: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x535;
	string50 sideMission9Name	: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x53C, 0x0;
	byte sideMission10			: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x5C9;
	string50 sideMission10Name	: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x5D0, 0x0;
	byte sideMission11			: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x65D;
	string50 sideMission11Name	: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x664, 0x0;
	byte sideMission12			: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x6F1;
	string50 sideMission12Name	: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x6F8, 0x0;
	byte sideMission13			: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x785;
	string50 sideMission13Name	: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x78C, 0x0;
	byte sideMission14			: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x819;
	string50 sideMission14Name	: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x820, 0x0;
	byte sideMission15			: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x8AD;
	string50 sideMission15Name	: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x8B4, 0x0;
	byte sideMission16			: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x941;
	string50 sideMission16Name	: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x948, 0x0;
	byte sideMission17			: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x9D5;
	string50 sideMission17Name	: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x9DC, 0x0;
	byte sideMission18			: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0xA69;
	string50 sideMission18Name	: 0x0311EE40, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0xA70, 0x0;
	int jokerPunches			: 0x0311EE40, 0x30, 0x84, 0xA9C, 0x1AA8;
}

state("BatmanAK", "Epic"){
	int storyPercentage			: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0x4EC;
	string50 currentLevel		: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0x18C, 0x0;
	byte sideMission1			: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x95;
	string50 sideMission1Name	: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x9C, 0x0;
	byte sideMission2			: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x129;
	string50 sideMission2Name	: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x130, 0x0;
	byte sideMission3			: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x1BD;
	string50 sideMission3Name	: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x1C4, 0x0;
	byte sideMission4			: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x251;
	string50 sideMission4Name	: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x258, 0x0;
	byte sideMission5			: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x2E5;
	string50 sideMission5Name	: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x2EC, 0x0;
	byte sideMission6			: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x379;
	string50 sideMission6Name	: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x380, 0x0;
	byte sideMission7			: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x40D;
	string50 sideMission7Name	: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x414, 0x0;
	byte sideMission8			: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x4A1;
	string50 sideMission8Name	: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x4A8, 0x0;
	byte sideMission9			: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x535;
	string50 sideMission9Name	: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x53C, 0x0;
	byte sideMission10			: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x5C9;
	string50 sideMission10Name	: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x5D0, 0x0;
	byte sideMission11			: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x65D;
	string50 sideMission11Name	: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x664, 0x0;
	byte sideMission12			: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x6F1;
	string50 sideMission12Name	: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x6F8, 0x0;
	byte sideMission13			: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x785;
	string50 sideMission13Name	: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x78C, 0x0;
	byte sideMission14			: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x819;
	string50 sideMission14Name	: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x820, 0x0;
	byte sideMission15			: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x8AD;
	string50 sideMission15Name	: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x8B4, 0x0;
	byte sideMission16			: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x941;
	string50 sideMission16Name	: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x948, 0x0;
	byte sideMission17			: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x9D5;
	string50 sideMission17Name	: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x9DC, 0x0;
	byte sideMission18			: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0xA69;
	string50 sideMission18Name	: 0x0318CEF0, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0xA70, 0x0;
	int jokerPunches			: 0x0318CEF0, 0x30, 0x84, 0xA9C, 0x1AA8;
}

startup{
	settings.Add("highDetail", false, "High Detail Mode [Not Recommended]");
	settings.SetToolTip("highDetail", "Use every possible split point. Not recommended");
	settings.Add("sideMissions", false, "Side Missions");
	settings.Add("splitOnJoker", false, "Split at the end of Any%");

	vars.splitPoints = new List<int>{
		5, 10, 16, 20, 24, 26, 28, 31, 34, 37, 39, 40, 42, 45, 46, 50, 55, 58, 60, 63,
		64, 66, 67, 68, 69, 70, 73, 75, 77, 78, 79, 80, 82, 85, 87, 89, 90, 95, 96
	};
	vars.highestPercent = 0;
	vars.individualHighest = new List<byte>(new byte[18]);
	
	vars.sideMissionNames = new List<string>{
		"Firecrews", "Pyg", "Drones", "ManBat", "Azrael",
		"Firefly", "Penguin", "Bank", "Hush","Blackfire",
		"DLC_Freeze", "DLC_MadHatter", "DLC_Ras", "DLC_Croc"
	};
}

init{
	print("Module Size: " + modules.First().ModuleMemorySize.ToString());
	switch(modules.First().ModuleMemorySize){
		case 0x8CD2000:
			version = "Steam-Old";
			break;
		case 0x4398000:
			version = "Steam-Current";
			break;
		case 0x440B000:
			version = "Epic";
			break;
	}
}

update{
	current.timerPhase = timer.CurrentPhase;
	if(current.timerPhase.ToString() == "Running" && old.timerPhase.ToString() == "NotRunning"){
		// When the timer starts, reset these things
		vars.highestPercent = current.storyPercentage;
		
		vars.individualHighest = new List<byte>();
		if(vars.sideMissionNames.Contains(current.sideMission1Name)){
			vars.individualHighest.Add(current.sideMission1);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission2Name)){
			vars.individualHighest.Add(current.sideMission2);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission3Name)){
			vars.individualHighest.Add(current.sideMission3);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission4Name)){
			vars.individualHighest.Add(current.sideMission4);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission5Name)){
			vars.individualHighest.Add(current.sideMission5);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission6Name)){
			vars.individualHighest.Add(current.sideMission6);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission7Name)){
			vars.individualHighest.Add(current.sideMission7);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission8Name)){
			vars.individualHighest.Add(current.sideMission8);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission9Name)){
			vars.individualHighest.Add(current.sideMission9);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission10Name)){
			vars.individualHighest.Add(current.sideMission10);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission11Name)){
			vars.individualHighest.Add(current.sideMission11);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission12Name)){
			vars.individualHighest.Add(current.sideMission12);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission13Name)){
			vars.individualHighest.Add(current.sideMission13);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission14Name)){
			vars.individualHighest.Add(current.sideMission14);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission15Name)){
			vars.individualHighest.Add(current.sideMission15);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission16Name)){
			vars.individualHighest.Add(current.sideMission16);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission17Name)){
			vars.individualHighest.Add(current.sideMission17);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission18Name)){
			vars.individualHighest.Add(current.sideMission18);
		}else{
			vars.individualHighest.Add(0);
		}
	}
}

split{
	if(current.storyPercentage > vars.highestPercent){
		vars.highestPercent = current.storyPercentage;
		if(settings["highDetail"] || vars.splitPoints.Contains(current.storyPercentage)){
			return true;
		}
	}else if(settings["sideMissions"]){
		if(vars.sideMissionNames.Contains(current.sideMission1Name) && vars.individualHighest[0] < current.sideMission1){
			vars.individualHighest[0] = current.sideMission1;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission2Name) && vars.individualHighest[1] < current.sideMission2){
			vars.individualHighest[1] = current.sideMission2;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission3Name) && vars.individualHighest[2] < current.sideMission3){
			vars.individualHighest[2] = current.sideMission3;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission4Name) && vars.individualHighest[3] < current.sideMission4){
			vars.individualHighest[3] = current.sideMission4;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission5Name) && vars.individualHighest[4] < current.sideMission5){
			vars.individualHighest[4] = current.sideMission5;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission6Name) && vars.individualHighest[5] < current.sideMission6){
			vars.individualHighest[5] = current.sideMission6;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission7Name) && vars.individualHighest[6] < current.sideMission7){
			vars.individualHighest[6] = current.sideMission7;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission8Name) && vars.individualHighest[7] < current.sideMission8){
			vars.individualHighest[7] = current.sideMission8;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission9Name) && vars.individualHighest[8] < current.sideMission9){
			vars.individualHighest[8] = current.sideMission9;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission10Name) && vars.individualHighest[9] < current.sideMission10){
			vars.individualHighest[9] = current.sideMission10;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission11Name) && vars.individualHighest[10] < current.sideMission11){
			vars.individualHighest[10] = current.sideMission11;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission12Name) && vars.individualHighest[11] < current.sideMission12){
			vars.individualHighest[11] = current.sideMission12;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission13Name) && vars.individualHighest[12] < current.sideMission13){
			vars.individualHighest[12] = current.sideMission13;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission14Name) && vars.individualHighest[13] < current.sideMission14){
			vars.individualHighest[13] = current.sideMission14;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission15Name) && vars.individualHighest[14] < current.sideMission15){
			vars.individualHighest[14] = current.sideMission15;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission16Name) && vars.individualHighest[15] < current.sideMission16){
			vars.individualHighest[15] = current.sideMission16;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission17Name) && vars.individualHighest[16] < current.sideMission17){
			vars.individualHighest[16] = current.sideMission17;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission18Name) && vars.individualHighest[17] < current.sideMission18){
			vars.individualHighest[17] = current.sideMission18;
			return true;
		}
	}
	if(settings["splitOnJoker"]){
		if(current.currentLevel == "JokerBoss_B2" && old.jokerPunches > current.jokerPunches){
			return true;
		}
	}
}