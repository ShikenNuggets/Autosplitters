state("sdaemon"){
	float igt				: 0x990DB8;
	int mission				: 0x9A0FC8; // 0-5, 6-11, 12-17, 18-23, 24-29, 30-35
	bool currentMissionDone	: 0x96A2CC;
}

start{
	return old.mission < 0 && current.mission >= 0;
}

split{
	if(current.mission < 0){
		return false;
	}
	
	return old.currentMissionDone == false && current.currentMissionDone == true;
}

reset{
	return old.mission >= 0 && current.mission < 0; // Mission index is -1 on the main menu
}

isLoading{
	return true;
}

gameTime{
	if(current.igt >= 0){
		return TimeSpan.FromSeconds(current.igt);
	}
}
