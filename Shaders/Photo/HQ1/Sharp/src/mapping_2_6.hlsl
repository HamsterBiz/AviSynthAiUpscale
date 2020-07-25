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
float4 res = float4(-0.0306557845324278,-0.0088918842375278,0.0662071853876114,-0.0392269454896450);
res += mul(Get(s0,-dx,-dy), float4x4(0.0458582006394863,0.0828654468059540,0.0304090119898319,-0.0576022341847420,0.1010027751326561,0.0447503216564655,-0.0101922657340765,-0.1940227448940277,-0.0422891154885292,-0.0159535296261311,-0.0294203627854586,-0.0810130015015602,-0.0916680544614792,0.0275413133203983,-0.0678779333829880,-0.0431067533791065));
res += mul(Get(s1,-dx,-dy), float4x4(0.0335842967033386,-0.0878607928752899,0.0985876172780991,0.0009141399059445,0.0699125900864601,0.0285195764154196,0.0587524510920048,0.1279201358556747,0.0352635905146599,0.0337522365152836,0.1655047982931137,0.0070059252902865,-0.0709652453660965,0.0638743340969086,-0.0191414207220078,-0.0416507236659527));
res += mul(Get(s2,-dx,-dy), float4x4(0.1249299943447113,-0.0042580775916576,0.0139010269194841,0.0024010883644223,0.0903937295079231,-0.0587153956294060,-0.1614045053720474,-0.0836934968829155,0.2374526262283325,-0.0256559476256371,0.0432412438094616,0.1052998155355453,-0.0568252950906754,-0.0637895762920380,-0.0101373745128512,-0.0765476897358894));
res += mul(Get(s3,-dx,-dy), float4x4(0.0894162207841873,-0.0781841501593590,0.0085810068994761,0.0249414332211018,0.1800019145011902,-0.0804295465350151,-0.0320927277207375,0.1540672332048416,0.1097079813480377,-0.0933195203542709,0.0465606041252613,0.1694703400135040,0.0332260988652706,-0.1023347005248070,0.0397009626030922,0.0960381403565407));
res += mul(Get(s4,-dx,-dy), float4x4(0.1318189501762390,0.0834568217396736,0.0132893361151218,-0.0406346656382084,0.1072593480348587,-0.0269335955381393,0.1541321426630020,-0.0907777324318886,0.2062611281871796,-0.1293175369501114,-0.0256183240562677,-0.0426598303020000,-0.1219314634799957,-0.2549776732921600,-0.1488652378320694,0.0074853594414890));
res += mul(Get(s5,-dx,-dy), float4x4(-0.1291698813438416,-0.0324074141681194,0.0871059745550156,0.0056173643097281,0.1556658297777176,0.0520754307508469,0.0216299090534449,0.2106764018535614,0.0259206183254719,-0.0338905416429043,-0.0547888390719891,-0.0238216631114483,0.0785700827836990,-0.0048267566598952,0.0557301454246044,0.0020627651829273));
res += mul(Get(s0,-dx,0), float4x4(-0.0293550435453653,-0.0463894866406918,0.0514683425426483,-0.1073955148458481,-0.0656042322516441,0.1732198894023895,0.0277710594236851,0.1430773288011551,-0.0100115574896336,0.0416941009461880,0.0916557535529137,-0.1610797792673111,0.0480830743908882,0.0836471915245056,-0.1517787724733353,0.1308707594871521));
res += mul(Get(s1,-dx,0), float4x4(-0.1238078996539116,-0.1770617663860321,-0.0984802246093750,-0.0609523095190525,-0.0142515031620860,0.0943765416741371,0.0182675123214722,0.0916807278990746,-0.2140950113534927,0.0994036942720413,-0.0674852058291435,-0.0044178422540426,0.2392267137765884,-0.0304005686193705,-0.0377434305846691,0.1732451915740967));
res += mul(Get(s2,-dx,0), float4x4(0.1732285916805267,-0.0566319003701210,0.0925995856523514,-0.0464719198644161,-0.1766706407070160,0.2164730429649353,0.0273710694164038,0.1030505448579788,0.0306992009282112,0.0673767700791359,0.0570488162338734,0.0136009762063622,-0.0129799460992217,-0.0481875911355019,-0.0252019204199314,-0.0502381436526775));
res += mul(Get(s3,-dx,0), float4x4(0.0309001412242651,-0.0904506370425224,-0.1160799860954285,0.0276875011622906,-0.1104920655488968,0.1643469631671906,-0.0143930716440082,0.1695425808429718,0.9526532292366028,-0.1919850260019302,-0.5176241993904114,-0.1419049650430679,-0.0157674252986908,-0.1330188810825348,0.0842782557010651,-0.0892827436327934));
res += mul(Get(s4,-dx,0), float4x4(-0.0831470191478729,0.0186566784977913,0.1205374300479889,0.1035127118229866,-0.0153831150382757,-0.0670041590929031,0.0927049741148949,-0.0551172532141209,0.2206148058176041,-0.0458995774388313,-0.0726031735539436,-0.1093632206320763,0.0341702252626419,-0.2468491345643997,-0.0971995368599892,-0.0452248193323612));
res += mul(Get(s5,-dx,0), float4x4(0.0397593863308430,0.0425037331879139,0.1443169116973877,0.0954487547278404,0.0614617355167866,0.1525475680828094,0.0409167259931564,-0.0148353595286608,-0.1120106726884842,-0.0158834420144558,-0.0893002524971962,0.2259892225265503,-0.1110584214329720,-0.0644771680235863,0.1719593554735184,-0.1502349674701691));
res += mul(Get(s0,-dx,dy), float4x4(-0.0982674658298492,-0.0856050252914429,0.0854726582765579,0.0359187796711922,-0.2166836708784103,-0.0935725271701813,-0.0494310222566128,0.2822915911674500,-0.0028849770314991,0.0742120072245598,-0.0227209273725748,0.0673255547881126,0.0653924942016602,-0.0101190246641636,-0.1378440260887146,0.1878565251827240));
res += mul(Get(s1,-dx,dy), float4x4(0.0601867772638798,0.1697113662958145,0.0917165875434875,-0.2590217292308807,0.0146216768771410,0.0918253511190414,0.1880797892808914,-0.0447144880890846,-0.0999505445361137,0.0465088374912739,0.1257936209440231,-0.0139073794707656,0.1325023621320724,0.0334346890449524,-0.0818386673927307,0.0630908757448196));
res += mul(Get(s2,-dx,dy), float4x4(0.1096712350845337,-0.0137234227731824,-0.0728744715452194,0.0371841453015804,-0.1266707926988602,-0.0497200675308704,0.1493697911500931,0.1716229468584061,-0.1218057870864868,0.0484367348253727,0.0459014810621738,0.0767227113246918,0.1046337708830833,-0.0990025103092194,-0.1305273324251175,0.0364252477884293));
res += mul(Get(s3,-dx,dy), float4x4(0.1355120390653610,0.0407274290919304,-0.0765098035335541,-0.0446677356958389,0.0928594842553139,-0.0663916245102882,-0.0284523088485003,0.0149511462077498,0.4725233316421509,-0.1115690842270851,-0.1470692902803421,0.1777431964874268,0.0670063793659210,-0.0955608412623405,-0.0711099579930305,0.1734727323055267));
res += mul(Get(s4,-dx,dy), float4x4(-0.1386618316173553,0.0326070785522461,0.0282159820199013,0.0331675335764885,0.0222565736621618,0.0168525092303753,0.1131847128272057,-0.1276500672101974,0.0276128426194191,0.0126925734803081,0.0029783775098622,-0.3236678540706635,0.0590543262660503,0.0160134788602591,-0.1178651675581932,0.0228516347706318));
res += mul(Get(s5,-dx,dy), float4x4(-0.0512211732566357,-0.1724802702665329,0.1157528609037399,-0.0990602299571037,0.1525747478008270,0.0057172761298716,-0.0091013396158814,-0.2208970338106155,-0.0791651904582977,-0.0416098311543465,-0.0868110209703445,-0.3790772557258606,-0.0172118414193392,-0.0093316556885839,0.1541778147220612,-0.3139296770095825));
res += mul(Get(s0,0,-dy), float4x4(0.4453904628753662,0.1199453100562096,0.0551747605204582,-0.0621042139828205,-0.0705650597810745,0.2048416286706924,-0.1180835291743279,-0.0946302860975266,-0.1086064428091049,-0.0077808084897697,0.0886944308876991,0.0500118397176266,-0.3015665411949158,-0.0845491513609886,-0.0199997052550316,0.0046624047681689));
res += mul(Get(s1,0,-dy), float4x4(0.1343379467725754,-0.1073012948036194,0.0994767323136330,-0.2558729946613312,0.0764311924576759,0.1640089005231857,0.1029808223247528,0.1103954315185547,-0.1398254036903381,-0.2163632065057755,0.2132938057184219,0.0361417010426521,-0.2019224166870117,0.1894040405750275,-0.0208294168114662,-0.0702008605003357));
res += mul(Get(s2,0,-dy), float4x4(-0.2541710734367371,0.1032664924860001,0.1580402553081512,0.0764941722154617,0.0843416005373001,-0.1693706959486008,0.0205721929669380,-0.0765849798917770,-0.1978396028280258,-0.0897873193025589,-0.0758183449506760,0.1585750877857208,-0.0666131228208542,-0.0172878783196211,-0.0286541469395161,-0.0122709609568119));
res += mul(Get(s3,0,-dy), float4x4(-0.1889296621084213,0.0699108690023422,-0.0811383649706841,-0.0431108064949512,0.1414432376623154,-0.1053028628230095,-0.0179584100842476,0.2546765804290771,0.0469518043100834,-0.0820958837866783,0.3999054431915283,-0.0872470363974571,-0.1488960087299347,-0.0372432470321655,0.1305087059736252,-0.0607465878129005));
res += mul(Get(s4,0,-dy), float4x4(0.4005928039550781,0.0752692222595215,-0.0508657097816467,-0.2204287648200989,0.0535647459328175,-0.1907085627317429,-0.0575778335332870,-0.0933632180094719,-0.5480613112449646,0.0676564574241638,0.0573050715029240,-0.0145291052758694,0.0286409575492144,0.0285511910915375,-0.1193308532238007,0.1224353611469269));
res += mul(Get(s5,0,-dy), float4x4(-0.1915708333253860,-0.2145868092775345,-0.0921121463179588,-0.0001567309082020,-0.7182855606079102,0.1742883771657944,-0.0923667773604393,0.1308177858591080,-0.1193262934684753,-0.1187379285693169,0.0582914575934410,0.0402241908013821,-0.1052190288901329,-0.0537411235272884,-0.0816319063305855,0.0769637078046799));
res += mul(Get(s0,0,0), float4x4(0.1303482800722122,0.1383676826953888,0.1724123805761337,-0.1034336835145950,0.1530109196901321,-0.1053834557533264,0.1903208196163177,0.1815295368432999,-0.0329859629273415,0.0850909203290939,0.0655727908015251,0.0780819952487946,-0.1218629851937294,0.0053602866828442,-0.2658108174800873,0.1936956793069839));
res += mul(Get(s1,0,0), float4x4(-0.0570127516984940,-0.0462149232625961,-0.1500756740570068,-0.1554785817861557,-0.0035399410407990,0.0546499341726303,0.0943760350346565,0.1494430005550385,-0.0655182227492332,-0.2338166534900665,0.1111063510179520,-0.1325870901346207,-0.3837134242057800,0.2357665598392487,-0.1305234581232071,-0.1905263513326645));
res += mul(Get(s2,0,0), float4x4(0.1337995082139969,-0.0070955841802061,0.0404433123767376,0.0544286109507084,-0.0981984958052635,0.1333611905574799,-0.0213834922760725,0.0984352901577950,0.1600285619497299,-0.2324296087026596,-0.0410426519811153,-0.3518957197666168,0.2623236477375031,0.1836995482444763,-0.1178199723362923,-0.0807457566261292));
res += mul(Get(s3,0,0), float4x4(-0.1824073046445847,-0.1255813986063004,0.0952934324741364,0.0548029504716396,0.0593106560409069,0.1637808680534363,0.1051362529397011,0.1097072213888168,0.1608916372060776,-0.0333313457667828,-0.4585511386394501,0.0856162905693054,-0.0795912966132164,0.4231271743774414,0.1041162908077240,0.0532392971217632));
res += mul(Get(s4,0,0), float4x4(-0.3635027408599854,0.0531704463064671,0.0706556290388107,0.2769747972488403,0.0953157171607018,0.1474944353103638,-0.0775886401534081,0.0602158121764660,-0.0424785241484642,-0.0742398649454117,-0.1683086454868317,-0.1167917922139168,0.0419869236648083,-0.0241117961704731,-0.2757921516895294,0.0844148099422455));
res += mul(Get(s5,0,0), float4x4(-0.1262346804141998,0.1602527946233749,0.0217274092137814,-0.0346666947007179,-0.1536768972873688,-0.1940909624099731,0.0745583847165108,0.0354217514395714,-0.1240928545594215,-0.0167310051620007,0.0341376028954983,0.2499688863754272,-0.1097856983542442,0.0462016575038433,0.2132358551025391,0.1205834671854973));
res += mul(Get(s0,0,dy), float4x4(-0.3306849300861359,-0.0751751288771629,0.1498798429965973,0.6152635812759399,-0.0463039763271809,-0.0438691601157188,0.1579073816537857,-0.4218001067638397,0.0779487863183022,-0.1085490807890892,0.0783057510852814,0.0561826974153519,0.0837090089917183,-0.1403220444917679,-0.1017863973975182,-0.3384548723697662));
res += mul(Get(s1,0,dy), float4x4(-0.0028891244437546,-0.1400290429592133,-0.0895588248968124,0.0714109912514687,0.0558396615087986,0.0046107084490359,0.0773235708475113,0.0825354084372520,-0.0571847930550575,-0.1393428146839142,-0.1689157634973526,0.0756098553538322,0.1443737000226974,0.0151585033163428,0.2789763808250427,0.1581490337848663));
res += mul(Get(s2,0,dy), float4x4(0.0488099642097950,0.0147653967142105,-0.0587886795401573,-0.4266864955425262,0.1852955371141434,-0.1440482735633850,0.0446503870189190,0.0101389260962605,-0.0800585821270943,-0.0686694383621216,0.0878717973828316,0.0338534414768219,-0.3345742821693420,-0.0002716837334447,-0.1369909942150116,0.4073680043220520));
res += mul(Get(s3,0,dy), float4x4(0.0658786147832870,0.0421792306005955,-0.2099249660968781,-0.2985325157642365,-0.1008458137512207,0.1159600615501404,-0.0411705821752548,0.1403567939996719,-0.0970370545983315,0.2472954690456390,0.2331840544939041,-0.2342331856489182,0.0698408111929893,0.0099898781627417,-0.1662158370018005,-0.3193132579326630));
res += mul(Get(s4,0,dy), float4x4(-0.0018704137764871,0.0584456175565720,-0.0703682824969292,-0.2435285300016403,-0.1301934719085693,0.0470524020493031,-0.0958330184221268,0.0215756502002478,0.0396452881395817,0.0977128893136978,0.0842263922095299,-0.6198027729988098,-0.0977703928947449,0.0957372337579727,-0.1729494333267212,0.2231904715299606));
res += mul(Get(s5,0,dy), float4x4(0.1717270612716675,0.1238130778074265,-0.1187372803688049,0.0985888242721558,-0.0251732878386974,0.0951026380062103,-0.0851259976625443,-0.2046685069799423,0.1407671868801117,0.1095531433820724,-0.0100544821470976,-0.5781623125076294,-0.0080489171668887,0.0963396579027176,-0.0656271949410439,-0.5082005262374878));
res += mul(Get(s0,dx,-dy), float4x4(-0.1527690291404724,-0.0909566804766655,-0.0256405808031559,-0.0585224255919456,0.3006903231143951,-0.1510456800460815,-0.0481066070497036,-0.0060372571460903,-0.0825895518064499,-0.1219204738736153,0.1692825406789780,-0.0570319145917892,-0.0178588069975376,-0.0371551029384136,-0.1790077388286591,0.0123989963904023));
res += mul(Get(s1,dx,-dy), float4x4(0.1133797615766525,0.1061711236834526,0.0026937725488096,0.1223212033510208,-0.0754414200782776,0.0108256516978145,0.0852966606616974,0.0593956261873245,0.1478257179260254,-0.0257608294487000,-0.0285379644483328,-0.0184271931648254,0.0012216618051752,0.0340851433575153,-0.0196964219212532,-0.0215915385633707));
res += mul(Get(s2,dx,-dy), float4x4(0.4284437596797943,0.0093344766646624,0.1507171392440796,-0.0744175016880035,-0.1412428766489029,-0.0015818255487829,-0.0236464515328407,-0.0565460398793221,-0.1564139723777771,0.0771267414093018,-0.0071473163552582,0.0003085673670284,0.0908964127302170,-0.0058769695460796,-0.0198923982679844,0.0089624067768455));
res += mul(Get(s3,dx,-dy), float4x4(0.1277523189783096,0.0994828715920448,0.1526678353548050,-0.0459351725876331,0.0383531823754311,0.0130821159109473,0.1350565701723099,0.1026766225695610,-0.0351652614772320,0.1930687129497528,0.0107726557180285,-0.0242384523153305,-0.0549173653125763,0.0681954994797707,0.0816539004445076,0.0505849644541740));
res += mul(Get(s4,dx,-dy), float4x4(0.1007520705461502,-0.1134542673826218,0.0630228221416473,-0.0285446550697088,0.0236299037933350,0.0542709268629551,-0.1172181144356728,0.0305754430592060,-0.0507508777081966,-0.0317993052303791,0.0657655298709869,0.0100372349843383,-0.1847452074289322,-0.1135307848453522,-0.1679288744926453,0.1956075578927994));
res += mul(Get(s5,dx,-dy), float4x4(-0.0785076171159744,0.1704488694667816,-0.0242428481578827,0.0318645238876343,-0.0161169208586216,0.0211458355188370,0.0712302848696709,-0.0475621968507767,-0.0704493001103401,0.0023792274296284,-0.0408194921910763,-0.0004819166788366,-0.1936220824718475,0.0989159494638443,-0.0418420881032944,0.0724574550986290));
res += mul(Get(s0,dx,0), float4x4(-0.1765042692422867,-0.1430080682039261,0.0440815947949886,-0.0254908073693514,0.0838521122932434,0.1044319719076157,0.0436224117875099,0.0793904811143875,0.0443769581615925,-0.0204121284186840,0.0724579170346260,0.0523451007902622,-0.0669296458363533,0.1417855620384216,0.0049783894792199,-0.0377204157412052));
res += mul(Get(s1,dx,0), float4x4(0.0315055288374424,0.0070376168005168,0.0535731092095375,0.0403081998229027,-0.0797114223241806,0.0601072721183300,-0.0004291072837077,0.0621301941573620,-0.0076041501015425,0.0163585618138313,0.0258293580263853,0.1416425853967667,0.0531076416373253,0.0045802579261363,0.0529302395880222,0.1035893112421036));
res += mul(Get(s2,dx,0), float4x4(-0.5294308662414551,0.3951377272605896,0.2663716077804565,-0.5556412935256958,0.1079428568482399,-0.1118860468268394,-0.1948073059320450,0.0153367072343826,0.0059043201617897,-0.0736681371927261,0.0279253218322992,-0.0448249429464340,-0.0703233256936073,0.1037720888853073,-0.0791246369481087,-0.0532488599419594));
res += mul(Get(s3,dx,0), float4x4(0.1051765829324722,-0.0729532763361931,-0.0141860563308001,0.3331350982189178,-0.3011714220046997,0.0382246263325214,0.2127802371978760,-0.0270387083292007,0.0941489264369011,0.2135975956916809,-0.1958120614290237,0.1285480260848999,0.0535793490707874,-0.0085215074941516,-0.2286009341478348,0.0219278987497091));
res += mul(Get(s4,dx,0), float4x4(0.0198856797069311,0.0656812861561775,0.0709527730941772,-0.0190732460469007,-0.1221356987953186,-0.0890836343169212,0.0900807902216911,0.0199593808501959,0.0261664036661386,-0.0579097531735897,-0.0035483634565026,-0.0443733818829060,-0.0772559791803360,0.1186992451548576,-0.1572078019380569,0.1168853715062141));
res += mul(Get(s5,dx,0), float4x4(0.1592226624488831,-0.0065252133645117,0.0754417702555656,-0.0624111033976078,-0.1342034786939621,-0.1306094229221344,0.2727233767509460,-0.0718578398227692,0.0169356819242239,-0.0197482630610466,-0.1619902551174164,0.0485468879342079,-0.0299938768148422,-0.0665642023086548,0.0075967237353325,0.3001012802124023));
res += mul(Get(s0,dx,dy), float4x4(-0.2793603539466858,-0.0020434071775526,-0.0374689884483814,-0.2556318044662476,-0.0802444890141487,0.0549589321017265,0.1319226771593094,0.1346500813961029,0.0286734607070684,-0.0549518540501595,0.1176430657505989,0.3466506302356720,0.0869743004441261,0.0483131669461727,-0.0562551915645599,0.1640359312295914));
res += mul(Get(s1,dx,dy), float4x4(0.1250881552696228,0.0866610631346703,0.0259943231940269,-0.1044648438692093,-0.0223579425364733,0.0505100712180138,-0.1122555136680603,0.0517113357782364,-0.0696082115173340,-0.1233205050230026,0.0852722376585007,0.1773976534605026,-0.0130539406090975,-0.1282784193754196,0.0476115718483925,-0.3450984954833984));
res += mul(Get(s2,dx,dy), float4x4(0.0722431391477585,-0.1285846531391144,-0.1723660230636597,-0.1598259359598160,0.0471826605498791,-0.0422086492180824,0.1514913737773895,-0.0003757441882044,0.0064028990454972,-0.0872622430324554,0.0502427071332932,-0.3965564966201782,-0.0266775954514742,0.0280882865190506,-0.0442816913127899,0.1933247894048691));
res += mul(Get(s3,dx,dy), float4x4(-0.1245405972003937,-0.0634418949484825,-0.0423382744193077,0.0900322347879410,-0.1175423935055733,-0.0851281806826591,-0.0725577175617218,-0.1800642013549805,-0.1722780168056488,-0.1313810944557190,0.2909848392009735,0.0189398322254419,0.0556222014129162,-0.0130565436556935,0.0768907442688942,0.0165480822324753));
res += mul(Get(s4,dx,dy), float4x4(-0.0457369424402714,0.0347099266946316,-0.1148911863565445,-0.0628732889890671,-0.0615625418722630,0.0446974262595177,0.0878325104713440,0.1923689246177673,0.0077037857845426,0.0796210169792175,-0.0884110182523727,-0.2720505893230438,-0.0811453759670258,0.0414416603744030,-0.0357051454484463,0.0203830357640982));
res += mul(Get(s5,dx,dy), float4x4(0.0104895848780870,0.0292266141623259,0.0695827305316925,-0.0680635496973991,0.0190260279923677,-0.0217275563627481,-0.0034734301734716,-0.0808641090989113,-0.0413145609200001,0.0816866084933281,-0.0347280614078045,-0.0334371030330658,-0.0116898287087679,0.0899241045117378,-0.2364709228277206,-0.4446744620800018));
res = max(float4(0, 0, 0, 0), res) + float4(-0.0258860029280186,0.7643848657608032,0.7653220891952515,-0.0229349583387375) * min(float4(0, 0, 0, 0), res);
return res;
}