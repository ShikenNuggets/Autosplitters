/***************************************************
 * Batman: Arkham Knight Auto Splitter v1.3		   *
 * By JohnStephenEvil, ShikenNuggets, and GreenBat *
 **************************************************/
//updated by TpRedNinja
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

state("BatmanAK", "Steam-Current")
{
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
	// extra pointers
	bool Knightfall 			: 0x03502E44, 0x34, 0x44, 0x1A8, 0x470, 0xA0, 0x40, 0xDC8; // 1 when pressing a/space on batsiginal for knightfall, 0 for everything else unless you pause the game when its 1
	//bool NGPlusStarted			: 0x0311F508, 0x8, 0x34, 0x9C, 0x5AC, 0x4D8, 0x36C, 0x134; // 1 when you start NG+ and stays like that, 0 for before you start NG+
	int Cutscene				: 0x03728F5C, 0x108; // a whole bunch of different numbers for cutscene's; 
	int InNGPlus				: 0x0311F508, 0x84C, 0x0, 0x5C, 0x0D88; // 270598400 when in ng+, 2162944 when in ng and main menu
	int OverallPercentage		: 0x0311F508, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x4D8, 0x36C, 0x13C; // save file percentage (0-240)
/*

754,758,1010,1014 - nothing is consistent with these/i cant be bothered to right down every time they are that value; 
But they are consistent in being the only numbers for ExtraCutscene
*/

}

state("BatmanAK", "Epic")
{
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
	// extra pointers
	bool Knightfall 			: 0x035124EC, 0x34, 0xD44, 0xB68, 0x470, 0xA0, 0x40, 0xDC8;
	//bool NGPlusStarted			: 0x0318D5B8, 0x8, 0x34, 0x9C, 0x5AC, 0x4D8, 0x36C, 0x134;
	int Cutscene				: 0x03797024, 0x108;
	int InNGPlus				: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x0D88;
	int OverallPercentage		: 0x0318D5B8, 0x84C, 0x0, 0x5C, 0x9C, 0x5AC, 0x4D8, 0x36C, 0x13C;
}

startup
{
	settings.Add("highDetail", false, "High Detail Mode [Not Recommended]");
	settings.SetToolTip("highDetail", "Use every possible split point. Not recommended");
	settings.Add("sideMissions", false, "Side Missions");
	settings.Add("splitOnJoker", false, "Split at the end of the Main Story");
	//settings.Add("Knightfall first ending", false, "Knightfall First Ending");
	//settings.SetToolTip("Knightfall first ending", "Use this if you are speed-running Knightfall First Ending");
	//settings.Add("Knightfall full ending", false, "Knightfall Full Ending");
	//settings.SetToolTip("Knightfall full ending", "Use this if you are speed-running Knightfall Full Ending");
	//settings.Add("240%", false, "240%");
	//settings.SetToolTip("240%", "Use this if you are speed-running for 240% and want to split for side missions.\nNote if you only want the final split you do not need to enabled this as its built in without needing to turn on a setting.\nIf you have this enabled, disable sidemissions setting as this will split for sidemissions for both ng and ng+.\nFailure to disable sidemissions setting may cause unexpected behavior of the autosplitter.");
	vars.splitPoints = new List<int>{
		5, 10, 16, 20, 24, 26, 28, 31, 37, 39, 40, 42, 45, 46, 50, 55, 58, 60, 63,
		64, 66, 67, 68, 69, 70, 73, 75, 77, 78, 79, 80, 82, 85, 87, 89, 90, 95, 96
	};
	vars.highestPercent = 0;
	vars.TotalSideMissionsDone = 0;
	vars.individualHighest = new List<byte>(new byte[18]);
	vars.individualHighestNGPlus = new List<byte>(new byte[18]); /* need this for 240% since the pointers values reset and since the 
	* split conditions are base off a list of if the pointer value is higher than the value saved in the list. So due to that for ng+
	* since the pointers values reset the list would either need to be reset or we can have a separate list for ng+ and only use that one 
	* for 240% and the normal one for everything else. I went with the second option since 240% we go back to ng to complete riddler so we 
	* still need the normal list.
	*/
	vars.CompletedSideMissions = new List<bool>(new bool[18]);
	
	vars.sideMissionNames = new List<string>{
		"Firecrews", "Pyg", "Drones", "ManBat", "Azrael",
		"Firefly", "Penguin", "Bank", "Hush","Blackfire",
		"DLC_Freeze", "DLC_MadHatter", "DLC_Ras", "DLC_Croc"
	};
}

init
{
	print("Module Size: " + modules.First().ModuleMemorySize.ToString());
	switch(modules.First().ModuleMemorySize){
		case 0x8CD2000:
			version = "Steam-Old";
			break;
		case 0x4398000:
			version = "Steam-Current";
			break;
		case 0x440B000:
			version = "Epic";
			break;
	}
}

