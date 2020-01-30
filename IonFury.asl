//Ion Fury Autosplitter
//Made by ShikenNuggets

state("fury"){
	string13 map : "fury.exe", 0xD6B046;
	int levelIGT : "fury.exe", 0x2D0A0C8;
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
}