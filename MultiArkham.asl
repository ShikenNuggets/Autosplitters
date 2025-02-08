//Multiple Arkham Games Autosplitter v0.2
//Pauses Game Time on certain splits
//This is a temporary solution until we figure out proper auto-start and auto-end for every category

//--------------------------------------------------//
//------------------- Asylum -----------------------//
//--------------------------------------------------//
state("ShippingPC-BmGame", "Steam"){
	int mainMenu		: 0x022C2DA4;
	string30 lastRoom	: 0x022B5504, 0xC, 0x1C, 0xB0, 0x35C, 0x400, 0x5C, 0x0; // Last area saved in
	float batmanX		: 0x022B5504, 0xC, 0x1C, 0x1A8, 0x54;
	int batclaw			: 0x022B5504, 0xC, 0x1C, 0x1A8, 0x6DC;
	int lineLauncher	: 0x022B5504, 0xC, 0x1C, 0x1A8, 0x6E4;
	int gel				: 0x022B5504, 0xC, 0x1C, 0x1A8, 0x6EC;
	byte showHUD		: 0x022B5504, 0xC, 0x1C, 0x39C, 0x1CC;
	byte openingDoor	: 0x022B5504, 0xC, 0x1C, 0x682;
	string30 roomName	: 0x022B5504, 0xC, 0x1C, 0x74C, 0x0; // Current area, with some exceptions
	int transitionId	: 0x022C3CDC, 0x324, 0x0, 0x34, 0x9D0, 0xA30, 0x1D0;
	int cutscenePlaying	: "binkw32.dll", 0x000233F0; // Cutscene Videos
}

state("ShippingPC-BmGame", "Epic"){
	int mainMenu		: 0x02252CF4;
	string30 lastRoom	: 0x02245454, 0xC, 0x1C, 0xB0, 0x35C, 0x400, 0x5C, 0x0;
	float batmanX		: 0x02245454, 0xC, 0x1C, 0x1A8, 0x54;
	int batclaw			: 0x02245454, 0xC, 0x1C, 0x1A8, 0x6DC;
	int lineLauncher	: 0x02245454, 0xC, 0x1C, 0x1A8, 0x6E4;
	int gel				: 0x02245454, 0xC, 0x1C, 0x1A8, 0x6EC;
	byte showHUD		: 0x02245454, 0xC, 0x1C, 0x39C, 0x1CC;
	byte openingDoor	: 0x02245454, 0xC, 0x1C, 0x682;
	string30 roomName	: 0x02245454, 0xC, 0x1C, 0x74C, 0x0;
	int transitionId	: 0x02245454, 0xC, 0x1C, 0x9D0, 0xA30, 0x1D0;
	int cutscenePlaying	: "binkw32.dll", 0x000233F0;
}

//--------------------------------------------------//
//-------------------- City ------------------------//
//--------------------------------------------------//
state("BatmanAC", "Steam"){
	int isReloading			: 0x011711E8;
	int isLoading			: 0x01179F90;
	int skin				: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x270, 0x2D0, 0x15C;
	string50 character		: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x270, 0x450, 0x0;
	byte clayface			: 0x01263118, 0x20, 0x8C, 0xBEC, 0xE26;
	int cutscenePlaying		: 0x012CAB74;
	int inMainMenu			: 0x0151BF2C;
	string50 lastDoorRoom	: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0x5c, 0x0;
	string50 persistentLevel: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0x8c, 0x0;
	string50 currentLevel	: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0x98, 0x0;
	byte chapter			: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0xE6;
	byte subChapter			: 0x01263118, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0xE7;
}

state("BatmanAC", "Epic"){
	int isReloading			: 0x0115C1E8;
	int isLoading			: 0x01164F90;
	int skin				: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x270, 0x2D0, 0x15C;
	string50 character		: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x270, 0x450, 0x0;
	byte clayface			: 0x0124DD38, 0x20, 0x8C, 0xBEC, 0xE26;
	int cutscenePlaying		: 0x012B55D4;
	int inMainMenu			: 0x0150BA2C;
	string50 lastDoorRoom	: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0x5c, 0x0;
	string50 persistentLevel: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0x8c, 0x0;
	string50 currentLevel	: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0x98, 0x0;
	byte chapter			: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0xE6;
	byte subChapter			: 0x0124DD38, 0x20, 0x8C, 0xC0, 0x484, 0x348, 0xE7;
}

//--------------------------------------------------//
//------------------ Origins -----------------------//
//--------------------------------------------------//
state("BatmanOrigins"){
	int Cutscene : 0x29C68EC; //Cutscene playing
	int isLoading : 0x13D03F8; //Loading screen
	int MainMenu : 0x29CE140; //In the main menu
	// int cch_menu : 0x29C6790
	string50 LastDoorRoom   : 0x014F7E10, 0x20, 0x8C, 0xC0, 0x4CC, 0x360, 0x5C, 0x0;
	string50 PersistentLevel   : 0x014F7E10, 0x20, 0x8C, 0xC0, 0x4CC, 0x360, 0x8C, 0x0;
	string50 CurrentLevel   : 0x014F7E10, 0x20, 0x8C, 0xC0, 0x4CC, 0x360, 0x98, 0x0;
	string50 Character : 0x014F62B4, 0x4CC, 0x0, 0x30, 0xC0, 0x4CC, 0x288, 0x4A8, 0x0;
	byte Chapter : 0x014F7E10, 0x20, 0x8C, 0xC0, 0x4CC, 0x360, 0xF3;
	byte SubChapter : 0x014F7E10, 0x20, 0x8C, 0xC0, 0x4CC, 0x360, 0xF4;
	byte SideChapter : 0x014F7E10, 0x20, 0x8C, 0xC0, 0x4CC, 0x360, 0xF5;
	int JokerBeatdown : 0x014F62B4, 0x4CC, 0x0, 0x30, 0xC90, 0x1E4, 0x380, 0x0, 0x26C; // Number of hits on Joker, 54=done
	int bCinematicMode : 0x014F62B4, 0x4CC, 0x0, 0x30, 0x37C;
}

//--------------------------------------------------//
//------------------- Knight -----------------------//
//--------------------------------------------------//
state("BatmanAK", "Steam-Old"){
	int storyPercentage			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0x4EC; // Main Story Progression (0-100)
	string50 currentLevel		: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0x18C, 0x0;
	byte sideMission1			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x95;
	string50 sideMission1Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x9C, 0x0;
	byte sideMission2			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x129;
	string50 sideMission2Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x130, 0x0;
	byte sideMission3			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x1BD;
	string50 sideMission3Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x1C4, 0x0;
	byte sideMission4			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x251;
	string50 sideMission4Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x258, 0x0;
	byte sideMission5			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x2E5;
	string50 sideMission5Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x2EC, 0x0;
	byte sideMission6			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x379;
	string50 sideMission6Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x380, 0x0;
	byte sideMission7			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x40D;
	string50 sideMission7Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x414, 0x0;
	byte sideMission8			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x4A1;
	string50 sideMission8Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x4A8, 0x0;
	byte sideMission9			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x535;
	string50 sideMission9Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x53C, 0x0;
	byte sideMission10			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x5C9;
	string50 sideMission10Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x5D0, 0x0;
	byte sideMission11			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x65D;
	string50 sideMission11Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x664, 0x0;
	byte sideMission12			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x6F1;
	string50 sideMission12Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x6F8, 0x0;
	byte sideMission13			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x785;
	string50 sideMission13Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x78C, 0x0;
	byte sideMission14			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x819;
	string50 sideMission14Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x820, 0x0;
	byte sideMission15			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x8AD;
	string50 sideMission15Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x8B4, 0x0;
	byte sideMission16			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x941;
	string50 sideMission16Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x948, 0x0;
	byte sideMission17			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x9D5;
	string50 sideMission17Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0x9DC, 0x0;
	byte sideMission18			: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0xA69;
	string50 sideMission18Name	: 0x03197080, 0x0, 0x9C, 0x5AC, 0x614, 0xA14, 0xA70, 0x0;
	int jokerPunches			: 0x03197080, 0x30, 0x84, 0xA9C, 0x1AA8;
}

