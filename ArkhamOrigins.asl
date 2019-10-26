//Batman: Arkham Origins Auto-splitter v1.0
//Has the functionality to split on pre-rendered cutscenes and loading new areas

state("BatmanOrigins"){
	int cutscenePlaying : "BatmanOrigins.exe", 0x29C68EC; //Pre-rendered cutscenes
	int isLoading : "BatmanOrigins.exe", 0x13D03F8; //Loading via black screen, i.e. area change
}

startup{
	settings.Add("splitOnCutscene", true, "Split on Cutscenes");
	settings.Add("splitOnLoads", false, "Split on Loading");
}

split{
	//Split on Cutscene Start
	if(settings["splitOnCutscene"] && old.cutscenePlaying == 0 && current.cutscenePlaying == 1){
		return true;
	}
	//Split on Loading Start
	if(settings["splitOnLoads"] && old.isLoading == 0 && current.isLoading == 1){
		return true;
	}
}