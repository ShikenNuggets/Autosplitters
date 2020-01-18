//Ion Fury Autosplitter
//Made by ShikenNuggets

state("fury"){
	string13 map : "fury.exe", 0xD6B046;
}

split{
	if(current.map != old.map){
		return true;
	}
}