state("BatmanAK", "Steam-Current"){
	int storyPercentage			: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0x4EC; // Main Story Progression (0-100)
	string50 currentLevel		: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0x18C, 0x0;
	byte sideMission1			: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x95;
	string50 sideMission1Name	: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x9C, 0x0;
	byte sideMission2			: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x129;
	string50 sideMission2Name	: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x130, 0x0;
	byte sideMission3			: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x1BD;
	string50 sideMission3Name	: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x1C4, 0x0;
	byte sideMission4			: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x251;
	string50 sideMission4Name	: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x258, 0x0;
	byte sideMission5			: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x2E5;
	string50 sideMission5Name	: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x2EC, 0x0;
	byte sideMission6			: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x379;
	string50 sideMission6Name	: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x380, 0x0;
	byte sideMission7			: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x40D;
	string50 sideMission7Name	: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x414, 0x0;
	byte sideMission8			: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x4A1;
	string50 sideMission8Name	: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x4A8, 0x0;
	byte sideMission9			: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x535;
	string50 sideMission9Name	: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x53C, 0x0;
	byte sideMission10			: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x5C9;
	string50 sideMission10Name	: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x5D0, 0x0;
	byte sideMission11			: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x65D;
	string50 sideMission11Name	: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x664, 0x0;
	byte sideMission12			: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x6F1;
	string50 sideMission12Name	: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x6F8, 0x0;
	byte sideMission13			: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x785;
	string50 sideMission13Name	: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x78C, 0x0;
	byte sideMission14			: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x819;
	string50 sideMission14Name	: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x820, 0x0;
	byte sideMission15			: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x8AD;
	string50 sideMission15Name	: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x8B4, 0x0;
	byte sideMission16			: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x941;
	string50 sideMission16Name	: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x948, 0x0;
	byte sideMission17			: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x9D5;
	string50 sideMission17Name	: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x9DC, 0x0;
	byte sideMission18			: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0xA69;
	string50 sideMission18Name	: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0xA70, 0x0;
	int jokerPunches			: 0x0311F508, 0x84C, 0x0, 0x5C, 0xA9C, 0x1AA8;
}

state("BatmanAK", "Epic"){
	int storyPercentage			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0x4EC;
	string50 currentLevel		: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0x18C, 0x0;
	byte sideMission1			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x95;
	string50 sideMission1Name	: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x9C, 0x0;
	byte sideMission2			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x129;
	string50 sideMission2Name	: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x130, 0x0;
	byte sideMission3			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x1BD;
	string50 sideMission3Name	: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x1C4, 0x0;
	byte sideMission4			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x251;
	string50 sideMission4Name	: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x258, 0x0;
	byte sideMission5			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x2E5;
	string50 sideMission5Name	: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x2EC, 0x0;
	byte sideMission6			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x379;
	string50 sideMission6Name	: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x380, 0x0;
	byte sideMission7			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x40D;
	string50 sideMission7Name	: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x414, 0x0;
	byte sideMission8			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x4A1;
	string50 sideMission8Name	: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x4A8, 0x0;
	byte sideMission9			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x535;
	string50 sideMission9Name	: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x53C, 0x0;
	byte sideMission10			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x5C9;
	string50 sideMission10Name	: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x5D0, 0x0;
	byte sideMission11			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x65D;
	string50 sideMission11Name	: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x664, 0x0;
	byte sideMission12			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x6F1;
	string50 sideMission12Name	: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x6F8, 0x0;
	byte sideMission13			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x785;
	string50 sideMission13Name	: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x78C, 0x0;
	byte sideMission14			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x819;
	string50 sideMission14Name	: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x820, 0x0;
	byte sideMission15			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x8AD;
	string50 sideMission15Name	: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x8B4, 0x0;
	byte sideMission16			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x941;
	string50 sideMission16Name	: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x948, 0x0;
	byte sideMission17			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x9D5;
	string50 sideMission17Name	: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0x9DC, 0x0;
	byte sideMission18			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0xA69;
	string50 sideMission18Name	: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x614, 0xA14, 0xA70, 0x0;
	int jokerPunches			: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0xA9C, 0x1AA8;
}

