//Ion Fury Autosplitter
//Made by ShikenNuggets
//1.1 Steam update and stats screen split by Psych0sis

state("fury", "1.1"){
	string13 map : "fury.exe", 0x32EFE0;
	int levelIGT : "fury.exe", 0x9BC710;
	byte End : "fury.exe", 0x2CBEE6D;
}

state("fury", "1.02a"){
	string13 map : "fury.exe", 0xD6B046;
	int levelIGT : "fury.exe", 0x2D0A0C8;
}

state("fury", "public-beta"){
	string13 map : "fury.exe", 0x2D0EA26;
	int levelIGT : "fury.exe", 0x471DA0;
}

state("fury_nodrm"){
	string13 map : "fury_nodrm.exe", 0xD6B066;
	int levelIGT : "fury_nodrm.exe", 0x889A84;
}

init{
	//print(modules.First().ModuleMemorySize.ToString());
	
	if (modules.First().ModuleMemorySize == 48492544){
		version = "1.1";
	}
	else if (modules.First().ModuleMemorySize == 48771072){
		version = "1.02a";
	}
	else if (settings["Beta"]){
		version = "public-beta";
	}
	
	vars.SplitIndex = 0;
	vars.split = new List<string> {"EPICENTER - I"};
}
startup{
	settings.Add("Beta", false, "Running Public Open Beta version."); 
}

start{
	if(old.levelIGT == 0 && current.levelIGT > 0){
		return true;
	}
}

split{
	if(current.map != old.map){
		return true;
	}
	else if((current.map.ToUpper().Contains(vars.split[vars.SplitIndex])) && current.End == 1){
		return true;
	}
}
