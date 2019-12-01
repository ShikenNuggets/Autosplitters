/*********************************************
 * Batman: Arkham Knight Auto Splitter v1.0  *
 * By JohnStephenEvil and ShikenNuggets      *
 *********************************************/

state("BatmanAK"){
	float percent : 0x3197080, 0x20, 0x84, 0x61C, 0x1BC, 0x0; //Overall Percentage
	int mainStory : 0x3197080, 0x30, 0x2A4, 0x34, 0x614, 0x4EC; //Main Story Progression
}

startup{
	settings.Add("highDetail", false, "High Detail Mode");
	settings.SetToolTip("highDetail", "Use every possible split point. Not recommended");

	vars.highestPercent = 0;
	vars.splitPoints = new List<int>{ //Any%, TODO - other categories
		5, 10, 16, 20, 37, 45, 46, 50, 55, 58, 60, 64, 66, 68,
		69, 70, 73, 77, 78, 79, 80, 85, 87, 89, 90, 95, 96
	};
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
		
		if(settings["highDetail"]){
			return true; //Always split in high detail mode
		}
		
		foreach(int s in vars.splitPoints){
			if(current.mainStory == s){
				return true;
			}
		}
	}
}