update{
	current.timerPhase = timer.CurrentPhase;
	if(current.timerPhase.ToString() == "Running" && old.timerPhase.ToString() == "NotRunning"){
		// When the timer starts, reset these things
		vars.highestPercent = current.storyPercentage;
		
		vars.individualHighest = new List<byte>();
		if(vars.sideMissionNames.Contains(current.sideMission1Name)){
			vars.individualHighest.Add(current.sideMission1);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission2Name)){
			vars.individualHighest.Add(current.sideMission2);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission3Name)){
			vars.individualHighest.Add(current.sideMission3);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission4Name)){
			vars.individualHighest.Add(current.sideMission4);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission5Name)){
			vars.individualHighest.Add(current.sideMission5);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission6Name)){
			vars.individualHighest.Add(current.sideMission6);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission7Name)){
			vars.individualHighest.Add(current.sideMission7);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission8Name)){
			vars.individualHighest.Add(current.sideMission8);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission9Name)){
			vars.individualHighest.Add(current.sideMission9);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission10Name)){
			vars.individualHighest.Add(current.sideMission10);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission11Name)){
			vars.individualHighest.Add(current.sideMission11);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission12Name)){
			vars.individualHighest.Add(current.sideMission12);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission13Name)){
			vars.individualHighest.Add(current.sideMission13);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission14Name)){
			vars.individualHighest.Add(current.sideMission14);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission15Name)){
			vars.individualHighest.Add(current.sideMission15);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission16Name)){
			vars.individualHighest.Add(current.sideMission16);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission17Name)){
			vars.individualHighest.Add(current.sideMission17);
		}else{
			vars.individualHighest.Add(0);
		}
		if(vars.sideMissionNames.Contains(current.sideMission18Name)){
			vars.individualHighest.Add(current.sideMission18);
		}else{
			vars.individualHighest.Add(0);
		}
	}
}

split
{
	if(current.storyPercentage > vars.highestPercent){
		vars.highestPercent = current.storyPercentage;
		if(settings["highDetail"] || vars.splitPoints.Contains(current.storyPercentage)){
			return true;
		}
	} else if(settings["sideMissions"]){
		if(vars.sideMissionNames.Contains(current.sideMission1Name) && vars.individualHighest[0] < current.sideMission1) {
			vars.individualHighest[0] = current.sideMission1;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission2Name) && vars.individualHighest[1] < current.sideMission2) {
			vars.individualHighest[1] = current.sideMission2;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission3Name) && vars.individualHighest[2] < current.sideMission3) {
			vars.individualHighest[2] = current.sideMission3;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission4Name) && vars.individualHighest[3] < current.sideMission4) {
			vars.individualHighest[3] = current.sideMission4;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission5Name) && vars.individualHighest[4] < current.sideMission5) {
			vars.individualHighest[4] = current.sideMission5;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission6Name) && vars.individualHighest[5] < current.sideMission6) {
			vars.individualHighest[5] = current.sideMission6;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission7Name) && vars.individualHighest[6] < current.sideMission7) {
			vars.individualHighest[6] = current.sideMission7;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission8Name) && vars.individualHighest[7] < current.sideMission8) {
			vars.individualHighest[7] = current.sideMission8;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission9Name) && vars.individualHighest[8] < current.sideMission9) {
			vars.individualHighest[8] = current.sideMission9;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission10Name) && vars.individualHighest[9] < current.sideMission10) {
			vars.individualHighest[9] = current.sideMission10;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission11Name) && vars.individualHighest[10] < current.sideMission11) {
			vars.individualHighest[10] = current.sideMission11;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission12Name) && vars.individualHighest[11] < current.sideMission12) {
			vars.individualHighest[11] = current.sideMission12;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission13Name) && vars.individualHighest[12] < current.sideMission13) {
			vars.individualHighest[12] = current.sideMission13;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission14Name) && vars.individualHighest[13] < current.sideMission14) {
			vars.individualHighest[13] = current.sideMission14;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission15Name) && vars.individualHighest[14] < current.sideMission15) {
			vars.individualHighest[14] = current.sideMission15;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission16Name) && vars.individualHighest[15] < current.sideMission16) {
			vars.individualHighest[15] = current.sideMission16;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission17Name) && vars.individualHighest[16] < current.sideMission17) {
			vars.individualHighest[16] = current.sideMission17;
			return true;
		}else if(vars.sideMissionNames.Contains(current.sideMission18Name) && vars.individualHighest[17] < current.sideMission18) {
			vars.individualHighest[17] = current.sideMission18;
			return true;
		}
	}
	
	if(settings["splitOnJoker"]) {
		if(current.currentLevel == "JokerBoss_B2" && old.jokerPunches > current.jokerPunches){
			return true;
		}
	}
	// 240% split
	if (current.OverallPercentage == 240 && old.OverallPercentage != 240) { // it can be this simple since it should only increase after the game saves which would be after the alfred dialogue ends
		print("240% Split");
		return true;
	}
}

onReset
{
	if (vars.TotalSideMissionsDone > 0) {
		vars.TotalSideMissionsDone = 0; // for when the player resets the timer and they have done some side missions but didn't complete the run or they did complete a run
	}
}
