/*********************************************
 * Batman: Arkham Origins Autosplitter v2.1  *
 * Groundwork laid by darkid                 *
 * Memory addresses found by JohnStephenEvil *
 * Code by ShikenNuggets and GreenBat        *
 *********************************************/

state("BatmanOrigins"){
	int c : 0x29C68EC; //Cutscene playing
	int m : 0x29CE140; //In the main menu
	string50 PersistentLevel   : 0x014F7E10, 0x20, 0x8C, 0xC0, 0x4CC, 0x360, 0x8C, 0x0; // Current area
}

startup{
	settings.Add("sc", true, "Split on Cutscenes");
	settings.Add("sa", true, "Split on Area Change");
	settings.Add("sp", true, "Prevent Superfluous Splits");
	settings.SetToolTip("sp", @"Add a 10 second cooldown after auto-splits to prevent unwanted splits");
	vars.t = 0;
	vars.state = 0;
	vars.cooldown = 3000;
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
		return true;
	}
}

split{
	//Disable cooldown if we're not using it
	if(settings["sp"]){
		if(settings["sc"] && old.c == 1 && current.c == 0){
			vars.t = Environment.TickCount;
			return false;
		} else if(Environment.TickCount - vars.t < vars.cooldown){
			return false;
		}
	}
	
	if(settings["sc"] && old.c == 0 && current.c == 1){
		return true;
	} else if(settings["sa"] && old.PersistentLevel != current.PersistentLevel && !(string.IsNullOrWhiteSpace(old.PersistentLevel) || string.IsNullOrWhiteSpace(current.PersistentLevel))){
		if("BatCaveHQ".Equals(current.PersistentLevel)){
			return false;
		}
		return true;
	}
}