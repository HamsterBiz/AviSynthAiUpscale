sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.1901808083057404,0.2538172602653503,-0.1707593500614166,0.1982912421226501);
res += mul(Get(s0,-dx,-dy), float4x4(-0.0267232134938240,-0.0137179726734757,-0.0296825561672449,0.0946266725659370,0.1605090796947479,-0.2513710260391235,-0.2771306633949280,-0.0457194857299328,0.1165233403444290,-0.0825763419270515,0.0752064362168312,0.0067857806570828,-0.0096994210034609,0.0929941460490227,0.1521871984004974,0.1077281609177589));
res += mul(Get(s1,-dx,-dy), float4x4(-0.0176710356026888,0.0473640114068985,-0.0559037849307060,-0.0211084447801113,-0.0423931367695332,-0.1279734522104263,0.0524961389601231,0.1650237888097763,-0.1887717545032501,-0.0767094492912292,-0.0508887059986591,0.0857742279767990,0.0957657843828201,-0.1497896760702133,0.0111536569893360,0.0602747388184071));
res += mul(Get(s2,-dx,-dy), float4x4(-0.1132285222411156,-0.0351201072335243,-0.1011641547083855,0.0295107550919056,0.0844881981611252,0.0468663945794106,0.2005511224269867,0.0390638448297977,-0.0747010037302971,0.1147426813840866,-0.1120821982622147,-0.0304905548691750,0.3623523414134979,-0.1731403768062592,-0.5096896886825562,-0.4557481408119202));
res += mul(Get(s0,-dx,0), float4x4(-0.0357814542949200,0.1805109679698944,-0.1256967186927795,0.0042048231698573,-0.0100693227723241,-0.0516287162899971,-0.1523537486791611,-0.0382946170866489,-0.1013068854808807,-0.0922830104827881,0.2297562509775162,0.0046474589034915,0.1831664592027664,-0.4088856577873230,0.0652560517191887,-0.0331242866814137));
res += mul(Get(s1,-dx,0), float4x4(0.0319770202040672,0.0882393568754196,-0.1433493942022324,-0.0090842787176371,0.2067359387874603,0.0927390232682228,-0.3044712841510773,0.0168963074684143,-0.1261910647153854,-0.1198464632034302,-0.2862697839736938,-0.0467272847890854,0.2235178798437119,0.0971802696585655,0.3587961494922638,-0.2884421050548553));
res += mul(Get(s2,-dx,0), float4x4(-0.1130394712090492,-0.0019420792814344,0.0045459452085197,0.1275879889726639,-0.1748148351907730,-0.0222266763448715,-0.2166424989700317,0.0243019554764032,0.0132002569735050,0.2572639882564545,-0.2448629587888718,-0.0156849678605795,0.2809013724327087,0.0638330578804016,-0.0051888772286475,-0.3471253514289856));
res += mul(Get(s0,-dx,dy), float4x4(-0.0582469925284386,-0.0942189469933510,-0.1704031974077225,0.0398776121437550,0.2834262549877167,-0.3181029558181763,0.1478525698184967,-0.0438518859446049,-0.1208245232701302,0.0583343505859375,-0.0792044103145599,0.0225617848336697,0.0738205388188362,-0.0248685535043478,-0.2019345313310623,0.1384687125682831));
res += mul(Get(s1,-dx,dy), float4x4(0.0319968536496162,0.1108062267303467,0.0658420771360397,-0.0103830965235829,0.1278603821992874,0.1775886863470078,0.0941871851682663,-0.2595102190971375,0.1159758642315865,-0.0370447784662247,0.1565710008144379,0.0519456639885902,0.2389051020145416,-0.0983374193310738,-0.0721059367060661,0.0430394671857357));
res += mul(Get(s2,-dx,dy), float4x4(0.0891457498073578,0.0239207465201616,0.2172208875417709,0.0159591268748045,0.0065493807196617,0.0495574101805687,0.0495835579931736,-0.0695989504456520,0.0170570742338896,0.1153948083519936,0.1709699928760529,-0.0674319043755531,0.0082691721618176,-0.1010012105107307,0.0312819331884384,0.1822851598262787));
res += mul(Get(s0,0,-dy), float4x4(0.0913694575428963,-0.3116891086101532,-0.3974952399730682,-0.1145513579249382,0.1550149619579315,0.1619017720222473,-0.1549706608057022,-0.2893990278244019,-0.1435599625110626,0.1107567101716995,0.0661563426256180,0.0235179271548986,-0.1549331098794937,-0.1134391650557518,0.4172019064426422,0.1735108196735382));
res += mul(Get(s1,0,-dy), float4x4(-0.0148186031728983,-0.0992026925086975,0.0232122279703617,-0.0038972031325102,0.2543037831783295,-0.0072044013068080,-0.1022519171237946,-0.1318857818841934,0.1416229307651520,0.0605887845158577,-0.3955604135990143,-0.1427344530820847,-0.0044014723971486,-0.0857474058866501,-0.0201079268008471,-0.0362706445157528));
res += mul(Get(s2,0,-dy), float4x4(0.1086768582463264,0.3925929069519043,-0.1201055347919464,-0.0379178002476692,0.0631139874458313,-0.1016649305820465,0.2809245288372040,0.0209866147488356,0.1936106234788895,0.1050448492169380,-0.2417013645172119,-0.0203219205141068,-0.1748783439397812,-0.0214767772704363,-0.0738095492124557,0.1338363587856293));
res += mul(Get(s0,0,0), float4x4(0.1305022388696671,0.1401476860046387,0.1009573116898537,0.1644379794597626,-0.2594186663627625,0.1622917801141739,-1.0063391923904419,0.0011372761800885,-0.0781642720103264,-0.0886231660842896,-0.3904573917388916,-0.2252283543348312,-0.4493033289909363,0.9765748381614685,-0.0394865907728672,0.3733543157577515));
res += mul(Get(s1,0,0), float4x4(-0.1197460144758224,0.0661035478115082,-0.6042042374610901,-0.0367638245224953,-0.0848093181848526,-0.2248380780220032,-0.1258230656385422,-0.1764242202043533,0.2422935664653778,0.9027500152587891,-0.4844815135002136,-0.1891221553087234,0.5564903020858765,0.1298788785934448,0.3063861727714539,-0.3505173921585083));
res += mul(Get(s2,0,0), float4x4(0.0441964529454708,0.3413438498973846,-0.0017112385248765,-0.5475444197654724,0.4131991863250732,0.2646558284759521,-0.5491800904273987,-0.9230057001113892,-0.2545785307884216,-0.1584841907024384,-0.8857640027999878,0.1378018260002136,0.4584938287734985,-0.0098567521199584,0.3517251908779144,-0.1980163455009460));
res += mul(Get(s0,0,dy), float4x4(-0.0229500830173492,-0.0452802628278732,-0.1576202064752579,0.2900968790054321,-0.6771956682205200,-0.2933282852172852,0.2375970333814621,0.4647766053676605,-0.1197856068611145,-0.1515620648860931,0.1512084454298019,0.0603112243115902,-0.2070745974779129,0.0161085259169340,-0.1626666933298111,-0.0945447161793709));
res += mul(Get(s1,0,dy), float4x4(-0.1714511215686798,-0.1861646175384521,0.0772727802395821,0.2428189218044281,-0.0674320012331009,0.0303578637540340,0.0016653605271131,-0.0597259588539600,-0.2423252761363983,-0.2694526612758636,0.4961672723293304,-0.1159318685531616,0.2112737447023392,0.0041591082699597,-0.1048489585518837,-0.1802367120981216));
res += mul(Get(s2,0,dy), float4x4(-0.1571368426084518,-0.3246009647846222,0.3004272580146790,0.0494122989475727,-0.0179130546748638,0.0471401065587997,-0.0849160552024841,-0.0088989976793528,-0.1602423191070557,-0.0917518660426140,0.4800381958484650,0.4434293508529663,0.5050756335258484,0.0079758819192648,-0.3176671266555786,0.1043432503938675));
res += mul(Get(s0,dx,-dy), float4x4(-0.1072433218359947,0.0902315601706505,-0.1719626784324646,-0.0782930552959442,0.1000140905380249,-0.0084447450935841,-0.2287003993988037,0.0051116151735187,0.0193590056151152,0.1068217456340790,-0.0193616058677435,0.1043928116559982,0.0501142032444477,0.0857951045036316,0.1368627101182938,-0.1592317968606949));
res += mul(Get(s1,dx,-dy), float4x4(0.1032198145985603,-0.0342653170228004,0.0037632852327079,-0.0631879344582558,0.0571224242448807,-0.0279912799596786,-0.0005406924174167,-0.0715229511260986,-0.1553336083889008,-0.0070896772667766,0.0984516814351082,0.0522969290614128,-0.1412886828184128,0.0100118936970830,-0.0227132160216570,-0.0643137320876122));
res += mul(Get(s2,dx,-dy), float4x4(-0.0980996862053871,-0.0653934031724930,0.0054743643850088,0.1151947975158691,0.0026286223437637,0.0342390649020672,-0.0717859417200089,-0.0203997604548931,0.0674520283937454,0.0002783694653772,-0.0002561128058005,0.0677294358611107,-0.1099728271365166,0.0712235569953918,-0.0557668097317219,0.1075627207756042));
res += mul(Get(s0,dx,0), float4x4(-0.1452576667070389,-0.0731102228164673,0.0157042592763901,0.0264978278428316,-0.2188910990953445,0.1239278540015221,-0.0379883944988251,0.3190976083278656,0.0380062609910965,-0.1478994637727737,0.0104250377044082,0.0432292409241199,-0.1549403369426727,-0.2759648263454437,0.0445643998682499,0.0802779272198677));
res += mul(Get(s1,dx,0), float4x4(0.1074888855218887,-0.0229930803179741,-0.0246587842702866,0.0043076598085463,0.3548209369182587,0.0537802577018738,0.0076170987449586,-0.2421671599149704,-0.0674465298652649,0.0631808042526245,0.2707084715366364,0.0437675118446350,-0.3049772083759308,-0.0388108789920807,0.0042940722778440,-0.1542127877473831));
res += mul(Get(s2,dx,0), float4x4(0.0058230431750417,0.1585466861724854,-0.0611942112445831,0.0217157267034054,-0.1156777292490005,-0.0624517761170864,-0.2135505974292755,0.1645162552595139,0.1448192596435547,0.2871778905391693,-0.1136008575558662,-0.1124605685472488,-0.3368740975856781,0.0114788552746177,-0.1718269586563110,0.2853075861930847));
res += mul(Get(s0,dx,dy), float4x4(-0.0745925232768059,-0.1501878350973129,0.0262954514473677,0.1396246552467346,0.1663066893815994,-0.0473063178360462,-0.1345340609550476,0.0515470169484615,0.0359644368290901,-0.1250528246164322,0.0542347542941570,0.0334633737802505,0.0188197325915098,0.2054377496242523,-0.1895069926977158,-0.0795899033546448));
res += mul(Get(s1,dx,dy), float4x4(0.1582230925559998,-0.0484137833118439,0.0253409538418055,0.0368998423218727,0.1997645646333694,-0.0550262592732906,-0.1303432583808899,-0.0718302652239799,0.2553753852844238,0.0347957909107208,-0.0957666113972664,-0.1089626848697662,-0.1817607432603836,0.0234812069684267,-0.0171659011393785,-0.1007339283823967));
res += mul(Get(s2,dx,dy), float4x4(0.1030535995960236,-0.0048074661754072,-0.0937095284461975,0.0024965431075543,0.0629397779703140,-0.0000528378404852,0.0751332938671112,0.0332453139126301,0.1952831894159317,-0.2036093324422836,0.2833600342273712,0.1180696338415146,-0.1930799931287766,-0.0458301454782486,0.2648168802261353,0.1955032944679260));
res = max(float4(0, 0, 0, 0), res) + float4(-0.0716459155082703,0.9673514962196350,0.1098689213395119,0.9553492069244385) * min(float4(0, 0, 0, 0), res);
return res;
}