/*********************************************
 * Batman: Arkham Knight Auto Splitter v1.1  *
 * By JohnStephenEvil and ShikenNuggets      *
 *********************************************/

state("BatmanAK"){
	int mainStory : 0x3197080, 0x0, 0x9C, 0x5AC, 0x614, 0x4EC; //Main Story Progression
}

startup{
	settings.Add("highDetail", false, "High Detail Mode [Not Recommended]");
	settings.SetToolTip("highDetail", "Use every possible split point. Not recommended");
	
	vars.anySplitPoints = new List<int>{ //Any%
		5, 10, 16, 20, 37, 45, 46, 50, 55, 58, 60, 64, 66, 68,
		69, 70, 73, 77, 78, 79, 80, 85, 87, 89, 90, 95, 96
	};
	
	vars.glitchlessSplitPoints = new List<int>{
		5, 10, 16, 20, 24, 26, 28, 31, 34, 38, 40, 42, 45, 46, 50, 55, 58, 60, 63,
		64, 66, 67, 68, 69, 70, 73, 75, 77, 78, 79, 80, 82, 85, 87, 89, 90, 95, 96
	};
	
	vars.splitPoints = vars.anySplitPoints;
	vars.highestPercent = 0;
}

update{
	current.timerPhase = timer.CurrentPhase;
	if(current.timerPhase.ToString() == "Running" && old.timerPhase.ToString() == "NotRunning"){
		vars.highestPercent = current.mainStory; //When the timer starts, reset this thing
		vars.splitPoints = vars.anySplitPoints; //Assume it's an Any% run until we hit a glitchless split
	}
}

split{
	if(current.mainStory == 11){ //Batscanner (first thing we would only hit in Glitchless)
		vars.splitPoints = vars.glitchlessSplitPoints;
	}
	
	if(current.mainStory > vars.highestPercent){
		vars.highestPercent = current.mainStory;
		
		if(settings["highDetail"] || vars.splitPoints.Contains(current.mainStory)){
			return true;
		}
	}
}