startup{
	vars.timerPaused = false;
	
	//------------------ Multi-Game -----------------------//
	vars.fillerSplitNames = new HashSet<string>{
		".", "-.", "- .",
		"{origins}.", "{origins} .", "start origins",
		"{asylum}.", "{asylum} .", "start asylum",
		"{city}.", "{city} .", "start city",
		"{knight}.", "{knight} .", "start knight"
	};
	
	settings.Add("pauseEven", false, "Pause On Even Splits [2, 4, 6]");
	settings.Add("pauseOdd", false, "Pause On Odd Splits [1, 3, 5]");
	settings.Add("pauseOnFillerSplits", true, "Pause On Filler Splits");
	
	//------------------- Asylum -----------------------//
	vars.asylumStarted = false;
	vars.asylumShouldStart = 0;
	vars.asylumHeartAttackFlag = 0; // Heart Attack
	vars.asylumBatmobileFlag = 0; // Batmobile
	vars.asylumBatclawSkipFlag = 0; // Batclaw Skip
	vars.asylumDoubleTitanFlag = 0; // Double Titan
	vars.asylumUltraClawFlag = 0; // Bat-Better-Claw
	vars.asylumHarleyFlag = 0;
	vars.asylumIvyFlag = 0;
	vars.asylumEndFlag = 0; // End
	
	//-------------------- City ------------------------//
	settings.Add("asylum", true, "Asylum");
	settings.Add("asylum-startSplit", true, "Split on Start", "asylum");
	
	settings.Add("city", true, "City");
	settings.Add("city-startSplit", true, "Split on Start", "city");
	settings.Add("city-startAfterSkin", false, "Start After Skin Select", "city");
	settings.SetToolTip("city-startAfterSkin", "If you wish to play with a skin, you'll need to enable this setting. If this setting is enabled, you'll need to open the skin select screen every time for the auto start to work, even if you're choosing the default skin.");
	
	settings.Add("city-legacyMode", false, "Legacy Mode [Not Recommended]", "city");
	settings.SetToolTip("city-legacyMode", "Enables the old autosplitter settings, for those who wish to continue using them. If you don't know what this is, don't use it.");
	
	settings.Add("city-splitOnCutscene", false, "Split on Cutscenes", "city-legacyMode");
	settings.Add("city-splitOnLoads", false, "Split on Loads", "city-legacyMode");
	settings.SetToolTip("city-splitOnLoads", "This will give you more split points, but loads can happen at unexpected times. Be ready to undo splits a lot.");
	settings.Add("city-splitOnBatsuit", false, "Split on Batsuit", "city-legacyMode");
	settings.Add("city-splitOnClayface", false, "Split on Clayface", "city-legacyMode");
	
	vars.cityStarted = false;
	vars.cityState = 0;
	vars.cityCutscenesThisChapter = 0;
	
	//------------------ Origins -----------------------//
	settings.Add("origins", true, "Origins");
	settings.Add("origins-startSplit", true, "Split on Start", "origins");
	settings.Add("origins-skin", false, "Split on picking a skin", "origins");
	settings.SetToolTip("origins-skin", "Splits on picking a skin at the beginning of the game after Blackgate");
	
	settings.Add("origins-sc", true, "Split on Cutscenes", "origins");
	
	settings.Add("origins-cch", true, "CCH", "origins");
	settings.Add("origins-cchStart", true, "Auto-Start", "origins-cch");
	settings.SetToolTip("origins-cchStart", "Enables Auto-start for CCH, you must use a +5.3s offset");
	
	Func<string, string, string, string, bool> EnterExit = (exterior, interior, prev, curr) => {
		return (exterior.Equals(prev) && interior.Equals(curr)) 
				|| (interior.Equals(prev) && exterior.Equals(curr));
	};
	
	vars.originsStarted = false;
	vars.originsEnterExit = EnterExit;
	vars.originsLastCutscene = 0;
	vars.originsState = 0;
	vars.originsCooldown = 3000;
	vars.originsBridgeLoadCount = 0;
	vars.originsSplitOnce = new Dictionary<string, bool>(){
		{"Lacey", false},
		{"GCPD", false},
		{"Bank", false},
		{"Sewersii", false},
		{"Funhouse", false},
		{"SteelMill", false},
		{"ExitSteelMill", false},
		{"BaneHQ", false},
		{"Deadshot", false},
		{"BombRoom", false},
		{"Panopticon", false},
		{"Bird", false},
		{"Church", false},
		{"TN1", false}
	};
	
	//------------------- Knight -----------------------//
	settings.Add("knight", true, "Knight");
	settings.Add("knight-highDetail", false, "High Detail Mode [Not Recommended]", "knight");
	settings.SetToolTip("knight-highDetail", "Use every possible split point. Not recommended");
	settings.Add("knight-sideMissions", false, "Side Missions", "knight");
	settings.Add("knight-splitOnJoker", false, "Split at the end of the Main Story", "knight");
	settings.Add("knight-splitOnRiddler", false, "Split on arresting Riddler", "knight");

	vars.knightSplitPoints = new List<int>{
		5, 10, 16, 20, 24, 26, 28, 31, 37, 39, 40, 42, 45, 46, 50, 55, 58, 60, 63,
		64, 66, 67, 68, 69, 70, 73, 75, 77, 78, 79, 80, 82, 85, 87, 89, 90, 95, 96
	};
	vars.knightHighestPercent = 0;
	vars.knightIndividualHighest = new List<byte>(new byte[18]);
	
	vars.knightSideMissionNames = new List<string>{
		"Firecrews", "Pyg", "Drones", "ManBat", "Azrael",
		"Firefly", "Penguin", "Bank", "Hush","Blackfire",
		"DLC_Freeze", "DLC_MadHatter", "DLC_Ras", "DLC_Croc"
	};
	
	vars.knightRiddlerDone = false;
	
	vars.knightUpdateSideMission = (Action<int, string, byte, bool>)((int idx, string name, byte progress, bool splitOnRiddler) => {
		if(vars.knightSideMissionNames.Contains(name) && progress <= 100){
			vars.knightIndividualHighest[idx] = progress;
		}else if(splitOnRiddler && "Riddler".Equals(name) && progress == 100){
			vars.knightRiddlerDone = true;
		}
	});
	
	vars.knightShouldSplitOnSideMission = (Func<int, string, byte, bool, bool>)((int idx, string name, byte progress, bool splitOnRiddler) => {
		if(vars.knightSideMissionNames.Contains(name) && vars.knightIndividualHighest[idx] < progress && progress <= 100){
			print("[MASL] Split on Side");
			vars.knightIndividualHighest[idx] = progress;
			return true;
		}else if(splitOnRiddler && "Riddler".Equals(name) && progress == 100 && !vars.knightRiddlerDone){
			print("[MASL] Split on Fiddler");
			vars.knightRiddlerDone = true;
			return true;
		}
		
		return false;
	});
}

init{
	switch(modules.First().ModuleMemorySize){
		case 0x026B3000: //Asylum Steam
		case 0x194F000: //City Steam
		case 0x18C5000: //City GoG
			version = "Steam";
			break;
		case 0x02641000: //Asylum Epic
		case 0x18AC000: //City Epic
		case 0x440B000: //Knight Epic
			version = "Epic";
			break;
		case 0x8CD2000: //Knight Old Steam
			version = "Steam-Old";
			break;
		case 0x4398000: //Knight Current Steam
			version = "Steam-Current";
			break;
	}
}

