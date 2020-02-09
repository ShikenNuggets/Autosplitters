//Ion Fury Autosplitter
//Made by ShikenNuggets

state("fury"){
	string13 map : "fury.exe", 0xD6B046;
	int levelIGT : "fury.exe", 0x2D0A0C8;
}

state("fury_nodrm"){
	string13 map : "fury_nodrm.exe", 0xD6B066;
	int levelIGT : "fury_nodrm.exe", 0x889A84;
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