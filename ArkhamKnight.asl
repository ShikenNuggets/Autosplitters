/*********************************************
 * Batman: Arkham Knight Auto Splitter v1.12 *
 * By JohnStephenEvil and ShikenNuggets      *
 *********************************************/

state("BatmanAK", "Steam"){
	int mainStory : 0x3197080, 0x0, 0x9C, 0x5AC, 0x614, 0x4EC; //Main Story Progression
	int freeze : 0x031921B8, 0xA0, 0x34, 0x9C, 0x5AC, 0x614, 0xA14, 0x8C8;
	int ras : 0x031921B8, 0xA0, 0x34, 0x9C, 0x5AC, 0x614, 0xA14, 0x9F0;
	int hatter : 0x031921B8, 0xA0, 0x34, 0x9C, 0x5AC, 0x614, 0xA14, 0x95C;
}

state("BatmanAK", "Epic"){
	int mainStory : 0x03796FFC, 0x5C, 0x914, 0x2A4, 0x4EC;
}

init{
	switch(modules.First().ModuleMemorySize){
		case 0x8CD2000:
			version = "Steam";
			break;
		case 0x440B000:
			version = "Epic";
			break;
	}
}

startup{
	settings.Add("highDetail", false, "High Detail Mode [Not Recommended]");
	settings.SetToolTip("highDetail", "Use every possible split point. Not recommended");
	
	vars.splitPoints = new List<int>{
		5, 10, 16, 20, 24, 26, 28, 31, 34, 37, 39, 40, 42, 45, 46, 50, 55, 58, 60, 63,
		64, 66, 67, 68, 69, 70, 73, 75, 77, 78, 79, 80, 82, 85, 87, 89, 90, 95, 96
	};
	
	vars.highestPercent = 0;
}

update{
	current.timerPhase = timer.CurrentPhase;
	if(current.timerPhase.ToString() == "Running" && old.timerPhase.ToString() == "NotRunning"){
		vars.highestPercent = current.mainStory; //When the timer starts, reset this thing
	}
}

split{
	if(current.mainStory > vars.highestPercent){
		vars.highestPercent = current.mainStory;
		
		if(settings["highDetail"] || vars.splitPoints.Contains(current.mainStory)){
			return true;
		}
	}
	
	//Season of Infamy
	if(old.freeze != current.freeze && current.freeze != 6){
		return true;
	}else if(old.ras != current.ras){
		return true;
	}else if(old.hatter != current.hatter){
		return true;
	}
}