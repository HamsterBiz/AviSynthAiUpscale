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
float4 res = float4(-0.0563292950391769,0.1275495886802673,-0.0410041958093643,-0.0358403064310551);
res += mul(Get(s0,-dx,-dy), float4x4(0.0526764132082462,0.0595757886767387,0.0305383112281561,-0.0559624023735523,-0.1243748366832733,0.0987440571188927,-0.1242437288165092,0.0287993978708982,0.1620258092880249,-0.0626246333122253,-0.0128073953092098,-0.1637444645166397,-0.1420313268899918,-0.0477202422916889,-0.0533212125301361,0.0097467098385096));
res += mul(Get(s1,-dx,-dy), float4x4(0.2276224046945572,-0.1365920454263687,-0.1056875139474869,0.1660808175802231,0.2392653524875641,0.0708262771368027,-0.0126562351360917,-0.0641430616378784,-0.0026894079055637,0.0107741197571158,0.0117209106683731,-0.1127260997891426,-0.1091718077659607,-0.1404645144939423,-0.0119335595518351,0.0179767627269030));
res += mul(Get(s2,-dx,-dy), float4x4(-0.5318529605865479,-0.1009346023201942,0.1611180603504181,-0.0286648143082857,0.1659502536058426,0.0842600539326668,0.1076608598232269,-0.0914385244250298,0.0477466881275177,0.0675901398062706,-0.0646444708108902,-0.0735172852873802,-0.0351160839200020,0.0841159597039223,-0.3025509417057037,0.0704502537846565));
res += mul(Get(s3,-dx,-dy), float4x4(-0.3136461675167084,0.0434455946087837,0.1594218313694000,-0.0849956572055817,0.0076417555101216,0.0489740967750549,0.0786348283290863,-0.0727823823690414,0.0090908091515303,-0.0993442237377167,-0.1044971644878387,-0.0036946707405150,0.1108291521668434,-0.0859183147549629,0.0967114716768265,0.0381896533071995));
res += mul(Get(s4,-dx,-dy), float4x4(0.1424892395734787,-0.0486260652542114,-0.0122539103031158,-0.0011127733159810,0.0919784680008888,0.0338287875056267,0.0308980122208595,-0.0100837526842952,0.3145000040531158,0.2199516445398331,-0.1314924657344818,0.1069603115320206,-0.0009326791623607,-0.0280685648322105,0.0926983803510666,-0.0052365874871612));
res += mul(Get(s5,-dx,-dy), float4x4(-0.2964165508747101,0.0019196732901037,0.0604565329849720,0.0435255281627178,-0.5736174583435059,-0.0394992567598820,-0.1255142688751221,0.1337600797414780,-0.1231237053871155,0.0856246873736382,0.0049204290844500,-0.0853353887796402,-0.0996183529496193,-0.0418775416910648,0.1884856671094894,-0.0893236622214317));
res += mul(Get(s0,-dx,0), float4x4(-0.0362135581672192,-0.0379405654966831,-0.2667673826217651,-0.0339176915585995,-0.2153920680284500,-0.0242517702281475,0.0250311475247145,-0.0874715074896812,-0.0299515910446644,-0.1467794924974442,0.0921994075179100,-0.1836029738187790,-0.8138695955276489,-0.1335505694150925,-0.1326934993267059,0.1083360314369202));
res += mul(Get(s1,-dx,0), float4x4(-0.1321307122707367,0.1064463108778000,0.1618895232677460,-0.0900613367557526,-0.4507678747177124,-0.1860543787479401,0.0519656501710415,-0.1119941174983978,0.1721769720315933,0.2170326411724091,-0.0087908376008272,-0.2092542350292206,-0.2403486669063568,-0.1375297307968140,0.0448010116815567,0.0047291908413172));
res += mul(Get(s2,-dx,0), float4x4(0.0140557689592242,-0.2402397394180298,-0.2381367236375809,0.0260840505361557,0.0027669142000377,-0.1926436573266983,-0.2372786402702332,0.1586688309907913,-0.0713079720735550,-0.0025079937186092,-0.0729849413037300,0.0902421101927757,-0.7815207839012146,-0.1457344293594360,0.1332044005393982,0.0472028702497482));
res += mul(Get(s3,-dx,0), float4x4(0.2913109064102173,0.1382596790790558,0.0244976524263620,0.0570208914577961,0.2705432474613190,0.1026488542556763,0.0089791556820273,-0.0015083950711414,0.1496839672327042,-0.0774024128913879,-0.0311957504600286,-0.0755462870001793,0.3515961170196533,-0.0799207463860512,0.2252016514539719,0.0662701725959778));
res += mul(Get(s4,-dx,0), float4x4(-0.2833384871482849,-0.0981494784355164,-0.2110377699136734,-0.1069521754980087,-0.1525253504514694,-0.0222069285809994,0.1933140754699707,0.0324378870427608,-0.5018357634544373,0.2374859005212784,0.0797990560531616,-0.1315793991088867,0.5460662245750427,-0.0124013721942902,0.0262772645801306,0.2277198880910873));
res += mul(Get(s5,-dx,0), float4x4(0.6351597905158997,-0.0890016779303551,0.0115161798894405,-0.1797606796026230,0.0387504510581493,0.2514225840568542,-0.0894927233457565,0.0690615847706795,0.0311487969011068,-0.0308952964842319,-0.0185662843286991,-0.1630611866712570,-0.1451436877250671,-0.0064446921460330,-0.1377643644809723,-0.1196939721703529));
res += mul(Get(s0,-dx,dy), float4x4(-0.1049282997846603,0.1385653018951416,0.0143824368715286,-0.0784480422735214,-0.1655782312154770,-0.1076953113079071,-0.0872383564710617,0.1433461308479309,-0.8788892030715942,-0.3311918973922729,0.1583207547664642,0.0990913510322571,0.0184789560735226,-0.0132458396255970,-0.0795258283615112,0.0357223004102707));
res += mul(Get(s1,-dx,dy), float4x4(0.0686402469873428,0.0438175611197948,0.0113316616043448,-0.0075046196579933,0.1695025116205215,0.0587157122790813,-0.0657003745436668,0.1034730076789856,-0.2868196964263916,0.0403172485530376,-0.1254426240921021,-0.2047717720270157,-0.0316419973969460,-0.1224079132080078,0.0205184705555439,0.0151820629835129));
res += mul(Get(s2,-dx,dy), float4x4(0.0254952386021614,0.1153989061713219,0.2108396142721176,-0.0183692704886198,-0.1162218749523163,0.1528588682413101,0.2916797697544098,-0.1433804631233215,-0.2333592921495438,-0.0136686731129885,-0.1111299172043800,0.1726731359958649,0.0555116795003414,-0.1295635998249054,-0.0469089671969414,-0.1151489764451981));
res += mul(Get(s3,-dx,dy), float4x4(0.6302059292793274,0.0870026424527168,-0.0001479221537011,-0.0557117983698845,0.3048790693283081,0.1178012043237686,0.0873138234019279,0.0415562689304352,0.6216121315956116,0.0595834776759148,-0.0984792411327362,-0.0131799317896366,0.0189536381512880,-0.0327844694256783,0.0716341659426689,-0.0072239232249558));
res += mul(Get(s4,-dx,dy), float4x4(-0.2815234065055847,-0.0994500145316124,0.0467887967824936,-0.0644193217158318,0.2953618764877319,0.0970266684889793,0.3793723583221436,0.0706758275628090,-0.2641006410121918,-0.0850146263837814,-0.1394684165716171,-0.1208765804767609,0.0504538491368294,-0.0028819970320910,0.0020820426288992,-0.1301652789115906));
res += mul(Get(s5,-dx,dy), float4x4(0.0424794554710388,0.0289387740194798,-0.0612931847572327,0.0455397851765156,-0.0628814101219177,0.0505227632820606,-0.1255268007516861,-0.0420588478446007,-0.0214476957917213,0.1069601029157639,-0.0315516255795956,-0.0143751231953502,-0.0364691913127899,-0.0214074719697237,-0.0043515469878912,0.0652006417512894));
res += mul(Get(s0,0,-dy), float4x4(-0.5231081843376160,-0.0952974706888199,-0.0851743593811989,-0.1142102703452110,-0.2554027438163757,-0.0629252567887306,-0.1210611984133720,0.1684342324733734,-0.4702080190181732,0.0102883856743574,0.1064863428473473,-0.0260577406734228,-0.2304673194885254,-0.0067621204070747,-0.2206204384565353,0.1895961910486221));
res += mul(Get(s1,0,-dy), float4x4(-0.0893914848566055,-0.0339171290397644,-0.0044122114777565,-0.1188088208436966,0.1394875794649124,0.2202436476945877,-0.2881867885589600,-0.0395231842994690,0.1002934798598289,0.0176784060895443,0.0465100295841694,-0.1884216666221619,0.2087306082248688,0.0942818596959114,-0.1292837560176849,0.2026620805263519));
res += mul(Get(s2,0,-dy), float4x4(-0.1338776201009750,-0.0994163602590561,0.0879556983709335,0.3521962761878967,0.1318502724170685,-0.1887719482183456,0.0677625015377998,0.0223977491259575,0.1241106539964676,0.0806914344429970,-0.0518592447042465,0.0043719219975173,0.0541318692266941,0.0866069719195366,-0.0411696061491966,0.0797463655471802));
res += mul(Get(s3,0,-dy), float4x4(-0.3829810321331024,-0.0379585810005665,0.0005403233226389,0.0069085340946913,0.4675700962543488,-0.2283000349998474,-0.0141409011557698,-0.2471667379140854,0.0287799015641212,-0.0945503339171410,0.1625715196132660,-0.0209873858839273,-0.0395194105803967,0.0796009749174118,0.0255144909024239,-0.0921766161918640));
res += mul(Get(s4,0,-dy), float4x4(0.2933724522590637,-0.0164499692618847,-0.2269842177629471,-0.3804039359092712,-0.1713718026876450,0.0947625562548637,-0.2934814989566803,-0.0144952349364758,-0.2229343205690384,-0.0416181795299053,-0.3159729540348053,-0.0053389440290630,0.1874357759952545,0.1296197474002838,0.0777443870902061,-0.1528596729040146));
res += mul(Get(s5,0,-dy), float4x4(-0.5807427763938904,0.1461958587169647,-0.1484386324882507,0.1870791763067245,0.4607408642768860,-0.1972090601921082,-0.0085220541805029,-0.0144613208249211,-0.2374121844768524,-0.0006168326945044,0.2113208770751953,-0.2034498751163483,-0.0501012466847897,-0.1122644171118736,0.1753134280443192,-0.0756088197231293));
res += mul(Get(s0,0,0), float4x4(-0.1949771493673325,-0.0476943813264370,-0.0657069981098175,0.2973915934562683,-0.3268788754940033,0.1665660291910172,-0.1610507369041443,-0.3436560034751892,0.0765373036265373,-0.5268313288688660,0.0542252846062183,0.0734699815511703,-0.2046119272708893,-0.4549660980701447,0.0608868263661861,0.2717091739177704));
res += mul(Get(s1,0,0), float4x4(0.4985913932323456,0.0602978467941284,-0.3441542387008667,-0.0455246716737747,0.2159587144851685,-0.2141631394624710,0.2595193982124329,0.3776441216468811,0.2798860967159271,0.2736302912235260,0.0144489957019687,-0.1678648889064789,-0.4962166845798492,0.3813447058200836,0.3255690634250641,-0.5478758811950684));
res += mul(Get(s2,0,0), float4x4(-0.0241372138261795,0.6650546789169312,-0.0044302921742201,-0.7177177071571350,0.1559757292270660,0.0300645884126425,-0.0363318361341953,-0.1487036347389221,0.1291716098785400,0.0935190543532372,0.0898806825280190,0.1356185525655746,0.0391080863773823,0.4445437490940094,0.0622612833976746,-0.2670511007308960));
res += mul(Get(s3,0,0), float4x4(-0.4495368897914886,-0.1643286347389221,0.2333886474370956,-0.1306087672710419,0.0155476303771138,0.1333156377077103,0.1895089298486710,-0.0130961360409856,-0.4295250177383423,0.2329952120780945,-0.0446187965571880,0.0551515482366085,-0.1737625002861023,0.0927771627902985,0.1746171861886978,-0.0716486126184464));
res += mul(Get(s4,0,0), float4x4(0.3285340964794159,0.2698281109333038,-0.4396185576915741,0.6008043289184570,0.2170500606298447,0.0598451197147369,0.1403100192546844,0.1786192804574966,0.3277528584003448,0.0203675571829081,0.0131376860663295,0.1513774096965790,-0.1203143000602722,-0.3222919702529907,-0.1490949690341949,-0.1273365020751953));
res += mul(Get(s5,0,0), float4x4(0.5357397198677063,0.0707435682415962,0.0249514505267143,-0.2410964816808701,0.2298445999622345,-0.0797887966036797,-0.1632429510354996,0.1842359900474548,0.3961729407310486,-0.0810623541474342,-0.2308323830366135,0.0992929860949516,-0.4337351918220520,-0.5804038643836975,0.2852063775062561,0.2035343945026398));
res += mul(Get(s0,0,dy), float4x4(0.0977383926510811,0.0555559769272804,0.2231846600770950,-0.1072213798761368,-0.0824181362986565,0.0446984507143497,0.0496785826981068,0.0353187695145607,0.2999449968338013,-0.0595607273280621,0.4649611115455627,0.2685097157955170,0.0179309137165546,0.1532196998596191,-0.0289622191339731,0.0475459471344948));
res += mul(Get(s1,0,dy), float4x4(0.0932252109050751,-0.0994736254215240,-0.1088199540972710,0.2388671338558197,0.0103506399318576,0.0791295766830444,-0.1734565794467926,-0.3476273417472839,0.1829459816217422,-0.2103987634181976,-0.0948852375149727,-0.2158796042203903,0.0034167773555964,0.1516449600458145,0.1636595129966736,0.1343475580215454));
res += mul(Get(s2,0,dy), float4x4(0.1495249718427658,0.0685995891690254,-0.2716093361377716,0.2848096489906311,0.0529389157891273,-0.0884909704327583,-0.3417684435844421,0.1072908565402031,0.0340364165604115,0.1463325172662735,-0.0195724032819271,0.1616378128528595,-0.0315023884177208,0.0737650245428085,0.1386137157678604,0.0544025115668774));
res += mul(Get(s3,0,dy), float4x4(0.2315761297941208,-0.1425317078828812,0.1112905666232109,0.2152105271816254,-0.1474223285913467,0.2477349340915680,-0.1715702861547470,-0.0008541485876776,0.0110633000731468,0.0864925980567932,-0.0731602162122726,-0.0809254720807076,0.0409145466983318,0.0237766057252884,-0.0798229500651360,0.0550586767494678));
res += mul(Get(s4,0,dy), float4x4(0.0180804561823606,0.1883297413587570,-0.0613855235278606,0.0208026934415102,0.3067232668399811,0.2083588987588882,0.5956337451934814,-0.0830971673130989,0.1081147342920303,-0.0069677275605500,0.0207875929772854,0.2077721208333969,-0.0047918022610247,0.0145194903016090,-0.0117612518370152,-0.1041852682828903));
res += mul(Get(s5,0,dy), float4x4(-0.1065297648310661,-0.0437419302761555,-0.1694553345441818,-0.0782037824392319,0.0541737750172615,-0.0508749298751354,0.0045408061705530,-0.0095017282292247,-0.2084717452526093,0.1277085840702057,0.1682775169610977,0.0839223191142082,0.1517652720212936,-0.3608510792255402,-0.0694306418299675,-0.0260455776005983));
res += mul(Get(s0,dx,-dy), float4x4(-0.0780234113335609,0.1839490830898285,-0.0147542422637343,0.1555884927511215,0.2006808519363403,-0.3113864064216614,-0.0788448154926300,0.1440732777118683,0.0276998858898878,-0.5218318700790405,0.2901883423328400,0.2163090109825134,-0.1884813159704208,-0.0857794210314751,-0.0723915472626686,0.0655793026089668));
res += mul(Get(s1,dx,-dy), float4x4(-0.1506177783012390,0.4228576123714447,0.0097552370280027,0.0280065443366766,0.0692786276340485,-0.2602027952671051,0.0965322405099869,-0.0184812173247337,0.1296318918466568,-0.0386726409196854,0.0315504260361195,-0.1142835766077042,0.1144282817840576,-0.1397465318441391,-0.1125890091061592,-0.0303020495921373));
res += mul(Get(s2,dx,-dy), float4x4(0.3068162798881531,0.1275053769350052,-0.1884281188249588,0.0374321825802326,-0.1373236328363419,-0.0731132626533508,-0.1024820879101753,-0.0439111217856407,-0.0582733079791069,0.1080566421151161,-0.0957481265068054,0.0516269579529762,0.0319895595312119,-0.0119267646223307,-0.3597757816314697,-0.0054096323437989));
res += mul(Get(s3,dx,-dy), float4x4(0.0374845303595066,-0.0352817960083485,-0.1003079861402512,-0.1110580414533615,-0.1020281687378883,-0.3513987064361572,0.0807393491268158,-0.0338210761547089,0.0694076195359230,-0.0350985489785671,-0.0074597890488803,-0.0110149988904595,-0.0517686232924461,-0.0847922861576080,0.1488342583179474,-0.0136186303570867));
res += mul(Get(s4,dx,-dy), float4x4(0.0615783222019672,-0.0837692841887474,-0.0930232033133507,-0.1988624781370163,0.1050356104969978,0.1096687093377113,-0.0923171341419220,0.0383682847023010,0.0531162284314632,0.0730461403727531,-0.0005004063714296,-0.0311732552945614,-0.0786717385053635,0.0872115567326546,0.1697653681039810,-0.0719347819685936));
res += mul(Get(s5,dx,-dy), float4x4(-0.0360364131629467,0.0335951372981071,0.0079610235989094,0.1040489971637726,-0.0213359165936708,0.0188756715506315,0.0169236212968826,-0.1093396246433258,-0.1133702546358109,-0.0407898984849453,0.3170384466648102,-0.0785226449370384,0.0970326066017151,-0.0647797584533691,0.2880732417106628,0.0149490600451827));
res += mul(Get(s0,dx,0), float4x4(0.2532938718795776,-0.4416576623916626,-0.0794043615460396,0.0366090647876263,0.2369627952575684,-0.8870388865470886,-0.2024080008268356,-0.1223569512367249,-0.6402587294578552,-0.3838995397090912,-0.5980324745178223,-0.1767543256282806,-0.0535538084805012,-0.2028340697288513,-0.0965698808431625,0.1095126643776894));
res += mul(Get(s1,dx,0), float4x4(-0.1345703601837158,-0.1541578769683838,-0.1456288397312164,0.0245090741664171,-0.1604282557964325,-0.1040313765406609,0.0497915633022785,0.0564051456749439,-0.0397361777722836,0.0479037649929523,0.0559222623705864,-0.0515428036451340,-0.0479734465479851,-0.0354969799518585,0.0216905437409878,0.0464970469474792));
res += mul(Get(s2,dx,0), float4x4(0.1822185814380646,-0.5292071104049683,0.0653948485851288,0.2047019302845001,-0.2596745491027832,0.5304819941520691,0.0906870439648628,-0.1875057220458984,-0.0408458188176155,0.3096259236335754,0.0013839327730238,0.0009217070764862,-0.0831808596849442,-0.4180680513381958,-0.0651248842477798,-0.2478348761796951));
res += mul(Get(s3,dx,0), float4x4(0.2093573957681656,-0.1435342580080032,0.0214788224548101,-0.0181841179728508,-0.1303208768367767,-0.3659442663192749,0.2060402929782867,0.0882765427231789,-0.3680731058120728,0.0728470906615257,0.0536379516124725,0.0308359935879707,-0.1812666058540344,-0.4055049121379852,-0.1229960024356842,-0.0306164119392633));
res += mul(Get(s4,dx,0), float4x4(-0.1499043554067612,-0.2665588855743408,0.1253482401371002,-0.0686313882470131,0.1154773160815239,-0.1281943321228027,0.1673214286565781,0.1736048758029938,-0.0367513708770275,-0.5933772921562195,0.0300442464649677,0.1383836269378662,-0.1866661608219147,-0.4229424893856049,0.0676290169358253,0.2357808649539948));
res += mul(Get(s5,dx,0), float4x4(-0.3194016814231873,-0.5468915104866028,0.2814170420169830,-0.0364017039537430,-0.0717681348323822,-0.2942341268062592,-0.0486098304390907,-0.0128324972465634,0.1495137661695480,0.0811395347118378,0.3338076472282410,-0.0811027288436890,0.1697121411561966,-0.4377373754978180,0.0711937919259071,0.1584237515926361));
res += mul(Get(s0,dx,dy), float4x4(0.0325649455189705,0.2513492107391357,0.1219434589147568,-0.0430976487696171,-0.0419158861041069,-0.3274313807487488,0.0211460608989000,-0.0336253456771374,0.3162583708763123,0.7946972250938416,0.0969491079449654,0.0078166276216507,-0.0089996196329594,0.1203133389353752,-0.0551595501601696,-0.0063495109789073));
res += mul(Get(s1,dx,dy), float4x4(-0.0583121702075005,0.1740256696939468,0.1579523533582687,0.0256460048258305,-0.0866078436374664,0.2986672222614288,0.1262398809194565,0.0652831941843033,0.0325581841170788,-0.1031496971845627,-0.0849918499588966,-0.1197127029299736,-0.0156868584454060,-0.1344090700149536,0.0255326442420483,0.0061961594037712));
res += mul(Get(s2,dx,dy), float4x4(-0.2921174466609955,0.0297966282814741,0.1695744544267654,-0.1020205914974213,0.0597977228462696,0.0292730368673801,-0.0675869509577751,0.2071350663900375,0.0375927351415157,0.0437244735658169,0.0846407264471054,0.0084730535745621,-0.0649095922708511,-0.0114188417792320,0.0297062397003174,-0.0096138883382082));
res += mul(Get(s3,dx,dy), float4x4(0.0847127661108971,0.0085849342867732,-0.0962695106863976,-0.0271773636341095,0.0238904394209385,-0.3481862843036652,0.0490200594067574,0.0244130548089743,0.0168003831058741,-0.0886660292744637,0.0244104079902172,-0.0701506361365318,0.0375709645450115,-0.4990496635437012,-0.0116253020241857,0.1015913411974907));
res += mul(Get(s4,dx,dy), float4x4(-0.1104938983917236,0.1394506990909576,-0.0907544121146202,0.1345364898443222,0.1950347423553467,0.3370574116706848,0.2667997181415558,-0.0113831432536244,-0.0886539518833160,-0.0049355416558683,0.3138438761234283,-0.2338513582944870,0.0145313199609518,-0.0607970543205738,-0.0196866635233164,-0.0117976833134890));
res += mul(Get(s5,dx,dy), float4x4(0.0884270444512367,-0.0197933819144964,-0.1040055751800537,0.0847266092896461,-0.0568519532680511,0.0192497242242098,-0.0074270493350923,-0.0029817635659128,0.0134529098868370,-0.2536730170249939,0.4263519942760468,-0.1781911551952362,0.1501375734806061,-0.1798040419816971,-0.0480664968490601,0.0290687717497349));
res = max(float4(0, 0, 0, 0), res) + float4(-0.0259095076471567,0.1807994544506073,0.9421649575233459,-0.4761019051074982) * min(float4(0, 0, 0, 0), res);
return res;
}