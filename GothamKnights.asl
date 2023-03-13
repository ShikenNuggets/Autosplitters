//Gotham Knights Load Remover v1.0
//Created by ShikenNuggets
//Pauses on load screens

state("GothamKnights-Win64-Shipping", "Steam 2022.10.21"){
	byte loading	: 0x072A1F88, 0x4B0, 0x0, 0x230, 0xC8, 0x8, 0x5F0, 0x490;
}

state("GothamKnights-Win64-Shipping", "Steam 2022.10.26"){
	byte loading	: 0x06EC9880, 0x0, 0x30, 0x138, 0x8, 0x140, 0x5C0, 0x490;
}

state("GothamKnights-Win64-Shipping", "Steam 2022.10.27"){
	byte loading	: 0x06EC9880, 0x0, 0x30, 0x138, 0x8, 0x140, 0x5C0, 0x490;
}

state("GothamKnights", "Steam 2022.11.07"){
	byte loading	: 0x06ECA890, 0x0, 0x30, 0x20, 0x138, 0x2D0, 0x5F0, 0x490;
}

state("GothamKnights", "Steam 2022.11.17"){
	byte loading	: 0x06EEB890, 0x0, 0x140, 0x5F0, 0x490;
}

state("GothamKnights", "Steam 2022.11.29"){
	byte loading	: 0x071C9AC8, 0x140, 0x5F8, 0x490;
}

state("GothamKnights", "Steam 2022.12.14"){
	byte loading	: 0x071C79E0, 0x140, 0x5F8, 0x490;
}

state("GothamKnights", "Steam 2023.02.14"){
	byte loading	: 0x0714C5E0, 0x0, 0x38, 0x8, 0x150, 0x490;
}

state("GothamKnights", "Steam 2023.03.06"){
	byte loading	: 0x071E9630, 0x140, 0x5F8, 0x490;
}

state("GothamKnights", "Epic 2022.11.07"){
	byte loading	: 0x07092B70, 0x0, 0x38, 0x8, 0x150, 0x490;
}

state("GothamKnights", "Epic 2022.11.17"){
	byte loading	: 0x07095C00, 0x0, 0x38, 0x8, 0x150, 0x490;
}

state("GothamKnights", "Epic 2022.11.29"){
	byte loading	: 0x07165668, 0x140, 0x5F8, 0x490;
}

state("GothamKnights", "Epic 2022.12.14"){
	byte loading	: 0x07168600, 0x140, 0x5F8, 0x490;
}

state("GothamKnights", "Epic 2023.02.14"){
	byte loading	: 0x07187E58, 0x140, 0x5F8, 0x490;
}

state("GothamKnights", "Epic 2023.03.06"){
	byte loading	: 0x0718E298, 0x140, 0x5F8, 0x490;
}

init{
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
		case 0x1BFCD000:
			version = "Steam 2022.11.07";
			break;
		case 0x1C9B1000:
			version = "Steam 2022.11.17";
			break;
		case 0x1CB4C000:
			version = "Steam 2022.11.29";
			break;
		case 0x1CA98000:
			version = "Steam 2022.12.14";
			break;
		case 0x1C53F000:
			version = "Steam 2023.02.14";
			break;
		case 0x1BDA3000:
			version = "Steam 2023.03.06";
			break;
		case 0x1CE58000:
			version = "Epic 2022.11.07";
			break;
		case 0x1BF8B000:
			version = "Epic 2022.11.17";
			break;
		case 0x1BA35000:
			version = "Epic 2022.11.29";
			break;
		case 0x1C086000:
			version = "Epic 2022.12.14";
			break;
		case 0x1CEB9000:
			version = "Epic 2023.02.14";
			break;
		case 0x1BFDF000:
			version = "Epic 2023.03.06";
			break;
		default:
			print("Unrecognized Module Size: " + modules.First().ModuleMemorySize.ToString());
			break;
	}
}

isLoading{
	return current.loading == 1;
}