update{
	current.timerPhase = timer.CurrentPhase;
	if(current.timerPhase.ToString() == "Running" && old.timerPhase.ToString() == "NotRunning"){
		vars.asylumHeartAttackFlag = 0;
		vars.asylumBatmobileFlag = 0;
		vars.asylumBatclawSkipFlag = 0;
		vars.asylumDoubleTitanFlag = 0;
		vars.asylumUltraClawFlag = 0;
		vars.asylumHarleyFlag = 0;
		vars.asylumIvyFlag = 0;
		vars.asylumEndFlag = 0;
		
		vars.cityCutscenesThisChapter = 0;
		
		vars.originsBridgeLoadCount = 0;
		vars.originsSplitOnce = new Dictionary<string, bool>(){
			{"Lacey", false},
			{"GCPD", false},
			{"Bank", false},
			{"Sewersii", false},
			{"Funhouse", false},
			{"SteelMill", false},
			{"ExitSteelMill", false},
			{"BaneHQ", false},
			{"Deadshot", false},
			{"BombRoom", false},
			{"Panopticon", false},
			{"Bird", false},
			{"Church", false},
			{"TN1", false}
		};
		
		vars.knightHighestPercent = current.storyPercentage;
		
		vars.knightIndividualHighest = new List<byte>(){
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
		};
		
		vars.knightRiddlerDone = false;
		
		if(game.ProcessName.ToLower() == "batmanak" && !vars.timerPaused){
			bool splitOnRiddler = settings["knight-splitOnRiddler"];
			vars.knightUpdateSideMission(0, current.sideMission1Name, current.sideMission1, splitOnRiddler);
			vars.knightUpdateSideMission(1, current.sideMission2Name, current.sideMission2, splitOnRiddler);
			vars.knightUpdateSideMission(2, current.sideMission3Name, current.sideMission3, splitOnRiddler);
			vars.knightUpdateSideMission(3, current.sideMission4Name, current.sideMission4, splitOnRiddler);
			vars.knightUpdateSideMission(4, current.sideMission5Name, current.sideMission5, splitOnRiddler);
			vars.knightUpdateSideMission(5, current.sideMission6Name, current.sideMission6, splitOnRiddler);
			vars.knightUpdateSideMission(6, current.sideMission7Name, current.sideMission7, splitOnRiddler);
			vars.knightUpdateSideMission(7, current.sideMission8Name, current.sideMission8, splitOnRiddler);
			vars.knightUpdateSideMission(8, current.sideMission9Name, current.sideMission9, splitOnRiddler);
			vars.knightUpdateSideMission(9, current.sideMission10Name, current.sideMission10, splitOnRiddler);
			vars.knightUpdateSideMission(10, current.sideMission11Name, current.sideMission11, splitOnRiddler);
			vars.knightUpdateSideMission(11, current.sideMission12Name, current.sideMission12, splitOnRiddler);
			vars.knightUpdateSideMission(12, current.sideMission13Name, current.sideMission13, splitOnRiddler);
			vars.knightUpdateSideMission(13, current.sideMission14Name, current.sideMission14, splitOnRiddler);
			vars.knightUpdateSideMission(14, current.sideMission15Name, current.sideMission15, splitOnRiddler);
			vars.knightUpdateSideMission(15, current.sideMission16Name, current.sideMission16, splitOnRiddler);
			vars.knightUpdateSideMission(16, current.sideMission17Name, current.sideMission17, splitOnRiddler);
			vars.knightUpdateSideMission(17, current.sideMission18Name, current.sideMission18, splitOnRiddler);
		}
	}
	
	//------------------- Asylum -----------------------//
	if(game.ProcessName.ToLower() == "shippingpc-bmgame"){
		if(old.mainMenu == 44 && current.mainMenu == 43 && vars.asylumShouldStart == 0){
			vars.asylumShouldStart = 1; // Left Main Menu
		}else if(current.lastRoom == "Max_C0" && old.cutscenePlaying == 1 && current.cutscenePlaying == 0 && vars.asylumShouldStart == 1){
			vars.asylumShouldStart = 2; // Cutscene Ended, in Intro Walk Area
		}else if(current.lastRoom == "Max_B3" && old.showHUD == current.showHUD - 2 && vars.asylumShouldStart == 1){
			vars.asylumShouldStart = 2; // Entered Intro Fight Area, HUD was allocated
		}
		
		if(current.mainMenu == 44 && vars.asylumShouldStart != 0){
			vars.asylumShouldStart = 0;
		}
	//-------------------- City ------------------------//
	}else if(game.ProcessName.ToLower() == "batmanac"){
		if(settings["city-startAfterSkin"] && vars.cityState == 0 && current.skin == 1){
			vars.cityState = 4;
		}else if(vars.cityState == 0 && old.inMainMenu == 1 && current.inMainMenu == 0){
			vars.cityState = 1;
		}else if(!settings["city-startAfterSkin"] && vars.cityState == 1 && old.cutscenePlaying == 1 && current.cutscenePlaying == 0){
			vars.cityState = 2;
		}else if(vars.cityState == 4 && old.isReloading == 0 && current.isReloading == 1){
			vars.cityState = 2;
		}else if(vars.cityState != 0 && old.inMainMenu == 0 && current.inMainMenu == 1){
			vars.cityState = 0;
		}
	//------------------ Origins -----------------------//
	}else if(game.ProcessName.ToLower() == "batmanorigins"){
		if(vars.originsState == 0 && old.MainMenu == 1 && current.MainMenu == 0){
			vars.originsState = 1; //Just left the menu
		}else if(vars.originsState == 1 && current.Chapter == 1 && current.SubChapter < 1){
			if(old.Cutscene == 1 && current.Cutscene == 0 && !current.Character.Contains("BruceWayne")){
				vars.originsState = 2; //Start main story
			}else if (settings["origins-cchStart"] && old.bCinematicMode == 135508224 && current.bCinematicMode == 135270656 
						&& current.Character.Contains("BruceWayne")){
				vars.originsState = 2; // Start CCH
			}
		}else if(vars.originsState != 0 && old.MainMenu == 0 && current.MainMenu == 1){
			vars.originsState = 0; //Returned to the menu
		}
	}
}

start{
	//------------------- Asylum -----------------------//
	if(settings["asylum"] && game.ProcessName.ToLower() == "shippingpc-bmgame" && vars.asylumShouldStart == 2){
		vars.asylumShouldStart = 0;
		return true;
	}
	
	//-------------------- City ------------------------//
	if(settings["city"] && game.ProcessName.ToLower() == "batmanac" && vars.cityState == 2 && current.chapter == 1 && !current.currentLevel.Contains("Court")){
		vars.cityState = 3;
		return true;
	}
	
	//------------------ Origins -----------------------//
	if(settings["origins"] && game.ProcessName.ToLower() == "batmanorigins" && vars.originsState == 2){
		vars.originsState = 3;
		return true;
	}
}

