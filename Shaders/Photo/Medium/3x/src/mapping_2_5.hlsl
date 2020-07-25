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
float4 res = float4(0.0565929450094700,-0.0146352313458920,0.0419751517474651,0.0255619473755360);
res += mul(Get(s0,-dx,-dy), float4x4(-0.1189291477203369,0.0615130290389061,-0.0679359585046768,0.0908286496996880,-0.0748592466115952,0.1341438442468643,-0.0597405247390270,0.0493150763213634,-0.0419602468609810,-0.0037316654343158,0.1100212335586548,-0.0404214523732662,0.1079305186867714,0.0611002109944820,0.1358777582645416,-0.0251399539411068));
res += mul(Get(s1,-dx,-dy), float4x4(0.0026475745253265,0.0556875951588154,-0.0151737229898572,0.0091641582548618,-0.0629347786307335,-0.1496464312076569,-0.0533328615128994,-0.1061088368296623,-0.0885265618562698,0.2200646698474884,-0.0301852412521839,0.0538167208433151,0.0539483316242695,-0.0878317058086395,0.0320719890296459,0.0843346044421196));
res += mul(Get(s2,-dx,-dy), float4x4(-0.0430173538625240,0.0298313740640879,-0.2079860419034958,0.0974011048674583,0.1638208478689194,-0.1407528817653656,0.1274071782827377,0.0725367590785027,0.0412230379879475,0.0210676137357950,0.0759038329124451,-0.0709481164813042,0.0015958085423335,0.1154795065522194,0.0325749330222607,0.1303426474332809));
res += mul(Get(s3,-dx,-dy), float4x4(-0.1413384079933167,0.0572640188038349,-0.0026675544213504,-0.0091475471854210,-0.0634976476430893,-0.0103783197700977,-0.0024998383596539,-0.0438007749617100,0.0228049829602242,-0.2701265811920166,-0.0931823179125786,0.1557253450155258,0.0254340991377831,-0.0313794203102589,-0.0097954208031297,0.0395010448992252));
res += mul(Get(s4,-dx,-dy), float4x4(-0.1265661418437958,0.1805546581745148,-0.0908104255795479,0.0095541691407561,-0.0157898645848036,-0.1293409615755081,0.0318865105509758,0.1238249763846397,-0.0168485250324011,-0.0221987999975681,0.0861146822571754,0.0453858114778996,0.0052343895658851,-0.1718085408210754,-0.0610795132815838,0.0082727726548910));
res += mul(Get(s5,-dx,-dy), float4x4(-0.0153433354571462,-0.0133102545514703,-0.0298673026263714,0.1910716891288757,-0.1830072999000549,0.0221620649099350,-0.0052768909372389,0.0517006032168865,0.0047156354412436,-0.1314413398504257,0.0412744358181953,-0.3073491156101227,0.0898889899253845,0.0508741103112698,0.0665478184819221,-0.1425061821937561));
res += mul(Get(s0,-dx,0), float4x4(0.0840250179171562,0.0819403603672981,0.0226330347359180,0.0859274044632912,0.1998337954282761,-0.0944013744592667,0.1326423287391663,-0.1819488555192947,0.0921961665153503,0.1040699779987335,0.0943738892674446,-0.1072850227355957,-0.0679779201745987,-0.1445657610893250,0.0566491894423962,-0.1245339959859848));
res += mul(Get(s1,-dx,0), float4x4(0.0112110022455454,0.0309661142528057,0.0689145848155022,0.0647375658154488,0.0612861365079880,-0.2026926875114441,0.0182778425514698,0.2020146995782852,0.0523532852530479,-0.6429924964904785,0.0830777883529663,0.2196422517299652,-0.0895313620567322,0.0044290102086961,0.0992563143372536,0.0467542596161366));
res += mul(Get(s2,-dx,0), float4x4(0.0119518190622330,-0.4078194200992584,-0.0871850475668907,-0.1399505883455276,-0.2920947372913361,0.1577787250280380,0.0060432325117290,-0.1244545057415962,-0.0562649108469486,0.1977989822626114,0.0267857685685158,-0.0404364317655563,-0.1811459958553314,-0.1957703977823257,0.0799564421176910,0.1377198398113251));
res += mul(Get(s3,-dx,0), float4x4(0.0756635591387749,-0.0837791040539742,0.1328344345092773,-0.2109915018081665,0.0528334937989712,-0.0604111142456532,0.0343246906995773,-0.0003424349706620,0.1659694015979767,-0.2086936980485916,-0.0410061441361904,-0.2851048409938812,0.0264478381723166,0.0427609123289585,-0.0834855213761330,-0.0354212597012520));
res += mul(Get(s4,-dx,0), float4x4(-0.1382323801517487,0.1749617755413055,0.0103593282401562,0.1227782368659973,-0.0655305832624435,0.2837777733802795,0.1692302376031876,0.1506705433130264,0.0017457839567214,0.1445825099945068,-0.0779096260666847,-0.1419330388307571,0.0693454295396805,-0.0156473144888878,0.0691369399428368,-0.1432790160179138));
res += mul(Get(s5,-dx,0), float4x4(-0.0050644706934690,0.1125567257404327,0.0006873526726849,0.1683415323495865,-0.0629659444093704,-0.2204184532165527,-0.0980555787682533,-0.0060054268687963,-0.0534414164721966,-0.1127694994211197,-0.0940927267074585,-0.2340506017208099,-0.1326097249984741,-0.1688623726367950,-0.1702070683240891,0.0239084288477898));
res += mul(Get(s0,-dx,dy), float4x4(-0.0149233350530267,0.0204231645911932,0.0022660186514258,0.1026415973901749,-0.1737423539161682,-0.0273133087903261,-0.1593616455793381,0.1183308809995651,0.1148057579994202,-0.1360415816307068,0.0843429565429688,0.1270271688699722,-0.0384540595114231,0.0186104867607355,0.1584789752960205,-0.3203420639038086));
res += mul(Get(s1,-dx,dy), float4x4(-0.0041364915668964,-0.0413412824273109,-0.0936896130442619,0.1029502451419830,-0.0268854387104511,0.1275911033153534,0.0247483346611261,0.0585613213479519,-0.1571545302867889,0.1842309534549713,0.0376130342483521,0.0596534945070744,-0.1629192680120468,-0.1141198053956032,0.0242045056074858,0.0052978396415710));
res += mul(Get(s2,-dx,dy), float4x4(-0.0719991475343704,0.1181877627968788,0.0233678296208382,0.1712761968374252,0.1093761920928955,-0.1277034431695938,-0.0256093367934227,-0.1222878322005272,-0.0586611814796925,-0.0128994593396783,0.0834844708442688,0.0110341692343354,0.1282637864351273,0.0200703907757998,-0.1751459985971451,-0.3245150744915009));
res += mul(Get(s3,-dx,dy), float4x4(-0.0726077258586884,0.0577776990830898,-0.1191513240337372,-0.0928533449769020,0.0124954748898745,0.1441625505685806,-0.0368584617972374,-0.0475933291018009,0.1318265497684479,-0.0816160291433334,-0.0741144120693207,-0.0578188709914684,-0.0274423491209745,-0.0248402189463377,0.0443657860159874,0.0461935847997665));
res += mul(Get(s4,-dx,dy), float4x4(0.0224822722375393,0.1625113189220428,0.0475784167647362,0.0312220714986324,-0.0993274748325348,0.0482524894177914,-0.0630991682410240,-0.0385420583188534,0.0960479080677032,0.0228494163602591,-0.0542644374072552,0.0054912003688514,-0.0247436258941889,0.0758577212691307,-0.0538447089493275,0.0110998116433620));
res += mul(Get(s5,-dx,dy), float4x4(-0.1290318518877029,-0.0325505025684834,0.0444195568561554,-0.0716574117541313,0.1472288221120834,0.0079885572195053,-0.0389892682433128,-0.1992477923631668,-0.0119280209764838,-0.0574234351515770,-0.1165414750576019,-0.1496684998273849,0.0538122132420540,-0.0979330092668533,-0.0200467761605978,-0.0099037196487188));
res += mul(Get(s0,0,-dy), float4x4(-0.0518123470246792,0.2977583706378937,0.0151263466104865,0.0015006471658126,0.0586161948740482,-0.1312904804944992,0.0561283826828003,0.0121173523366451,-0.0912666469812393,-0.1563867032527924,0.1677499115467072,-0.0573085434734821,-0.0446957722306252,-0.0078203566372395,0.0974354147911072,0.1720137000083923));
res += mul(Get(s1,0,-dy), float4x4(-0.0144792739301920,0.1909330934286118,-0.1057570055127144,-0.0343287661671638,-0.0368187315762043,0.2463667094707489,-0.3686651587486267,0.0679053887724876,-0.0858864486217499,-0.0133213475346565,0.1706285774707794,0.3494373559951782,0.0083860615268350,0.1274234056472778,-0.0079312408342957,-0.2380492240190506));
res += mul(Get(s2,0,-dy), float4x4(-0.1978427022695541,-0.0481650121510029,-0.0057716816663742,0.0652403905987740,0.0895318388938904,0.0150119392201304,0.0675539150834084,-0.0657225772738457,0.0336255207657814,0.0906952470541000,0.1205890923738480,-0.0630453228950500,-0.0271147936582565,-0.1766098439693451,-0.1482846885919571,0.0177780967205763));
res += mul(Get(s3,0,-dy), float4x4(0.0447257012128830,-0.0222987979650497,0.1422840356826782,0.1606043279170990,0.0100272633135319,0.0436176024377346,-0.0081046326085925,-0.1700039952993393,-0.0366818346083164,0.1700934767723083,-0.0292166694998741,-0.0437772236764431,0.0539426580071449,0.0143800089135766,0.0451460480690002,0.0250759031623602));
res += mul(Get(s4,0,-dy), float4x4(-0.0798833742737770,0.0724395141005516,-0.0113795604556799,-0.0511569790542126,-0.0261678751558065,0.0890510752797127,-0.1225762814283371,0.0059628454037011,0.1034512147307396,0.2155031114816666,0.2052006870508194,-0.2522671520709991,0.0753153711557388,0.0605661608278751,0.0163995698094368,-0.1241031587123871));
res += mul(Get(s5,0,-dy), float4x4(-0.1183122545480728,0.1031003817915916,-0.1859228014945984,0.0167783312499523,0.0029667431954294,0.0146875092759728,-0.1135502234101295,-0.2223720550537109,0.1501422524452209,-0.3308290839195251,0.0228452570736408,-0.0908625423908234,-0.0119726024568081,0.0263824351131916,0.0848244577646255,-0.0541918948292732));
res += mul(Get(s0,0,0), float4x4(0.1226984858512878,-0.0972025617957115,0.0924829542636871,0.2388174980878830,-0.3158295750617981,0.0079101780429482,-0.0765409544110298,-0.1297031939029694,0.1656259745359421,0.0533555224537849,-0.0913582295179367,-0.2438420802354813,-0.1937137842178345,0.4699672162532806,-0.4330741167068481,0.4119515419006348));
res += mul(Get(s1,0,0), float4x4(0.1209754645824432,0.1848018318414688,-0.0634019896388054,-0.2725251019001007,0.5269956588745117,-0.0413760095834732,0.1682250946760178,-0.4225003719329834,0.2960982918739319,0.3175638616085052,0.0806353464722633,-0.4655234813690186,0.0420828387141228,-0.0624074414372444,0.1601780802011490,0.1286026239395142));
res += mul(Get(s2,0,0), float4x4(0.8648849725723267,-0.1538938581943512,-0.0424033440649509,-0.2816716432571411,-0.5399951934814453,-0.0322535112500191,-0.2163131833076477,0.1613946408033371,-0.2728032171726227,-0.0929657667875290,-0.0690924599766731,0.2608407437801361,0.0115464106202126,0.1590342968702316,0.1779371649026871,-0.2300973236560822));
res += mul(Get(s3,0,0), float4x4(-0.1170237660408020,0.1130429506301880,0.3624606430530548,-0.1327881515026093,-0.0760471150279045,-0.2188728451728821,-0.0207223314791918,0.1131385937333107,0.0921472311019897,-0.4244805574417114,-0.2469030767679214,-0.2647774815559387,0.0160600170493126,-0.0355982556939125,-0.0002999526623171,-0.1860651373863220));
res += mul(Get(s4,0,0), float4x4(-0.2681885957717896,0.2640988528728485,0.0803808420896530,-0.3138915300369263,-0.1028471589088440,-0.0058642588555813,0.0515558160841465,0.2018653750419617,0.2428893595933914,-0.3416810631752014,-0.0793639123439789,0.2304129749536514,0.2078858464956284,-0.2596068978309631,0.2368939071893692,0.0331034623086452));
res += mul(Get(s5,0,0), float4x4(0.7002844214439392,-0.2040833234786987,0.2615202963352203,-0.3450198173522949,0.2971358001232147,-0.0960899218916893,0.0403510965406895,0.0684936866164207,-0.0678806230425835,-0.0633591189980507,-0.1075285002589226,0.2229100763797760,0.1101442277431488,-0.2153675854206085,0.2398837059736252,0.2290774881839752));
res += mul(Get(s0,0,dy), float4x4(-0.0497166924178600,0.1199832782149315,-0.0383086837828159,0.0167439151555300,-0.0105007719248533,0.0652484521269798,-0.0830533280968666,-0.0385548286139965,0.2184014171361923,0.2180532664060593,0.1859581619501114,0.0878499671816826,0.1151050031185150,-0.1196688264608383,0.0927922651171684,0.1359610408544540));
res += mul(Get(s1,0,dy), float4x4(0.0743746832013130,0.0920758470892906,0.1407858580350876,0.1751019656658173,-0.3696556091308594,0.0135690355673432,0.0517196692526340,-0.1122163087129593,-0.1138306111097336,-0.1459142416715622,0.0047183763235807,0.0611822381615639,0.1818260848522186,-0.1734604239463806,-0.2876675426959991,0.2372431010007858));
res += mul(Get(s2,0,dy), float4x4(-0.6760865449905396,0.0082419933751225,0.0111736916005611,-0.0264057386666536,0.3630679249763489,-0.1901356875896454,-0.0069038220681250,0.1678887605667114,0.1217510923743248,-0.0598112680017948,-0.0941373705863953,-0.0397744812071323,0.1003500074148178,0.0048490809276700,0.0771319419145584,0.0932823941111565));
res += mul(Get(s3,0,dy), float4x4(-0.0191150624305010,-0.1002530306577682,-0.0245451722294092,0.1445091217756271,-0.0740543678402901,-0.0641672909259796,-0.1528545171022415,0.1548821628093719,-0.1552908718585968,-0.1939165294170380,-0.0870553031563759,0.0595506019890308,-0.0102958800271153,-0.0217711031436920,0.1446555554866791,-0.1470257192850113));
res += mul(Get(s4,0,dy), float4x4(-0.0962533727288246,0.2399229556322098,-0.0671299621462822,-0.0001369219971821,0.0474418811500072,0.1187767982482910,-0.0361120365560055,-0.1110871806740761,-0.2507368922233582,-0.0259871892631054,-0.0143788019195199,-0.2140789031982422,-0.0971050411462784,0.0576243251562119,-0.0420874692499638,-0.0964369624853134));
res += mul(Get(s5,0,dy), float4x4(-0.1093012988567352,0.0434581004083157,0.0187390930950642,-0.1719275265932083,-0.0279391705989838,0.0696521848440170,0.0276091694831848,0.0567426681518555,0.1416934132575989,-0.0621461682021618,0.0213857982307673,-0.0507449135184288,-0.1658689379692078,-0.0193936377763748,0.0099713737145066,0.0191444326192141));
res += mul(Get(s0,dx,-dy), float4x4(-0.0572995133697987,-0.0433068312704563,-0.0388928689062595,-0.0938375219702721,0.0654715970158577,0.0526251010596752,-0.0173894949257374,0.0856599211692810,0.0393569655716419,0.0314401462674141,0.0884310081601143,0.1132637038826942,0.0303644035011530,0.0418642684817314,-0.0238021649420261,0.0815993398427963));
res += mul(Get(s1,dx,-dy), float4x4(-0.0278515424579382,-0.0535496063530445,-0.0614416040480137,0.1652830243110657,0.1400912702083588,-0.0656072795391083,-0.1224999353289604,0.0536778680980206,0.2721196413040161,-0.3392470180988312,-0.1342782974243164,-0.3017737567424774,-0.0222440790385008,0.0502125509083271,0.0334497839212418,0.0438346117734909));
res += mul(Get(s2,dx,-dy), float4x4(0.0139738461002707,0.1568410247564316,0.0058467681519687,0.0470165908336639,-0.0460363142192364,-0.0856686830520630,0.0503118410706520,-0.0149846728891134,-0.1941954493522644,-0.1270044744014740,0.0238114092499018,0.0851809978485107,0.0977471843361855,0.0924390554428101,-0.1318011730909348,-0.0517540313303471));
res += mul(Get(s3,dx,-dy), float4x4(0.0029373578727245,0.1524660885334015,-0.0773333832621574,-0.1963470131158829,0.1590970009565353,0.2958150506019592,0.0385891608893871,-0.1942225992679596,-0.0796518474817276,-0.4521338641643524,-0.0488164126873016,0.1802426427602768,-0.2532947361469269,-0.0832744911313057,0.1082083657383919,-0.1288384497165680));
res += mul(Get(s4,dx,-dy), float4x4(-0.0588037073612213,0.1748315393924713,0.0025312863290310,0.1070247739553452,0.0910333767533302,-0.0508280619978905,-0.0163564980030060,-0.0153365414589643,-0.1419822424650192,-0.1612631231546402,-0.0206473004072905,0.0940953940153122,0.1686359047889709,-0.0502422712743282,0.0967685803771019,-0.1059578210115433));
res += mul(Get(s5,dx,-dy), float4x4(-0.0872654393315315,0.0472959950566292,-0.0970239043235779,-0.2019373625516891,-0.0818410664796829,0.1074035763740540,0.1313983500003815,0.0407805517315865,0.0777484476566315,0.1647484600543976,0.1734178960323334,-0.0835793539881706,-0.0965689271688461,0.2798618674278259,0.0364181734621525,-0.0954430028796196));
res += mul(Get(s0,dx,0), float4x4(-0.0968075171113014,0.1735090315341949,-0.1313938945531845,-0.0195142999291420,-0.0667989552021027,-0.0891548544168472,-0.0058272895403206,0.0209592022001743,0.0682680234313011,0.2017443329095840,-0.0443146638572216,0.0837784260511398,-0.0121557433158159,-0.1162781864404678,0.2238880395889282,-0.0710643455386162));
res += mul(Get(s1,dx,0), float4x4(-0.2627533674240112,0.1677854508161545,0.0720894113183022,0.1050938740372658,-0.2509760260581970,0.2709410488605499,0.1390010267496109,-0.0156954377889633,-0.4637010991573334,0.0594034194946289,0.1675148159265518,0.0572729483246803,-0.0402182266116142,0.1540539711713791,0.1077481135725975,0.0727540999650955));
res += mul(Get(s2,dx,0), float4x4(0.2222782820463181,-0.0799112468957901,-0.0793669521808624,-0.0004701306170318,-0.1042095422744751,-0.0507184714078903,0.0602615736424923,-0.0279910136014223,0.3123627603054047,0.2169077247381210,-0.0004744088801090,0.0075090997852385,0.1993943005800247,-0.1948438882827759,0.1311240643262863,0.0551837421953678));
res += mul(Get(s3,dx,0), float4x4(0.0145617527887225,-0.0205802023410797,-0.1262104809284210,0.0038544472772628,-0.1924093812704086,0.0338903479278088,-0.0530737824738026,0.0656936019659042,-0.0214556362479925,-0.0749376714229584,-0.1513835936784744,0.0715343207120895,0.1060074642300606,0.2838880419731140,0.0092827659100294,-0.2765691578388214));
res += mul(Get(s4,dx,0), float4x4(0.0079879835247993,0.2174722403287888,-0.1763412803411484,0.2238994538784027,-0.1417988836765289,0.1536747217178345,0.0607743151485920,0.0350053049623966,0.0851633250713348,0.1569615006446838,-0.1694325506687164,0.1560563296079636,-0.2214305698871613,0.0759612768888474,-0.0242427252233028,-0.1639773845672607));
res += mul(Get(s5,dx,0), float4x4(-0.0662582814693451,-0.1355956643819809,-0.0214702840894461,0.0601733289659023,0.1434196680784225,0.2410655170679092,0.0306823588907719,0.0416168496012688,0.1769176274538040,-0.1626572608947754,0.1358785182237625,-0.0004607351729646,0.1479456126689911,0.0375610925257206,-0.1353401392698288,0.1065186634659767));
res += mul(Get(s0,dx,dy), float4x4(-0.0079664504155517,0.0505128912627697,0.0200535412877798,-0.0157933738082647,0.0478956513106823,-0.0504300780594349,0.1395505666732788,0.1297593414783478,0.0134941404685378,0.1085395589470863,-0.0301732812076807,0.2993407547473907,0.1066362485289574,-0.0768045112490654,0.0272905528545380,-0.0211288630962372));
res += mul(Get(s1,dx,dy), float4x4(0.0518223457038403,0.0987552627921104,-0.0078101870603859,-0.0859030336141586,0.0152644421905279,-0.0313104763627052,0.0700093582272530,0.1523008346557617,-0.0042153438553214,0.0254323240369558,-0.0777725204825401,0.1400184929370880,-0.1073620319366455,-0.0123092085123062,-0.0342661738395691,0.0501704774796963));
res += mul(Get(s2,dx,dy), float4x4(-0.2368308305740356,-0.0976198315620422,0.0121891852468252,0.1228235512971878,0.1289822161197662,0.0414329282939434,0.1601056754589081,0.0792489424347878,-0.0581884011626244,0.0945828258991241,-0.1513680964708328,-0.0925040319561958,-0.5034046173095703,0.0140891401097178,-0.0314591042697430,-0.5976557731628418));
res += mul(Get(s3,dx,dy), float4x4(0.0055553214624524,-0.1060386598110199,0.0539706163108349,0.0071724127046764,-0.0167225319892168,-0.1965339183807373,0.0086576761677861,0.0037104862276465,0.0105886980891228,-0.1022180691361427,-0.0000624689419055,0.1320723444223404,0.0172242689877748,-0.0554771088063717,-0.0986748188734055,-0.3674380779266357));
res += mul(Get(s4,dx,dy), float4x4(-0.3288932740688324,0.0934382230043411,-0.0790824666619301,0.1099293529987335,0.0489595718681812,0.0570393502712250,-0.0555620901286602,-0.0815781876444817,-0.2202849090099335,-0.0234175454825163,-0.0439589023590088,0.1120086684823036,0.0325951501727104,-0.0398928448557854,-0.0030896011739969,0.0764282047748566));
res += mul(Get(s5,dx,dy), float4x4(-0.0904065892100334,0.1669230014085770,-0.0073096007108688,0.0679074525833130,-0.2747864127159119,-0.0786255300045013,-0.0264715626835823,0.0383461751043797,0.0507580041885376,-0.1214815825223923,0.1021380499005318,0.1842333078384399,0.1405280828475952,0.0443603917956352,0.0053803408518434,0.0047300155274570));
res = max(float4(0, 0, 0, 0), res) + float4(-0.2468657642602921,-0.1879049688577652,0.9638314247131348,0.1029532030224800) * min(float4(0, 0, 0, 0), res);
return res;
}