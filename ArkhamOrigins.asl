/*********************************************
 * Batman: Arkham Origins Auto-splitter v1.4 *
 * Groundwork laid by Jbzdarkid              *
 * Memory addresses found by JohnStephenEvil *
 * Code by ShikenNuggets                     *
 *********************************************/

state("BatmanOrigins"){
	int c : 0x29C68EC;
	int l : 0x13D03F8;
	int m : 0x29CE140;
}

startup{
	settings.Add("sc", false, "Split on Cutscenes");
	settings.Add("sl", false, "Split on Loading");
	settings.Add("sp", true, "Prevent Superfluous Splits");
	settings.SetToolTip("sp", @"Add a 10 second cooldown after auto-splits to prevent unwanted splits");
	vars.t = 0;
	vars.state = 0;
	vars.state0 = 0;
	vars.state1 = 1;
	vars.state2 = 2;
	vars.state3 = 3;
}

update{
	if(vars.state == vars.state0 && old.m == 1 && current.m == 0){
		vars.state = vars.state1;
	}else if(vars.state == vars.state1 && old.c == 1 && current.c == 0){
		vars.state = vars.state2;
	}else if(vars.state != vars.state0 && old.m == 0 && current.m == 1){
		vars.state = vars.state0;
	}
}

start{
	if(vars.state == vars.state2){
		vars.state = vars.state3;
		return true;
	}
}

split{
	if(settings["sp"]){
		if((settings["sc"] && old.c == 1 && current.c == 0) || (settings["sl"] && old.l == 1 && current.l == 0)){
			vars.t = Environment.TickCount;
			return false;
		}else if(Environment.TickCount - vars.t < 10000){
			return false;
		}
	}

	if(settings["sc"] && old.c == 0 && current.c == 1){
		return true;
	}else if(settings["sl"] && old.l == 0 && current.l == 1){
		return true;
	}
}