split{
	//--------------------------------------------------//
	//------------------- Asylum -----------------------//
	//--------------------------------------------------//
	if(settings["asylum"] && game.ProcessName.ToLower() == "shippingpc-bmgame"){
		if(settings["asylum-startSplit"] && vars.asylumShouldStart == 2){
			vars.asylumShouldStart = 0;
			return true;
		}
		
		if(vars.timerPaused){
			return false; //Don't check any other split points if the run has not actually started
		}
		
		if(old.cutscenePlaying == 0 && current.cutscenePlaying == 1){
			if(current.roomName == "Max_B4"){
				return true; // Zsasz
			}else if(current.roomName == "Max_C5"){
				if(vars.asylumHeartAttackFlag == 1){
					vars.asylumHeartAttackFlag++;
					return true; // Heart Attack
				}
				vars.asylumHeartAttackFlag++;
			}else if(current.roomName == "Medical_A" || current.roomName == "Medical_C2"){
				return true; // Dr. Skip
			}else if(current.lastRoom == "Medical_B7"){
				return true; // Bane
			}else if(current.roomName == "Cell_B2"){
				return true; // Warden
			}else if(current.roomName == "Cell_B1"){
				vars.asylumUltraClawFlag = 0; // Reset Bat-Better-Claw flag, in case NMS
				vars.asylumHarleyFlag = 1;
				return true; // Harley
			}else if(current.lastRoom == "Max_C1"){
				return true; //Did anyone catch the game last night (NMS)
			}else if(current.roomName == "Cave_B5"){
				return true; //Croc Start for NMS
			}else if(current.roomName == "Garden_B7"){
				vars.asylumIvyFlag = 1;
				return true; // Ivy
			}else if(current.roomName == "Visitor_C1" || current.roomName == "Visitor_B1"){
				if(vars.asylumDoubleTitanFlag == 1){
					vars.asylumDoubleTitanFlag++;
					return true; // Double Titan
				}
				vars.asylumDoubleTitanFlag++;
			}
		}else if(old.roomName == "Medical_S1" && current.roomName == "Medical_B5"){
			return true; // Scarecrow 1
		}else if(string.IsNullOrWhiteSpace(old.roomName) && current.roomName == "Medical_B5"){
			return true; // Scarecrow 1, if you reload
		}else if(current.roomName == "Admin_C1" && old.openingDoor == current.openingDoor - 2 && current.batclaw == 0 && vars.asylumBatclawSkipFlag == 0 && current.batmanX > 0){
			vars.asylumBatclawSkipFlag = 1;
			return true; // Batclaw Skip, does not split in NMS
		}else if(old.roomName == "Admin_B1" && current.roomName == "Admin_C9"){
			return true; //Wayne Manor (NMS)
		}else if(old.roomName == "Admin_S2" && current.roomName == "Admin_A"){
			return true; //End Scarecrow 2 (NMS)
		}else if(old.roomName == "Admin_C1" && current.roomName == "Overworld_A3"){
			return true; // Bell Skip (Leaving the Mansion)
		}else if(old.roomName == "Cave_C1_Desc" && current.roomName == "Cave_B5" && vars.asylumIvyFlag == 0){
			return true; // Croc Start
		}else if(old.roomName == "Cave_B5" && current.roomName == "Cave_C1_Desc"){
			return true; // Killer Croc (Leaving the Croc area)
		}else if(old.roomName == "Cave_C6" && current.roomName == "Overworld_A1"){
			return true; // Leaving Elevator
		}else if(current.roomName == "Overworld_A2" && old.gel != current.gel && vars.asylumBatmobileFlag == 0){
			vars.asylumBatmobileFlag++;
			return true; // Batmobile
		}else if(current.lastRoom == "Garden_B5" && old.lineLauncher != current.lineLauncher){
			return true; // Line Launcher
		}else if(current.roomName == "Cave_B1_Desc" && old.batclaw != current.batclaw){
			if(vars.asylumUltraClawFlag == 0){
				vars.asylumUltraClawFlag = 1;
				return true; // Bat-Better-Claw
			}
		}else if(current.roomName == "Visitor_B2" && old.transitionId != current.transitionId){
			if(current.transitionId == 0){
				vars.asylumEndFlag = 0; // Reset the flag so the split still works if you reload mid-fight
			}else{
				if(vars.asylumEndFlag == 5){
					vars.asylumEndFlag++;
					return true; // End
				}
				vars.asylumEndFlag++;
			}
		}
		
		//Hundo Splits - Hundo backtracks all start after getting the ultra claw
		if(vars.asylumHarleyFlag == 1 && vars.asylumUltraClawFlag == 1){
			if(vars.asylumIvyFlag == 0 && old.roomName == "Medical_C5" && current.roomName == "Overworld_A1"){
				return true; //Medical Backtrack (only splits before Ivy)
			}else if(old.roomName == "Cave_C2" && current.roomName == "Max_B1"){
				return true; //Sewer Backtrack
			}else if(old.roomName == "Max_C8" && current.roomName == "Overworld_C0"){
				return true; //IT Backtrack
			}else if(old.roomName == "Garden_C1" && current.roomName == "Overworld_A3"){
				return true; //Garden Backtrack
			}else if(old.roomName == "Cell_C6" && current.roomName == "Overworld_A1"){
				return true; //Pen Backtrack
			}
		}
	//--------------------------------------------------//
	//-------------------- City ------------------------//
	//--------------------------------------------------//
	}else if(settings["city"] && game.ProcessName.ToLower() == "batmanac"){
		if(settings["city-startSplit"] && vars.cityState == 2 && current.chapter == 1 && !current.currentLevel.Contains("Court")){
			vars.cityState = 3;
			return true;
		}
		
		if(vars.timerPaused){
			return false; //Don't check any other split points if the run has not actually started
		}
		
		bool anyLegacySettingsEnabled = settings["city-splitOnCutscene"] || settings["city-splitOnLoads"] || settings["city-splitOnBatsuit"] || settings["city-splitOnClayface"];
		if(settings["city-legacyMode"] && anyLegacySettingsEnabled){
			if(settings["city-splitOnCutscene"] && old.cutscenePlaying == 0 && current.cutscenePlaying == 1){
				return true;
			}
			if(settings["city-splitOnLoads"] && old.isLoading == 0 && current.isLoading == 1){
				return true;
			}
			if(settings["city-splitOnBatsuit"] && old.character.Contains("Playable_BruceWayne") && current.character.Contains("Playable_Batman")){
				return true;
			}
			if(settings["city-splitOnClayface"] && current.currentLevel.Contains("Under_S2") && old.clayface == current.clayface - 32){
				return true;
			}
			
			//HQR
			if(old.character.Contains("Playable_Robin") && current.character.Contains("Playable_Batman") && current.chapter != 2){
				return true;
			}
			if(old.character.Contains("Playable_Batman") && current.character.Contains("Playable_Robin")){
				return true;
			}
			
			//100%
			if(old.isLoading == 0 && current.isLoading == 1){
				if(old.currentLevel.Contains("MadHatter_01")){
					return true; //Split on leaving Mad Hatter
				}else if(old.currentLevel.Contains("Church") && current.chapter > 2){
					return true; //Split on leaving Church revisit (Riddler)
				}
			}
			
			//Don't check anything else if legacy mode is on
			return false;
		}
		
		//This value should be reset before anything else happens
		//0 usually just means a quit to menu happened, so ignore that
		//There's only one cutscene in chapter 9 (and it probably means a quit to menu in NG+), so ignore that too
		if(old.chapter != current.chapter && current.chapter != 0 && current.chapter != 9){
			vars.cityCutscenesThisChapter = 0;
		}
		
		//---Cutscenes---
		if(old.cutscenePlaying == 0 && current.cutscenePlaying == 1){
			vars.cityCutscenesThisChapter++;
			if(current.chapter == 1 && current.subChapter == 2 && old.currentLevel.Contains("Court_")){
				//Ignore Courthouse 1 and 2
			}else if(current.chapter == 3 && current.subChapter == 1 && old.currentLevel.Contains("Steel_") && vars.cityCutscenesThisChapter > 1){
				//Ignore second cutscene in Steel Mill, but ONLY if we're in the Steel Mill (i.e. not w/Cat)
			}else if(current.chapter == 3 && current.subChapter == 3 && current.lastDoorRoom.Contains("Museum_B1")){
				//Ignore Gladiator Pit cutscene
			}else if(current.chapter == 9 && current.lastDoorRoom.Contains("Under_S2")){
				//Ignore Clayface cutscene
			}else{
				return true; //Split on all other cutscenes
			}
		}
		
		//---Loads---
		if(old.isLoading == 0 && current.isLoading == 1){
			if(((current.chapter == 2 && current.subChapter == 2) || current.chapter > 2) && old.persistentLevel.Contains("Church")){
				return true; //Enter Church Tower + Exit Church Revisit (100%)
			}else if(current.chapter == 3 && current.subChapter == 2 && old.lastDoorRoom.Contains("GCPD_")){
				return true; //Exit GCPD 1
			}else if(current.chapter == 3 && current.subChapter == 2 && old.lastDoorRoom.Contains("Museum_S1")){
				return true; //Grundy Skip/Jammer Skip (leaving Museum back)
			}
			
			if(old.lastDoorRoom.Contains("MadHatter_")){
				return true; //Split on leaving Mad Hatter (100%)
			}else if(current.chapter == 9 && old.lastDoorRoom.Contains("Under_C1")){
				return true; //Underground Backtrack (100%)
			}
			
			if(old.lastDoorRoom.Contains("PDLCSM")){
				return true; //Exit Steel Mill (HQR)
			}
		}
		
		//---Chapter Changes---
		if(current.chapter != old.chapter || current.subChapter != old.subChapter){
			if(current.chapter == 3 && old.subChapter == 2 && current.subChapter == 3){
				return true; //Start Jammers
			}else if(current.chapter == 4 && old.subChapter == 1 && current.subChapter == 2 && !old.lastDoorRoom.Contains("OW_")){
				return true; //Enter Fiona Predator (only if Robin skip happened)
			}else if(old.chapter != 0 && old.chapter < 6 && current.chapter == 7){
				return true; //NG+ skip
			}
		}
		
		//---Area Changes---
		if(current.lastDoorRoom != old.lastDoorRoom){
			if(current.chapter == 3 && current.subChapter == 3 && old.lastDoorRoom.Contains("OW_") && current.lastDoorRoom.Contains("Museum_")){
				return true; //Enter Museum 2 after jammers
			}else if(current.chapter == 4 && current.subChapter == 2 && old.lastDoorRoom.Contains("OW_") && current.lastDoorRoom.Contains("Under_C1")){
				return true; //Enter Underground after ninja chase
			}else if(current.chapter == 6 && current.subChapter == 1 && old.lastDoorRoom.Contains("OW_") && current.lastDoorRoom.Contains("Steel_C4")){
				return true; //Enter Steel Mill 2 (only if not doing Steel Mill 2 skip)
			}else if(current.chapter == 7 && old.lastDoorRoom.Contains("OW_") && current.lastDoorRoom.Contains("Under_B5")){
				return true; //Enter Underground after Hugo monologue
			}else if(current.chapter == 2 && current.subChapter == 2 && old.lastDoorRoom.Contains("PDLCOW_") && !current.lastDoorRoom.Contains("OW_")){
				return true; //Enter Hideout (HQR)
			}else if(current.chapter == 3 && old.lastDoorRoom.Contains("PDLCIN_A1") && current.lastDoorRoom.Contains("PDLCIN_C2")){
				return true; //Harley Predator (HQR)
			}
		}
		
		//---Character Changes---
		if(current.character != old.character){
			if(old.character.Contains("Playable_BruceWayne") && current.character.Contains("Playable_Batman")){
				return true; //Batsuit
			}else if(current.chapter == 7 && old.character.Contains("Playable_Catwoman") && current.character.Contains("Playable_Batman")){
				return true; //After Cat 3
			}else if(current.chapter == 9 && current.lastDoorRoom.Contains("Museum_") && old.character.Contains("Playable_Catwoman") && current.character.Contains("Playable_Batman")){
				return true; //After Cat 4
			}else if(current.chapter == 9 && !current.lastDoorRoom.Contains("Under_S2") && old.character.Contains("Playable_Batman") && current.character.Contains("Playable_Catwoman")){
				return true; //Before Catwoman Cleanup (100%)
			}else if(old.character.Contains("Playable_Batman") && current.character.Contains("Playable_Robin")){
				return true; //HQR
			}else if(old.character.Contains("Playable_Robin") && current.character.Contains("Playable_Batman")){
				return true; //HQR
			}
		}
		
		//---Other---
		if(!string.IsNullOrWhiteSpace(current.lastDoorRoom) && current.lastDoorRoom.Contains("Under_S2") && old.clayface == current.clayface - 32){
			return true; //Clayface interaction
		}
	//--------------------------------------------------//
	//------------------ Origins -----------------------//
	//--------------------------------------------------//
	}else if(settings["origins"] && game.ProcessName.ToLower() == "batmanorigins"){
		if(settings["origins-startSplit"] && vars.originsState == 2){
			vars.originsStarted = true;
			vars.originsState = 3;
			return true;
		}
		
		if(vars.timerPaused){
			return false; //Don't check any other split points if the run has not actually started
		}
		
		// Once cutscene ends save current time and wait for cooldown
		if(settings["origins-sc"] && old.Cutscene == 1 && current.Cutscene == 0){
			vars.originsLastCutscene = Environment.TickCount;
			return false;
		}
		
		// Cutscenes
		if(settings["origins-sc"] && old.Cutscene == 0 && current.Cutscene == 1){
			// Wait for cooldown before splitting on the next cutscene
			// Used as fast travelling has multiple cutscenes back-to-back
			if(Environment.TickCount - vars.originsLastCutscene < vars.originsCooldown){
				return false;
			}
			
			if("BatCaveHQ".Equals(current.PersistentLevel) && current.Chapter == 2 && current.SubChapter == 0){
				return false; // Stop split on use batcomputer and fast travel out of batcave for the first time
			} else if("PoliceStation".Equals(current.PersistentLevel) && current.Chapter == 4){
				return false; // Stop split on sewers cutscene
			} else if(("NewGotham_T1".Equals(current.LastDoorRoom) || "NewGotham_A1".Equals(current.LastDoorRoom) || "OldGotham_E4".Equals(current.CurrentLevel)
						|| current.CurrentLevel.Contains("Bridge_")) && current.Chapter == 7 && current.SubChapter == 1){
				return false; // Prevent split on distract firefly cutscene
			} else if("GothamBridge".Equals(current.PersistentLevel) && current.Chapter == 8){
				return false; // Prevent extra cutscene after firefly
			} else if("RegentHotel_A2".Equals(current.CurrentLevel) && current.Chapter == 6 && current.SubChapter == 1){
				return false; // Splashdown
			} else if("RegentHotel_B3".Equals(current.LastDoorRoom) && current.Chapter == 6 && current.SubChapter == 2){
				return false; // Bane start cutscene
			} else if("Prison_S3".Equals(current.CurrentLevel) && current.Chapter == 8 && current.SubChapter == 2){
				if(!vars.originsSplitOnce["TN1"]){
					vars.originsSplitOnce["TN1"] = true;
					return true;
				}
				return false; // Stop split on reloading TN-1 Bane
			} else if("Prison".Equals(current.PersistentLevel) && current.Chapter == 9){
				return false; // Endgame cutscene and post-credit cutscene
			} else if("GothCorp_C3".Equals(current.CurrentLevel) && current.Chapter == 5){
				return false; // CCH freeze lab
			}
			return true;
		}
		
		// Loads
		if(old.isLoading == 0 && current.isLoading == 1){
			if(current.Chapter == 3 && current.SubChapter == 2 && "PoliceStation_A1".Equals(current.LastDoorRoom)){
				return true; // Exit GCPD
			}else if(current.Chapter == 7 && current.SubChapter == 1 && "Bridge_A3".Equals(current.CurrentLevel) && vars.originsBridgeLoadCount < 2){
				vars.originsBridgeLoadCount++;
			}else if(current.Chapter == 7 && current.SubChapter == 2 && "GothamBridge_C1".Equals(current.CurrentLevel) && vars.originsBridgeLoadCount < 2){
				vars.originsBridgeLoadCount++;
			}
		}
		
		// Area Changes
		if((old.PersistentLevel != current.PersistentLevel && !(string.IsNullOrWhiteSpace(old.PersistentLevel) || string.IsNullOrWhiteSpace(current.PersistentLevel)))
				|| (old.CurrentLevel != current.CurrentLevel  && !(string.IsNullOrWhiteSpace(old.CurrentLevel) || string.IsNullOrWhiteSpace(current.CurrentLevel)))
				|| old.LastDoorRoom != current.LastDoorRoom){
			if("BatCaveHQ".Equals(old.PersistentLevel) && "tower".Equals(current.PersistentLevel) && current.Chapter == 2){
				return true; // Enter Coventry GCR Tower
			} else if("Tower_C1".Equals(old.CurrentLevel) && "NewGotham_A3".Equals(current.CurrentLevel) && current.Chapter == 2){
				return true; // Exit GCR Tower
			} else if(!vars.originsSplitOnce["Lacey"] && "NewGotham_A9".Equals(old.LastDoorRoom) && "Appartment_S0".Equals(current.LastDoorRoom)){
				vars.originsSplitOnce["Lacey"] = true;
				return true; // Enter Lacey Towers
			} else if(!vars.originsSplitOnce["Bank"] && "Bank_A1".Equals(old.LastDoorRoom) && "OldGotham_F1".Equals(current.LastDoorRoom) && current.Chapter == 4){
				vars.originsSplitOnce["Bank"] = true;
				return true; // Exit Bank
			} else if(!vars.originsSplitOnce["SteelMill"] && !"SteelMill_A1".Equals(old.LastDoorRoom) && "SteelMill_A1".Equals(current.LastDoorRoom)){
				vars.originsSplitOnce["SteelMill"] = true;
				return true; // Enter Steel Mill
			} else if(!vars.originsSplitOnce["Sewersii"] && !"PoliceStation_C7".Equals(old.LastDoorRoom) && "PoliceStation_C7".Equals(current.LastDoorRoom) && current.Chapter == 7){
				vars.originsSplitOnce["Sewersii"] = true;
				return true; // Enter Sewers II
			} else if(!vars.originsSplitOnce["Funhouse"] && "RegentHotel_A1".Equals(old.CurrentLevel) && "RegentHotel_B4".Equals(current.CurrentLevel)){
				vars.originsSplitOnce["Funhouse"] = true;
				return true; // Joker's Funhouse
			} else if("PoliceStation_C3".Equals(old.CurrentLevel) && "PoliceStation_B2".Equals(current.CurrentLevel) && current.Chapter == 7){
				return true; // Autopsy Report in Sewers
			} else if(vars.bridgeLoadCount == 2 && (("OpenWorld".Equals(old.PersistentLevel) && "GothamBridge".Equals(current.PersistentLevel)) 
						|| (string.IsNullOrWhiteSpace(old.LastDoorRoom) && "GothamBridge_C1".Equals(current.LastDoorRoom)))){
				vars.bridgeLoadCount++;
				return true; // Bridge Skip
			} else if(!vars.originsSplitOnce["BombRoom"] && "GothamBridge_C1".Equals(old.CurrentLevel) && "GothamBridge_B1".Equals(current.CurrentLevel) 
						&& current.Chapter == 7 && current.SubChapter == 2){
				vars.originsSplitOnce["BombRoom"] = true;
				return true; // Bomb room pred
			} else if(!vars.originsSplitOnce["Panopticon"] && "Prison_C5".Equals(old.LastDoorRoom) && "Prison_B3".Equals(current.LastDoorRoom) && current.Chapter == 8){
				vars.originsSplitOnce["Panopticon"] = true;
				return true; // Prison door to fight after saving Harely
			}
			// CCH
			if(old.CurrentLevel.Contains("NewGothamDLCF") && "GothCorp_B1".Equals(current.CurrentLevel)){
				return true; // Enter GothCorp I/II
			} else if("DLCFAlibi_B1".Equals(old.CurrentLevel) && "NewGothamDLCF_A1".Equals(current.CurrentLevel)){
				return true; // Leave My Alibi
			}
			// 100%
			if("Enigma".Equals(old.PersistentLevel) && "OpenWorld".Equals(current.PersistentLevel)){
				return true; // Exit Enigma hideout
			} else if("MadHatter_A3".Equals(old.CurrentLevel) && "MadHatter_A1".Equals(current.CurrentLevel)){
				return true; // Defeat Mad Hatter
			} else if("Shiva".Equals(old.PersistentLevel) && "OpenWorld".Equals(current.PersistentLevel)){
				return true; // Shiva first/final test
			} else if(!vars.originsSplitOnce["ExitSteelMill"] && current.Chapter > 6 && "SteelMill".Equals(old.PersistentLevel) && "OpenWorld".Equals(current.PersistentLevel)){
				vars.originsSplitOnce["ExitSteelMill"] = true;
				return true; // Exit Steel Mill (backtrack)
			} else if(!vars.originsSplitOnce["Church"] && "OpenWorld".Equals(old.PersistentLevel) && "Church".Equals(current.PersistentLevel)){
				vars.originsSplitOnce["Church"] = true;
				return true; // Blackmask
			} else if(!vars.originsSplitOnce["Deadshot"] && current.Chapter == 7 && current.SubChapter == 1 
						&& vars.originsEnterExit("OpenWorld", "Bank", old.PersistentLevel, current.PersistentLevel)){
				if("Bank".Equals(old.PersistentLevel) && "OpenWorld".Equals(current.PersistentLevel)){
					vars.originsSplitOnce["Deadshot"] = true; // Deadshot
				}
				return true;
			} else if(!vars.originsSplitOnce["Bird"] && "SleazyClub".Equals(old.PersistentLevel) && "OpenWorld".Equals(current.PersistentLevel)){
				vars.originsSplitOnce["Bird"] = true;
				return true; // Bird
			} else if("OpenWorld".Equals(old.PersistentLevel) && "Enigma".Equals(current.PersistentLevel) && current.Chapter == 9){
				return true; // Finish Enigma
			}
		}
		
		// Chapter Changes
		if((old.Chapter < current.Chapter || old.SubChapter < current.SubChapter || old.SideChapter < current.SideChapter) && !string.IsNullOrWhiteSpace(current.Character)){
			if(current.Character.Contains("Playable_Bat")){
				if(current.Chapter == 2 && old.SubChapter == 0 && current.SubChapter == 1){
					return true; // Enter Final Offer
				} else if(current.Chapter == 2 && old.SubChapter == 1 && current.SubChapter == 2){
					return true; // Elevator after casino in Final Offer
				} else if (!vars.originsSplitOnce["GCPD"] && current.Chapter == 3 && old.SubChapter == 0 && current.SubChapter == 1){
					vars.originsSplitOnce["GCPD"] = true;
					return true; // Enter GCPD for the first time
				} else if (current.Chapter == 3 && old.SubChapter == 1 && current.SubChapter == 2){
					return true; // Pickup disruptor
				} else if(old.Chapter == 3 && current.Chapter == 4){
					return true; // Sewer computer
				} else if(old.Chapter == 4 && current.Chapter == 6){
					return true; // Defeat Copperhead
				} else if(current.Chapter == 6 && old.SubChapter == 1 && current.SubChapter == 2){
					return true; // Splashdown
				} else if(current.Chapter == 7 && current.SubChapter == 0 && old.SideChapter == 4 && current.SideChapter == 5){
					return true; // Anarky (100%)
				} else if(!vars.originsSplitOnce["BaneHQ"] && current.Chapter == 7 && current.SubChapter == 1 && (old.Chapter < 7 || old.SubChapter == 0)){
					vars.originsSplitOnce["BaneHQ"] = true;
					return true; // Bane HQ
				} else if(current.Chapter == 7 && old.SubChapter == 1 && current.SubChapter == 2){
					return true; // Talk to Gordon inside Bridge
				} else if(current.Chapter == 7 && old.SubChapter == 2 && current.SubChapter == 3){
					return true; // Bomb 3
				} else if(current.Chapter == 8 && old.SubChapter == 0 && current.SubChapter == 1 && "BatcaveHQ_A1".Equals(old.LastDoorRoom)){
					return true; // Return to Blackgate
				}
			} else if(current.Character.Contains("Playable_BmCash")){
				if(current.Chapter == 3 && old.SubChapter == 1 && current.SubChapter == 2){
					return true; // CCH Scan before GothCorp I
				} else if(old.Chapter == 4 && current.Chapter == 5){
					return true; // Collect drill parts
				} else if(current.Chapter == 5 && old.SubChapter == 1 && current.SubChapter == 2){
					return true; // Freeze phase 1
				}
			}
		}
		
		// Character Changes
		if(old.Character != current.Character && !(string.IsNullOrWhiteSpace(old.Character) || string.IsNullOrWhiteSpace(current.Character))){
			if(settings["origins-skin"] && old.Character.Contains("Playable_BatMan") && current.Character.Contains("Playable_Batman")){
				return true; // Split on picking skin
			} else if(old.Character.Contains("Playable_DLCBruceWayne") && current.Character.Contains("Playable_BmCashReg")){
				return true; // CCH Suit up
			} else if(old.Character.Contains("Playable_BmCashReg") && current.Character.Contains("Playable_BmCash_")){
				return true; // XE Suit
			}
		}
		
		// Joker Beatdown
		if("Prison".Equals(current.PersistentLevel) && old.JokerBeatdown < 54 && current.JokerBeatdown == 54){
			return true;
		}
	//--------------------------------------------------//
	//------------------- Knight -----------------------//
	//--------------------------------------------------//
	}else if(settings["knight"] && game.ProcessName.ToLower() == "batmanak"){
		if(vars.timerPaused){
			return false; //Don't check or update split info if the run has not actually started
		}
		
		if(current.storyPercentage > vars.knightHighestPercent){
			vars.knightHighestPercent = current.storyPercentage;
			if(settings["knight-highDetail"] || vars.knightSplitPoints.Contains(current.storyPercentage)){
				print("[MASL] Split on Main");
				return true;
			}
		}else if(settings["knight-sideMissions"]){
			bool splitOnRiddler = settings["knight-splitOnRiddler"];
			if(vars.knightShouldSplitOnSideMission(0, current.sideMission1Name, current.sideMission1, splitOnRiddler)){
				return true;
			}else if(vars.knightShouldSplitOnSideMission(1, current.sideMission2Name, current.sideMission2, splitOnRiddler)){
				return true;
			}else if(vars.knightShouldSplitOnSideMission(2, current.sideMission3Name, current.sideMission3, splitOnRiddler)){
				return true;
			}else if(vars.knightShouldSplitOnSideMission(3, current.sideMission4Name, current.sideMission4, splitOnRiddler)){
				return true;
			}else if(vars.knightShouldSplitOnSideMission(4, current.sideMission5Name, current.sideMission5, splitOnRiddler)){
				return true;
			}else if(vars.knightShouldSplitOnSideMission(5, current.sideMission6Name, current.sideMission6, splitOnRiddler)){
				return true;
			}else if(vars.knightShouldSplitOnSideMission(6, current.sideMission7Name, current.sideMission7, splitOnRiddler)){
				return true;
			}else if(vars.knightShouldSplitOnSideMission(7, current.sideMission8Name, current.sideMission8, splitOnRiddler)){
				return true;
			}else if(vars.knightShouldSplitOnSideMission(8, current.sideMission9Name, current.sideMission9, splitOnRiddler)){
				return true;
			}else if(vars.knightShouldSplitOnSideMission(9, current.sideMission10Name, current.sideMission10, splitOnRiddler)){
				return true;
			}else if(vars.knightShouldSplitOnSideMission(10, current.sideMission11Name, current.sideMission11, splitOnRiddler)){
				return true;
			}else if(vars.knightShouldSplitOnSideMission(11, current.sideMission12Name, current.sideMission12, splitOnRiddler)){
				return true;
			}else if(vars.knightShouldSplitOnSideMission(12, current.sideMission13Name, current.sideMission13, splitOnRiddler)){
				return true;
			}else if(vars.knightShouldSplitOnSideMission(13, current.sideMission14Name, current.sideMission14, splitOnRiddler)){
				return true;
			}else if(vars.knightShouldSplitOnSideMission(14, current.sideMission15Name, current.sideMission15, splitOnRiddler)){
				return true;
			}else if(vars.knightShouldSplitOnSideMission(15, current.sideMission16Name, current.sideMission16, splitOnRiddler)){
				return true;
			}else if(vars.knightShouldSplitOnSideMission(16, current.sideMission17Name, current.sideMission17, splitOnRiddler)){
				return true;
			}else if(vars.knightShouldSplitOnSideMission(17, current.sideMission18Name, current.sideMission18, splitOnRiddler)){
				return true;
			}
		}
		if(settings["knight-splitOnJoker"]){
			if(current.currentLevel == "JokerBoss_B2" && old.jokerPunches > current.jokerPunches){
				return true;
			}
		}
	}
}

isLoading{
	if(settings["pauseEven"]){
		vars.timerPaused = timer.CurrentSplitIndex % 2 != 0;
	}else if(settings["pauseOdd"]){
		vars.timerPaused = timer.CurrentSplitIndex % 2 == 0;
	}else if(settings["pauseOnFillerSplits"]){
		vars.timerPaused = vars.fillerSplitNames.Contains(timer.CurrentSplit.Name.ToLower());
	}else{
		vars.timerPaused = false;
	}
	
	return vars.timerPaused;
}