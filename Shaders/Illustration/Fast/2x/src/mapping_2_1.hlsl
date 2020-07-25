sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.0069550890475512,0.0045546120963991,-0.0189039967954159,-0.1096743866801262);
res += mul(Get(s0,-dx,-dy), float4x4(0.0895623341202736,-0.1041722446680069,0.1061383262276649,-0.0463832989335060,0.1130564436316490,0.0035163657739758,0.0979114547371864,-0.0337588787078857,0.1661947518587112,0.0519851706922054,0.4357540309429169,-0.1265021264553070,-0.0507156178355217,0.0540968552231789,-0.1738865822553635,-0.0458957441151142));
res += mul(Get(s1,-dx,-dy), float4x4(0.0457954518496990,0.0196668356657028,-0.0487578287720680,0.0514421015977859,0.0035232529044151,-0.0358801782131195,-0.0237838327884674,0.2174344956874847,-0.1373918056488037,0.0836371183395386,-0.1907868534326553,-0.0013124243123457,-0.0294352136552334,0.0071059549227357,0.0164343342185020,0.0317828357219696));
res += mul(Get(s2,-dx,-dy), float4x4(-0.0066596795804799,0.0142392609268427,0.0151043916121125,0.0995078757405281,0.1475641131401062,0.1200902387499809,0.0209991876035929,0.0263944175094366,-0.0614537894725800,0.0179434735327959,0.0042824246920645,0.0020852461457253,-0.0333060882985592,-0.0458543784916401,0.2232746034860611,-0.0540045276284218));
res += mul(Get(s0,-dx,0), float4x4(-0.1241227313876152,0.1529818475246429,-0.1046645417809486,-0.1314221620559692,0.2431219965219498,-0.1607975065708160,-0.0055489069782197,0.0436509884893894,-0.0103525426238775,-0.0185018405318260,-0.1158677637577057,-0.0236800815910101,-0.0076274750754237,0.0070077530108392,-0.1216525807976723,-0.1829936206340790));
res += mul(Get(s1,-dx,0), float4x4(0.1960344016551971,0.0045919655822217,-0.0644240304827690,-0.1294858604669571,-0.2141525149345398,-0.1514553576707840,0.0303537435829639,0.4088402688503265,0.1146599426865578,0.1175602152943611,-0.4639110863208771,-0.1244674921035767,-0.0416673235595226,-0.0650944709777832,-0.1003008037805557,0.0492780357599258));
res += mul(Get(s2,-dx,0), float4x4(-0.0590817071497440,-0.0283277351409197,-0.1044841408729553,0.1185104623436928,-0.0103624435141683,0.1873616725206375,-0.0343391597270966,-0.0239825416356325,0.1471992880105972,-0.0546065904200077,-0.0663859173655510,-0.1278015673160553,-0.0855723842978477,-0.2104203253984451,0.0461233146488667,0.1772034019231796));
res += mul(Get(s0,-dx,dy), float4x4(-0.0329659879207611,-0.0158655755221844,-0.1306492984294891,-0.0721832066774368,0.0283557735383511,0.0311371479183435,0.1699274033308029,0.1403653025627136,0.0321022197604179,0.0355709418654442,-0.1609669476747513,-0.0502343177795410,0.0884856507182121,-0.1194425523281097,-0.0810681879520416,0.0978336185216904));
res += mul(Get(s1,-dx,dy), float4x4(-0.1732673496007919,-0.0173356831073761,0.1332386732101440,-0.0237116087228060,-0.1743296831846237,-0.0433378405869007,0.0247158370912075,-0.0109948283061385,-0.0135987317189574,-0.0008861150708981,-0.0989314690232277,0.0408162176609039,-0.1938374489545822,-0.0191911999136209,-0.0662174001336098,0.1414160728454590));
res += mul(Get(s2,-dx,dy), float4x4(-0.0316326469182968,0.0312468484044075,-0.2363368421792984,-0.2472477704286575,-0.0314412824809551,0.1382925510406494,0.0893186703324318,-0.0783937647938728,-0.0400852225720882,-0.0224470123648643,0.0250296015292406,0.0090580433607101,-0.0740031674504280,0.1325727850198746,-0.0504310689866543,0.0948289781808853));
res += mul(Get(s0,0,-dy), float4x4(-0.0789308175444603,-0.1323387920856476,0.1587565839290619,-0.1528378427028656,0.2185833603143692,-0.1898433715105057,0.1959350407123566,-0.1035411283373833,0.0707791373133659,-0.1367763131856918,-0.3540553450584412,-0.0053247502073646,0.2017127722501755,0.0340440236032009,-0.3581887483596802,0.1548732519149780));
res += mul(Get(s1,0,-dy), float4x4(-0.0612629763782024,0.0601533316075802,0.2147444039583206,-0.2266706228256226,-0.1596517115831375,0.2072391659021378,-0.0388953164219856,-0.2143111675977707,-0.0705901235342026,0.2848311960697174,0.1846010386943817,-0.0089534521102905,-0.0135317472741008,0.0172895807772875,-0.0119288908317685,0.0094460183754563));
res += mul(Get(s2,0,-dy), float4x4(-0.1414839327335358,0.0953484699130058,-0.1123262122273445,0.0584112852811813,0.1442969292402267,0.0898812264204025,0.0419879071414471,0.0552755258977413,0.1339840888977051,-0.1145718917250633,0.0513356588780880,-0.0785896182060242,-0.0484203249216080,0.0800829082727432,0.1717979609966278,-0.2423131167888641));
res += mul(Get(s0,0,0), float4x4(0.3300476074218750,0.2474693506956100,-0.7246805429458618,0.1908488273620605,-0.2186052203178406,-0.1140992492437363,-0.1867275983095169,0.0853089839220047,-0.5629738569259644,0.3057743012905121,-0.1284615397453308,-0.1924478858709335,0.3971044421195984,0.8105719089508057,0.0199740380048752,0.1510463804006577));
res += mul(Get(s1,0,0), float4x4(0.4542298614978790,0.0844830572605133,-0.2162463963031769,0.1502064615488052,0.0628408044576645,0.1929347962141037,-0.0549261383712292,0.2464976012706757,-0.1108553037047386,-0.3757103383541107,1.2632045745849609,-0.3230536878108978,0.0585845746099949,-0.0591943114995956,-0.0399837642908096,0.1642466336488724));
res += mul(Get(s2,0,0), float4x4(-0.2196533977985382,0.1754443794488907,0.0768021643161774,-0.0534164831042290,0.3231951892375946,0.1726021021604538,0.0706046894192696,-0.1756600886583328,-0.0321537479758263,0.0769076272845268,-0.0009321670513600,0.4649451971054077,-0.3568139374256134,0.0321496911346912,0.1608344465494156,0.0534191131591797));
res += mul(Get(s0,0,dy), float4x4(-0.1033284217119217,-0.1032138094305992,0.0818357765674591,0.2171352952718735,-0.0157403871417046,0.1366682499647141,0.0538884103298187,-0.0048505188897252,-0.1213060989975929,-0.0932088717818260,-0.0538486838340759,0.1309643685817719,-0.1534790247678757,0.2047112435102463,0.2819868624210358,0.1282994151115417));
res += mul(Get(s1,0,dy), float4x4(-0.0872749909758568,0.0459943339228630,-0.2646259367465973,0.0912472903728485,-0.0259770788252354,0.0734954997897148,0.0116815268993378,-0.1543170362710953,0.0727901905775070,0.0266971345990896,-0.0254266057163477,0.0498135164380074,-0.0712234377861023,-0.1393071413040161,-0.0418835841119289,0.3345125019550323));
res += mul(Get(s2,0,dy), float4x4(0.1277573555707932,-0.5310379862785339,-0.0134105542674661,0.2770161032676697,0.0914431884884834,0.0615610405802727,0.0858994796872139,-0.1437321156263351,-0.0062433858402073,-0.0229620952159166,0.0193894561380148,-0.0045326747931540,-0.1501418948173523,0.0953676402568817,0.1130991503596306,-0.1481928378343582));
res += mul(Get(s0,dx,-dy), float4x4(0.0763472691178322,-0.0254525076597929,0.1165586039423943,-0.2347458451986313,0.0914692431688309,-0.0512678809463978,-0.1394423395395279,-0.0200111381709576,0.2019206136465073,-0.1165344044566154,-0.1446535289287567,-0.0410884134471416,-0.0351328514516354,0.0116456439718604,0.1604007631540298,-0.0817471146583557));
res += mul(Get(s1,dx,-dy), float4x4(-0.0696000978350639,0.0113554671406746,-0.2706845700740814,-0.0832171589136124,0.0147633086889982,-0.0308363586664200,-0.0899126008152962,0.0040468079969287,0.1501376181840897,-0.1805161833763123,0.0625676810741425,0.1583880633115768,-0.0151673024520278,0.0037206141278148,0.0470822229981422,0.0002931834314950));
res += mul(Get(s2,dx,-dy), float4x4(-0.0047778422012925,-0.0378526002168655,-0.0495055131614208,0.1220130771398544,0.0097249587997794,-0.0280507784336805,-0.3030728101730347,0.2385705113410950,-0.0377977378666401,0.0661757513880730,0.0084797143936157,-0.0880295038223267,-0.0193435493856668,0.0354963503777981,0.0702029913663864,-0.0242711901664734));
res += mul(Get(s0,dx,0), float4x4(0.0739251822233200,-0.1383756548166275,-0.2315712571144104,0.1254540830850601,0.0750544518232346,-0.0596232861280441,-0.3255862891674042,-0.1428905874490738,-0.0476184263825417,-0.0108967004343867,0.2129571437835693,0.0071928789839149,0.0252800788730383,-0.2424129545688629,0.4489405453205109,0.1412686705589294));
res += mul(Get(s1,dx,0), float4x4(0.0640131235122681,-0.0314570516347885,0.4398790001869202,0.1426158696413040,0.2651359736919403,-0.2261274605989456,0.0856590867042542,0.2831528782844543,-0.0595718920230865,0.1237708926200867,-0.2288093715906143,-0.0522639341652393,0.0414064452052116,-0.0537108667194843,0.0460367128252983,0.0669214949011803));
res += mul(Get(s2,dx,0), float4x4(0.1405855715274811,-0.1840680837631226,-0.0401495248079300,0.1270574033260345,0.0537328347563744,0.1378890275955200,-0.4312272071838379,0.1699059456586838,0.0435322262346745,-0.1032584756612778,0.1861701011657715,0.0496846698224545,-0.0600375495851040,-0.0956842973828316,-0.2070440649986267,0.1288431882858276));
res += mul(Get(s0,dx,dy), float4x4(0.0225378852337599,-0.0039534741081297,0.0738166943192482,-0.2232888787984848,-0.0644463077187538,0.0041921674273908,-0.1354144215583801,-0.1598396748304367,0.1940899342298508,-0.1707074791193008,-0.1766223013401031,-0.0100572332739830,0.1836327612400055,-0.0480769611895084,0.0673028528690338,0.1076618954539299));
res += mul(Get(s1,dx,dy), float4x4(-0.0437499359250069,-0.0155980112031102,-0.0932425335049629,0.1213347762823105,-0.0064036031253636,-0.0117234876379371,0.3267939388751984,-0.2002614438533783,0.0177619531750679,-0.0545655004680157,-0.1711809784173965,0.0293400529772043,-0.0001923370582517,-0.0074661890976131,-0.1285221576690674,0.2103334516286850));
res += mul(Get(s2,dx,dy), float4x4(0.1327864527702332,0.0787744745612144,0.3419198095798492,0.1515223383903503,-0.0684642791748047,-0.0222585685551167,-0.0063969441689551,-0.0531147979199886,-0.0138924196362495,-0.0021060016006231,-0.0932110771536827,0.0335194692015648,-0.0581431239843369,0.0156090157106519,-0.0055865584872663,0.0015200785128400));
res = max(float4(0, 0, 0, 0), res) + float4(0.9872035980224609,0.9978529214859009,-0.5805669426918030,1.0641542673110962) * min(float4(0, 0, 0, 0), res);
return res;
}