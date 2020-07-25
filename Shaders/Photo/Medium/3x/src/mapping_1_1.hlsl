sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.0336911454796791,-0.0125713422894478,0.0243951585143805,0.0660199970006943);
res += mul(Get(s0,-dx,-dy), float4x4(0.1888575404882431,-0.1515361666679382,0.1368595510721207,0.3196640908718109,-0.0420190058648586,-0.0351032577455044,-0.0792937502264977,0.0601134970784187,0.0434321537613869,-0.0859858989715576,0.0264799129217863,-0.0072646434418857,0.0026917634531856,-0.0833513364195824,-0.0431628599762917,-0.0458973757922649));
res += mul(Get(s1,-dx,-dy), float4x4(0.0314393788576126,-0.0995334386825562,-0.3000699579715729,0.1288618743419647,-0.0604784190654755,0.0029809942934662,0.1000672057271004,0.1120569035410881,-0.1031674072146416,0.2554369568824768,0.2183232456445694,-0.0605853646993637,0.0699170753359795,-0.0204420592635870,0.2807008028030396,0.1358044594526291));
res += mul(Get(s2,-dx,-dy), float4x4(-0.0822569504380226,-0.0077777197584510,0.2576331496238708,0.2547687590122223,0.0350705049932003,0.1029032841324806,0.1954466402530670,-0.0193989183753729,0.1174787878990173,0.0726919770240784,-0.2122988551855087,-0.1745782494544983,0.0399818606674671,0.0623023398220539,0.0172313433140516,0.0046072504483163));
res += mul(Get(s3,-dx,-dy), float4x4(0.0565796382725239,0.2702812254428864,-0.0228750370442867,0.0186867248266935,0.0398954823613167,-0.0845695510506630,-0.0241326577961445,-0.0282648745924234,0.0920707657933235,0.0466055534780025,-0.2401769757270813,0.0864916220307350,-0.1392636150121689,-0.0460531227290630,-0.0795873776078224,-0.0157018192112446));
res += mul(Get(s4,-dx,-dy), float4x4(-0.0171621348708868,-0.0243925862014294,-0.2520410418510437,0.0178786981850863,0.0116398716345429,-0.0383090227842331,0.1065019667148590,-0.0837668702006340,-0.0406511388719082,0.1096610948443413,0.2063259929418564,-0.0220954623073339,0.2604837417602539,-0.2412113547325134,-0.0413551144301891,0.1574552953243256));
res += mul(Get(s5,-dx,-dy), float4x4(0.0394506640732288,0.2443768531084061,0.1089300513267517,-0.2549484670162201,0.0697691291570663,-0.0532471388578415,-0.1258040666580200,-0.0781227201223373,0.0312940180301666,0.0436781607568264,0.1552907377481461,0.1017121300101280,0.0326645672321320,0.0924896299839020,-0.1469002813100815,-0.0200166907161474));
res += mul(Get(s0,-dx,0), float4x4(-0.1077195554971695,0.4405266046524048,0.5678550601005554,-0.0533430092036724,-0.0370723530650139,0.0066029033623636,-0.1969654560089111,0.0941960811614990,-0.0835051313042641,-0.0367019213736057,-0.0809784084558487,0.0812259390950203,-0.0373524352908134,-0.1111347377300262,-0.0162166431546211,0.1856434792280197));
res += mul(Get(s1,-dx,0), float4x4(0.0402834862470627,-0.0180261693894863,0.1078690961003304,0.4241749048233032,-0.0246027223765850,-0.1882775723934174,0.2411250323057175,-0.0758223459124565,0.1895340234041214,-0.0387911498546600,-0.1172156035900116,-0.1130082532763481,0.0354213491082191,-0.0107711143791676,-0.4998018443584442,-0.1625034958124161));
res += mul(Get(s2,-dx,0), float4x4(-0.0343231782317162,-0.1549362689256668,-0.0727201625704765,0.1115615367889404,0.1674828827381134,-0.0030161230824888,-0.0789141505956650,0.2286709249019623,-0.1382876038551331,-0.0607404038310051,0.2368577867746353,-0.0622875280678272,0.0006955495919101,-0.1119433641433716,0.0085735917091370,0.0531955398619175));
res += mul(Get(s3,-dx,0), float4x4(0.1980406343936920,-0.1336410492658615,0.0016100720968097,-0.0957510694861412,-0.0062326802872121,-0.1819745004177094,-0.0177284907549620,-0.0870714113116264,-0.0079568633809686,-0.0125093543902040,0.0074094091542065,-0.0194761231541634,0.1905076950788498,-0.0991552174091339,0.1755610704421997,0.1027391850948334));
res += mul(Get(s4,-dx,0), float4x4(-0.0157972350716591,0.0213487688452005,-0.0213092267513275,0.0627012997865677,-0.1815041601657867,-0.1384285539388657,-0.1397399157285690,-0.0096668573096395,-0.1832640320062637,0.0650607049465179,0.2653297483921051,-0.1676134020090103,0.0970619991421700,0.0129466485232115,-0.2848481237888336,0.0311801116913557));
res += mul(Get(s5,-dx,0), float4x4(-0.0082483999431133,0.2383623421192169,0.1562302708625793,0.0564406141638756,-0.1837091743946075,-0.0574876591563225,-0.2339714616537094,0.2291681170463562,0.1190022006630898,-0.1841588169336319,0.0029626826290041,0.1424912512302399,-0.1445179730653763,-0.2355536669492722,-0.1039669215679169,-0.3544260859489441));
res += mul(Get(s0,-dx,dy), float4x4(0.0247462857514620,0.0365634933114052,-0.2917733192443848,-0.0067570442333817,-0.0006759685347788,0.1162236034870148,-0.0223876666277647,-0.1423636972904205,-0.0707405209541321,-0.0762027055025101,0.0680359154939651,-0.0745998993515968,0.0337273515760899,-0.1695523262023926,-0.1073450669646263,0.0340651497244835));
res += mul(Get(s1,-dx,dy), float4x4(-0.0271475892513990,-0.0388042517006397,0.0988091230392456,0.2042619138956070,0.1538484245538712,-0.0002978116390295,-0.0263630300760269,-0.0518617033958435,-0.0726599469780922,-0.0441187843680382,-0.0296288225799799,0.0200565569102764,0.1580356210470200,0.0250704716891050,0.1676217913627625,-0.0381275229156017));
res += mul(Get(s2,-dx,dy), float4x4(0.0236995071172714,0.0535283945500851,-0.1587627232074738,-0.0438858196139336,0.0400408990681171,-0.0566824488341808,0.1307124644517899,0.2798044383525848,-0.0833060964941978,0.0146474726498127,-0.0007558135548607,0.0015786697622389,0.0451322011649609,0.0452050678431988,-0.0567391961812973,0.1207187324762344));
res += mul(Get(s3,-dx,dy), float4x4(0.0080658346414566,-0.0550167858600616,0.0249355547130108,-0.1542580723762512,0.0549226999282837,-0.0489230118691921,0.1751707941293716,-0.0304149184376001,-0.0391605906188488,0.0698498263955116,-0.2555199563503265,0.0936130285263062,0.0410350151360035,0.1317104995250702,-0.2825739383697510,0.0779843553900719));
res += mul(Get(s4,-dx,dy), float4x4(0.1094530522823334,0.0268818065524101,-0.2444063723087311,-0.0318169817328453,0.0416773185133934,-0.0211293846368790,0.0656574442982674,0.0162507668137550,0.1167341843247414,0.1578850597143173,0.0279716309159994,0.0218116939067841,0.0011903881095350,-0.0917108803987503,0.0968623533844948,0.1672751903533936));
res += mul(Get(s5,-dx,dy), float4x4(-0.0828479155898094,-0.1620864570140839,-0.0723818391561508,0.0629551485180855,-0.0177289098501205,0.1741452366113663,0.1548649519681931,0.1289298534393311,0.0297706779092550,-0.1939496546983719,0.0770464241504669,-0.0437747091054916,-0.2062816768884659,0.1242383867502213,0.1873367875814438,-0.0690774545073509));
res += mul(Get(s0,0,-dy), float4x4(-0.1399992406368256,-0.2537443041801453,0.1268615722656250,-0.0773035362362862,0.0672205537557602,-0.1817653030157089,-0.0102181248366833,0.0009291438618675,-0.0016983903478831,0.0897890478372574,-0.0774369910359383,-0.1084773913025856,0.0723525062203407,-0.0646692961454391,-0.2525570690631866,0.1505371183156967));
res += mul(Get(s1,0,-dy), float4x4(-0.1227347180247307,0.0799433737993240,-0.1404568254947662,-0.1227744370698929,-0.2183468341827393,-0.1115929707884789,0.2653345465660095,-0.1401272565126419,-0.0541999489068985,0.0269664991647005,0.1330048143863678,0.2227651029825211,-0.0134284859523177,0.2024796456098557,-0.0376907512545586,0.0321568734943867));
res += mul(Get(s2,0,-dy), float4x4(0.1168764755129814,0.0798122286796570,0.3032850027084351,-0.2456333935260773,0.1208114773035049,-0.1528831273317337,0.0382122658193111,0.4154542088508606,-0.0191066116094589,0.0272062271833420,-0.0268032122403383,-0.2348573207855225,-0.0939336046576500,0.0874536335468292,0.0518310144543648,-0.1588418036699295));
res += mul(Get(s3,0,-dy), float4x4(0.0044015529565513,0.0333214253187180,0.1762527227401733,0.0807703137397766,0.1222121864557266,0.0524056591093540,-0.1165213808417320,0.1577069610357285,0.0295115597546101,0.1342219561338425,0.2095585316419601,-0.0784024521708488,-0.0001785896020010,0.0486911758780479,0.1497218310832977,0.0364706218242645));
res += mul(Get(s4,0,-dy), float4x4(0.0760438665747643,0.2770223021507263,0.3671519756317139,0.3334747552871704,-0.0600390806794167,0.0610126107931137,0.3251118361949921,-0.1089641824364662,0.0697597116231918,0.2448184639215469,-0.0077668894082308,-0.2042199671268463,-0.0548777207732201,-0.0732202678918839,-0.3267512917518616,-0.1835189461708069));
res += mul(Get(s5,0,-dy), float4x4(-0.1492242217063904,0.0496193468570709,0.3020365238189697,-0.0510142296552658,-0.1972624808549881,-0.2905793488025665,-0.3695186674594879,-0.0103295445442200,-0.0629469230771065,-0.0990421921014786,-0.1567024886608124,-0.0869602113962173,-0.0502323471009731,0.0282903350889683,-0.1968645602464676,-0.3161990046501160));
res += mul(Get(s0,0,0), float4x4(0.1385322064161301,-0.5329123735427856,-0.4323565065860748,-0.3567083477973938,0.1364287585020065,0.1621033251285553,0.3595977723598480,-0.2431880235671997,0.0401907525956631,0.3212589919567108,-0.1026133745908737,0.1385116428136826,-0.1276296973228455,-0.2157305330038071,-0.1092758327722549,-0.4838798642158508));
res += mul(Get(s1,0,0), float4x4(0.1530055552721024,0.1495855748653412,0.0067535312846303,-0.3205050826072693,0.2254763841629028,-0.2269838005304337,-0.4930022358894348,0.0990005508065224,-0.0809114500880241,0.2475304752588272,-0.0511201843619347,0.2917880117893219,-0.0763752758502960,-0.2650902271270752,-0.1548312157392502,-0.1275872737169266));
res += mul(Get(s2,0,0), float4x4(-0.2555917501449585,0.4510629177093506,0.0954319760203362,0.0778304710984230,-0.1732497513294220,-0.1084029152989388,-0.5767249464988708,-0.3975448608398438,0.4799254834651947,0.4096096158027649,0.0322725251317024,0.5500226616859436,0.0826499238610268,0.0935287848114967,0.0351380184292793,0.3113169074058533));
res += mul(Get(s3,0,0), float4x4(-0.1299934536218643,0.0711622908711433,-0.4291220009326935,-0.0957320034503937,0.0537387840449810,0.1157998964190483,0.2974969148635864,0.2576722502708435,0.0042713377624750,-0.1917779594659805,0.0355312563478947,0.1484876722097397,-0.0096092820167542,0.0008707576198503,0.2378302514553070,0.1893564164638519));
res += mul(Get(s4,0,0), float4x4(-0.0269000269472599,0.0018150291871279,0.2766606211662292,0.1269865632057190,0.1458209902048111,0.0857216790318489,-0.1499820947647095,0.6574075818061829,0.2967711985111237,0.3217177689075470,0.2559764087200165,0.2771138846874237,-0.1615013033151627,0.2029256820678711,0.5395504832267761,-0.1253554970026016));
res += mul(Get(s5,0,0), float4x4(0.2970457077026367,-0.1037901416420937,-0.5867991447448730,0.0127894543111324,0.7514439821243286,-0.0465264879167080,0.5700213909149170,0.0157848466187716,0.1944869309663773,0.1417683511972427,-0.0898355692625046,-0.0509640760719776,0.2356910705566406,0.4540475904941559,0.1472039967775345,0.1657121181488037));
res += mul(Get(s0,0,dy), float4x4(-0.0353915318846703,0.0591514669358730,0.1585938483476639,-0.0555032342672348,-0.0267994012683630,0.0654108375310898,0.0055126170627773,0.1013239845633507,0.0179304070770741,0.0800696015357971,-0.0420124121010303,0.1201818138360977,0.0466074645519257,0.3125663101673126,0.2537730634212494,0.0927398875355721));
res += mul(Get(s1,0,dy), float4x4(-0.1064975261688232,0.0481758043169975,0.2596300542354584,-0.0686789900064468,-0.0252124909311533,0.0367186814546585,0.2291811257600784,-0.1707665473222733,0.2648577690124512,-0.1538374871015549,0.0620112158358097,0.0161197036504745,-0.2140536010265350,0.0764521434903145,-0.0452479496598244,-0.0640350803732872));
res += mul(Get(s2,0,dy), float4x4(0.0016679461114109,-0.0415353402495384,0.2692072689533234,-0.1660279631614685,0.0023964764550328,-0.1985872387886047,0.2333895415067673,-0.1351620256900787,-0.0527796596288681,-0.0192237552255392,0.1573440134525299,-0.2519120275974274,-0.0252708308398724,-0.0818422436714172,0.0194292385131121,-0.1875475049018860));
res += mul(Get(s3,0,dy), float4x4(-0.0746067091822624,-0.1960843503475189,-0.0748294591903687,0.0571336485445499,-0.0670390650629997,-0.1348588764667511,-0.0588373877108097,-0.0258609615266323,-0.0817415043711662,-0.0748683512210846,0.0813273638486862,-0.0107429362833500,-0.0062309564091265,-0.0105726886540651,0.0466502830386162,-0.0763544887304306));
res += mul(Get(s4,0,dy), float4x4(-0.0914972051978111,-0.1704571992158890,0.1081796884536743,-0.0330899581313133,0.0819402560591698,-0.0313087441027164,0.0674766153097153,-0.0966841802000999,-0.2540118396282196,-0.2069676220417023,-0.2023389935493469,-0.0103725176304579,-0.0559526756405830,-0.2248044759035110,-0.3765887916088104,-0.0108075831085443));
res += mul(Get(s5,0,dy), float4x4(-0.0313496701419353,-0.0571025386452675,0.0348722189664841,0.0006378946127370,-0.1770842373371124,0.0095433015376329,-0.4352063238620758,0.0120163131505251,0.0010944840032607,0.1541470289230347,-0.0870406925678253,-0.0260319616645575,0.1194678097963333,0.2661670446395874,0.1861172616481781,-0.0765362307429314));
res += mul(Get(s0,dx,-dy), float4x4(0.1351071149110794,-0.0405886061489582,-0.4054619669914246,0.2146905064582825,-0.0127165848389268,0.1036956608295441,0.2522133290767670,-0.1204805076122284,0.0245619323104620,-0.1801133751869202,-0.0434520691633224,-0.0525582581758499,0.0169414542615414,-0.1029415652155876,0.0815487802028656,-0.4135694801807404));
res += mul(Get(s1,dx,-dy), float4x4(-0.0367716513574123,0.0343746468424797,-0.1119309887290001,-0.3203725814819336,0.0877546444535255,-0.1012377366423607,-0.2453487664461136,-0.2281282097101212,0.1439339965581894,0.0066141211427748,-0.0290440693497658,-0.0012892114464194,-0.0875551998615265,0.0350437313318253,-0.0124965738505125,0.0898452699184418));
res += mul(Get(s2,dx,-dy), float4x4(0.0455050058662891,0.0879636704921722,-0.1338574290275574,-0.0112370476126671,-0.0775685012340546,0.2980048358440399,0.0281110536307096,-0.3719615936279297,0.0401214323937893,-0.0662346705794334,-0.2074195444583893,-0.1764670610427856,-0.0041975826025009,0.0494202300906181,0.1061441376805305,-0.2047895938158035));
res += mul(Get(s3,dx,-dy), float4x4(0.0711647644639015,-0.1060079485177994,-0.0225274153053761,-0.1182684376835823,-0.0265035461634398,0.1473788768053055,0.0121352961286902,-0.1729906946420670,-0.0051822392269969,0.0320631004869938,0.1499057561159134,0.0451511368155479,0.0410043522715569,-0.0829333737492561,-0.0060053155757487,0.0145128360018134));
res += mul(Get(s4,dx,-dy), float4x4(0.0938775911927223,0.0349049679934978,0.1127724349498749,-0.0998837947845459,0.0219582170248032,0.0166854094713926,0.0551051944494247,0.1922318935394287,0.0663635134696960,0.1461313813924789,0.1325757354497910,0.2588916122913361,0.0363162569701672,0.1220885813236237,0.0978954583406448,0.1584229618310928));
res += mul(Get(s5,dx,-dy), float4x4(-0.0318343080580235,0.1742656230926514,-0.1501994729042053,0.0497281812131405,-0.2693169713020325,0.0687561556696892,0.0889539495110512,-0.1637213528156281,-0.1940394341945648,-0.0809606239199638,-0.0332351401448250,-0.4426347613334656,0.0263731777667999,0.0371269285678864,-0.2918644249439240,0.3404342830181122));
res += mul(Get(s0,dx,0), float4x4(-0.1155675798654556,0.0910603031516075,0.2822064161300659,0.3466404676437378,0.0180256422609091,-0.0545184873044491,-0.4291659295558929,0.0103392004966736,0.0255133435130119,-0.0083657857030630,0.0250748582184315,-0.3525542020797729,-0.1252843737602234,0.1366668492555618,0.0436975471675396,-0.3892798125743866));
res += mul(Get(s1,dx,0), float4x4(0.0337517149746418,-0.0464211404323578,-0.0955289900302887,-0.2703614532947540,-0.1436525285243988,-0.2128909379243851,0.1888951659202576,-0.1115471869707108,-0.0234949477016926,-0.0746361985802650,0.0315517969429493,-0.1334354728460312,0.2796460688114166,0.0411552451550961,0.1447148770093918,-0.0729454606771469));
res += mul(Get(s2,dx,0), float4x4(0.1820270568132401,-0.1068993881344795,-0.3646297752857208,-0.2634366154670715,-0.2192610949277878,0.2277459204196930,-0.1095185950398445,0.1481143236160278,-0.2157471626996994,-0.0000297260721709,0.0687766969203949,0.0407314561307430,-0.1083036065101624,-0.0022283587604761,-0.1076618134975433,-0.4119364023208618));
res += mul(Get(s3,dx,0), float4x4(-0.0972316116094589,0.0618837326765060,0.0517824441194534,0.1660403311252594,-0.0113421874120831,0.0605217851698399,-0.1279636621475220,-0.2933944165706635,0.1434830427169800,-0.0214249342679977,0.1274849027395248,-0.0396399535238743,0.2665249407291412,0.1172315999865532,0.1814744770526886,0.4283235371112823));
res += mul(Get(s4,dx,0), float4x4(-0.0455412790179253,0.1249266564846039,-0.0066063879057765,-0.1180494427680969,-0.1029820367693901,0.1379973590373993,0.0277927611023188,0.3613407611846924,0.1609079241752625,0.2329974025487900,-0.3921909928321838,0.2215762287378311,0.0068964171223342,0.0857517048716545,0.2867045402526855,0.2670459449291229));
res += mul(Get(s5,dx,0), float4x4(-0.0787189379334450,0.1090234667062759,0.0551665909588337,0.4166821241378784,-0.0426179058849812,0.1244150698184967,0.4174962639808655,-0.3446590006351471,-0.0184756051748991,0.0161812752485275,-0.0088824741542339,-0.6443690657615662,-0.0857284367084503,-0.2142354547977448,0.1866048425436020,0.2221185564994812));
res += mul(Get(s0,dx,dy), float4x4(-0.1513887643814087,0.2000993788242340,-0.0103094102814794,0.3483941256999969,-0.0445209145545959,0.0893419682979584,0.0119488425552845,0.1168368905782700,-0.0621155165135860,-0.0002576122060418,-0.0517870858311653,-0.1870807111263275,0.0728176981210709,-0.1935103833675385,0.0810866802930832,-0.0145478220656514));
res += mul(Get(s1,dx,dy), float4x4(-0.0290881302207708,-0.0707985386252403,0.0967478603124619,0.0127515150234103,0.0214686673134565,0.0557405352592468,-0.2245420068502426,0.0395085290074348,-0.1381464451551437,-0.1140825375914574,-0.1410356760025024,0.0523579157888889,-0.1865102797746658,-0.1874884217977524,0.0650540441274643,0.0537231639027596));
res += mul(Get(s2,dx,dy), float4x4(0.0308171398937702,0.0604299679398537,-0.1472549587488174,0.3781687617301941,0.0702624991536140,-0.2407591491937637,0.1014455407857895,-0.0780892968177795,-0.0084866583347321,-0.0610397756099701,-0.2060767859220505,-0.0517879649996758,0.0768666416406631,-0.0073607880622149,0.1791915595531464,-0.1873203366994858));
res += mul(Get(s3,dx,dy), float4x4(-0.0750882476568222,-0.0731750652194023,0.1599960178136826,0.0927397906780243,-0.0494813136756420,-0.0793242305517197,-0.0051708249375224,-0.1410391926765442,0.0056153992190957,0.2309754490852356,0.0116174668073654,0.1125643625855446,0.1288940906524658,0.1232412159442902,-0.2325810343027115,0.2442079633474350));
res += mul(Get(s4,dx,dy), float4x4(0.1062812581658363,-0.1332831829786301,-0.2225677371025085,-0.4479678273200989,0.0795858725905418,0.1064867228269577,-0.1153092756867409,0.1536943465471268,-0.0623075142502785,-0.0525517463684082,-0.1046289056539536,0.1202707290649414,-0.1458190828561783,0.1184282228350639,-0.0129020484164357,0.0434105992317200));
res += mul(Get(s5,dx,dy), float4x4(0.0703193545341492,-0.1425980478525162,0.1352405697107315,-0.0821513682603836,0.0953340679407120,0.0235961303114891,-0.0348652191460133,0.1590577065944672,-0.0518956780433655,-0.2277383059263229,0.1778886169195175,-0.2829613089561462,0.0018708058632910,0.0036246879026294,-0.0500183664262295,0.4860609471797943));
res = max(float4(0, 0, 0, 0), res) + float4(3.2744052410125732,1.0315260887145996,-0.3676872253417969,0.0975744128227234) * min(float4(0, 0, 0, 0), res);
return res;
}