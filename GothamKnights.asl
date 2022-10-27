//Gotham Knights Load Remover v1.0
//Created by ShikenNuggets
//Pauses on load screens

state("GothamKnights-Win64-Shipping", "Steam 2022.10.21"){
	int loading				: 0x072A1F88, 0x4B0, 0x0, 0x230, 0xC8, 0x8, 0x5F0, 0x490;
}

state("GothamKnights-Win64-Shipping", "Steam 2022.10.26"){
	int loading				: 0x06EE0DB0, 0x40, 0x1B0, 0x80, 0x110, 0x1A8, 0x58;
}

state("GothamKnights-Win64-Shipping", "Steam 2022.10.27"){
	int loading				: 0x06EE0DB0, 0x40, 0x1B0, 0x80, 0x110, 0x1A8, 0x58;
}

init{
	print(modules.First().ModuleMemorySize.ToString());
	switch(modules.First().ModuleMemorySize){
		case 0x1C70F000:
			version = "Steam 2022.10.21";
			break;
		case 0x79C8000:
			version = "Steam 2022.10.26";
			break;
		case 0x1BB8E000:
			version = "Steam 2022.10.27";
			break;
		default:
			version = "Steam 2022.10.27";
			break;
	}
}

isLoading{
	return current.loading != 0;
}