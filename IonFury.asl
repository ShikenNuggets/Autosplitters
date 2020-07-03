//Ion Fury Autosplitter
//Made by ShikenNuggets

state("fury", "1.02a"){
	string13 map : "fury.exe", 0xD6B046;
	int levelIGT : "fury.exe", 0x2D0A0C8;
}

state("fury", "public-beta"){
	string13 map : "fury.exe", 0x2DE2166;
	int levelIGT : "fury.exe", 0x472F20;
}

state("fury_nodrm"){
	string13 map : "fury_nodrm.exe", 0xD6B066;
	int levelIGT : "fury_nodrm.exe", 0x889A84;
}

init{
	print(modules.First().ModuleMemorySize.ToString());
	switch(modules.First().ModuleMemorySize){
		case 0x2E83000:
			print("1.02a");
			version = "1.02a";
			break;
		case 0x2F12000:
			print("public-beta");
			version = "public-beta";
			break;
	}
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