/**********************************************
 * Batman: Arkham Origins Autosplitter v1.6.4 *
 * Groundwork laid by darkid                  *
 * Memory addresses found by JohnStephenEvil  *
 * Code by ShikenNuggets and GreenBat         *
 **********************************************/

state("BatmanOrigins"){
	int c : 0x29C68EC; //Cutscene playing
	int l : 0x13D03F8; //Loading screen
	int m : 0x29CE140; //In the main menu
}

startup{
	settings.Add("sc", true, "Split on Cutscenes");
	settings.Add("sl", true, "Split on Loading");
	settings.Add("sp", true, "Prevent Superfluous Splits");
	settings.Add("any%", false, "Any% Route [Experimental]");
	settings.SetToolTip("any%", @"Disables the cooldown for specific splits & extends it for other splits (Use at your own risk)");
	settings.SetToolTip("sp", @"Add a 10 second cooldown after auto-splits to prevent unwanted splits");
	vars.t = 0;
	vars.lcount = 0; //Increments when a load happens (only if "Split on loading" is true)
	vars.ccount = 0; //Increments when a cutscene happens (only if "Split on cutscenes" is true)
	vars.state = 0;
}

update{
	if(vars.state == 0 && old.m == 1 && current.m == 0){
		vars.state = 1; //Just left the menu
	}else if(vars.state == 1 && old.c == 1 && current.c == 0){
		vars.state = 2; //Cutscene ended after leaving the menu
	}else if(vars.state != 0 && old.m == 0 && current.m == 1){
		vars.state = 0; //Returned to the menu
	}
}

start{
	if(vars.state == 2){
		vars.state = 3;

		//Reset the counters (Only works if autostart is enabled)
		vars.lcount = 0;
		vars.ccount = 0;
		return true;
	}
}

split{
	int cooldown = 10000;
	
	//Experimental Any% Features
	if(settings["any%"] && vars.lcount == 4 && vars.ccount < 5){
		cooldown = 1000; //Alt way of forcing the fast travel cutscene after bane's hideout to split by making the cooldown 1s
	}else if(settings["any%"] && vars.lcount == 9){
		cooldown = 90000; //Increases the cooldown for the split inside the sewers
	}
	
	//Disable cooldown if we're not using it, or if we're using Any% and we just left the sewers
	if(settings["sp"] && (!settings["any%"] || vars.ccount != 7)){
		if((settings["sc"] && old.c == 1 && current.c == 0) || (settings["sl"] && old.l == 1 && current.l == 0)){
			vars.t = Environment.TickCount;
			return false;
		}else if(Environment.TickCount - vars.t < cooldown){
			return false;
		}
	}
	
	if(settings["sc"] && old.c == 0 && current.c == 1){
		vars.ccount += 1;
		return true;
	}else if(settings["sl"] && old.l == 0 && current.l == 1){
		vars.lcount += 1;
		return true;
	}
}