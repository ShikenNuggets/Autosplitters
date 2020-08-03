//Multiple Arkham Games Autosplitter v0.1
//Pauses Game Time on even (or odd) split indices
//This is a temporary solution until we figure out proper auto-start and auto-end for all four games

state("ShippingPC-BmGame"){}
state("BatmanAC"){}
state("BatmanOrigins"){}
state("BatmanAK"){}

startup{
	settings.Add("pauseEven", true, "Pause On Even Splits [2, 4, 6]");
	settings.Add("pauseOdd", false, "Pause On Odd Splits [1, 3, 5]");
}

isLoading{
	if(settings["pauseEven"] && timer.CurrentSplitIndex % 2 != 0){
		return true;
	}else if(settings["pauseEven"] && timer.CurrentSplitIndex % 2 == 0){
		return false;
	}
	
	if(settings["pauseOdd"] && timer.CurrentSplitIndex % 2 != 0){
		return false;
	}else if(settings["pauseOdd"] && timer.CurrentSplitIndex % 2 == 0){
		return true;
	}
}