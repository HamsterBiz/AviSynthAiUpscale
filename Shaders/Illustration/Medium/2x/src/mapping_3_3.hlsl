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
float4 res = float4(-0.3929074406623840,-0.0505419410765171,-0.0013088919222355,0.0286730416119099);
res += mul(Get(s0,-dx,-dy), float4x4(-0.0191913358867168,0.0423494502902031,-0.2111952751874924,0.0168430041521788,0.0435155332088470,-0.2520628571510315,-0.1552056968212128,0.3189083039760590,0.1145105734467506,-0.0906545594334602,0.0159070640802383,0.0134784886613488,0.2011910676956177,0.0413349196314812,-0.0477971322834492,0.0194649267941713));
res += mul(Get(s1,-dx,-dy), float4x4(0.0281003192067146,0.0107129635289311,0.0516456738114357,-0.0120546789839864,0.3927366435527802,-0.1099917218089104,-0.0153412036597729,-0.0416221134364605,0.0549598932266235,-0.0719790011644363,0.1466710567474365,-0.1120612919330597,0.3333293497562408,0.0617772638797760,0.0586388222873211,-0.0663814842700958));
res += mul(Get(s2,-dx,-dy), float4x4(-0.1229529455304146,0.0358577780425549,0.0503850392997265,0.0169847365468740,-0.1611843407154083,0.0151185216382146,-0.0566908493638039,-0.1520744562149048,-0.1659926176071167,-0.0339336283504963,0.0841515511274338,-0.0411262586712837,-0.2787271440029144,-0.0224064830690622,-0.0566757209599018,-0.0466675125062466));
res += mul(Get(s3,-dx,-dy), float4x4(-0.3643344044685364,-0.0125550432130694,-0.1536569446325302,0.0788416564464569,-0.2485321164131165,-0.0754829719662666,0.0588598661124706,-0.0711235031485558,0.3666170537471771,-0.0381081104278564,-0.0536093264818192,0.0424975305795670,0.0396985635161400,0.1408247500658035,0.0005870755412616,0.0143843023106456));
res += mul(Get(s4,-dx,-dy), float4x4(-0.2219713181257248,-0.0446711294353008,-0.0501682125031948,-0.0303017999976873,-0.0009722639224492,0.2176574468612671,-0.2156665474176407,0.0781165286898613,-0.1430718600749969,-0.0100254500284791,-0.1520785540342331,-0.0209194067865610,-0.2374538630247116,-0.0700324177742004,0.0617898963391781,-0.0991658642888069));
res += mul(Get(s5,-dx,-dy), float4x4(-0.1368775069713593,0.0861359536647797,-0.0947914943099022,0.1365972608327866,-0.0373479798436165,-0.0001918362831930,-0.0728054344654083,-0.0179620590060949,-0.0427031219005585,0.1101732477545738,0.1250073909759521,0.0655461773276329,-0.1313725858926773,0.0009233505697921,-0.0216929186135530,0.0970777273178101));
res += mul(Get(s0,-dx,0), float4x4(-0.0203531999140978,0.1127391681075096,-0.3746470212936401,0.0808278694748878,0.0519256815314293,-0.1571453809738159,-0.0683209672570229,-0.1915631592273712,-0.0895463302731514,0.0061455252580345,-0.0802659019827843,-0.0704617500305176,0.0306809134781361,0.2999674975872040,0.2175811231136322,-0.0229395218193531));
res += mul(Get(s1,-dx,0), float4x4(0.1517604142427444,-0.0308788772672415,0.0752927213907242,-0.0070980368182063,0.2270002812147141,0.0151831209659576,-0.2550008893013000,0.1625406295061111,-0.1255371421575546,-0.0870405882596970,-0.4828313291072845,0.1528065949678421,-0.3245135545730591,0.5927088260650635,-0.2278093695640564,0.0047160177491605));
res += mul(Get(s2,-dx,0), float4x4(0.0359553545713425,0.1020708531141281,0.0203281193971634,0.1800778657197952,0.2691251933574677,0.0715806931257248,-0.0957861021161079,0.0413681380450726,-0.0590020865201950,0.1372888386249542,0.2299386262893677,0.0266398508101702,0.0655427798628807,-0.0407602116465569,-0.1957065016031265,0.0306033995002508));
res += mul(Get(s3,-dx,0), float4x4(-0.2251041978597641,-0.0037065956275910,0.2500908970832825,0.0114901987835765,0.0797991231083870,0.2641736268997192,0.1329402327537537,0.1396402865648270,0.0537704303860664,-0.0984968021512032,-0.1647827774286270,-0.0106351375579834,0.3682163059711456,-0.1261322796344757,-0.1294469386339188,-0.0832688212394714));
res += mul(Get(s4,-dx,0), float4x4(-0.3571113049983978,0.0057935793884099,0.2808436453342438,-0.0792598649859428,0.2898444831371307,-0.2313580960035324,-0.1799815297126770,-0.0829136520624161,-0.2763530910015106,0.0013632510090247,0.2027546167373657,-0.0682785287499428,-0.0785206779837608,0.0446467399597168,0.1274120062589645,-0.1956713050603867));
res += mul(Get(s5,-dx,0), float4x4(0.1752295643091202,0.0537051707506180,0.1271433681249619,-0.1148768514394760,0.0461493581533432,-0.0174040105193853,-0.2146192193031311,0.0589418858289719,-0.0106829227879643,-0.0123408408835530,0.1353764235973358,-0.0560571998357773,0.0699148252606392,0.0498457141220570,0.2458014488220215,-0.0180708505213261));
res += mul(Get(s0,-dx,dy), float4x4(-0.0424765571951866,0.0730827525258064,-0.0140455579385161,0.1079994142055511,-0.3144043385982513,-0.1289888322353363,0.2568397819995880,0.2049708068370819,-0.0486715063452721,0.0998252779245377,0.1068892255425453,-0.0121375024318695,0.3570709526538849,0.0310651957988739,0.1179841160774231,0.0333527624607086));
res += mul(Get(s1,-dx,dy), float4x4(0.1412716060876846,-0.0978717058897018,-0.1297534257173538,-0.0534645505249500,0.2127728015184402,0.0197472702711821,0.1758386045694351,-0.1005525290966034,-0.1991460621356964,-0.1309126764535904,-0.2579802274703979,-0.0408715195953846,0.3767429292201996,0.0785228535532951,0.1631552278995514,0.0770483985543251));
res += mul(Get(s2,-dx,dy), float4x4(0.0318146571516991,0.1005710735917091,0.0240835119038820,-0.0959003940224648,-0.2434192597866058,0.1516421735286713,0.1838249117136002,0.0829583927989006,0.1943509280681610,-0.1963431239128113,-0.0669315978884697,0.0188821852207184,0.0268685836344957,-0.0460174381732941,0.0274094790220261,0.0096524087712169));
res += mul(Get(s3,-dx,dy), float4x4(-0.0413952358067036,-0.0389385335147381,0.0570289604365826,-0.0481067635118961,0.0894006788730621,-0.0595035925507545,-0.1333757340908051,0.0025514366570860,-0.0049635102041066,0.0295840129256248,-0.0689279809594154,0.0285592172294855,0.0614397339522839,0.0530664660036564,0.1112624183297157,-0.0121640348806977));
res += mul(Get(s4,-dx,dy), float4x4(-0.0425606220960617,-0.0991553589701653,-0.0500232391059399,-0.0054828873835504,-0.1257006078958511,0.0393395349383354,0.1206398159265518,-0.3351441621780396,-0.0690492391586304,-0.0162803418934345,0.0343565344810486,0.0305720306932926,-0.0891309678554535,-0.0237043723464012,0.0730399563908577,0.0210007373243570));
res += mul(Get(s5,-dx,dy), float4x4(0.1328665912151337,-0.1388654708862305,-0.2045477032661438,0.0286847781389952,0.1061719432473183,-0.0306461397558451,-0.1623296290636063,-0.0201457962393761,0.0624275431036949,-0.1146468445658684,-0.2225506454706192,-0.0143216773867607,0.2962806522846222,-0.0743510648608208,0.0810375660657883,-0.0804722383618355));
res += mul(Get(s0,0,-dy), float4x4(-0.2413842529058456,0.1118208318948746,0.3392310142517090,0.0264554545283318,0.2876065969467163,0.0122726680710912,-0.0833405852317810,0.2035677284002304,0.1167943850159645,-0.1224133893847466,-0.2697903513908386,0.0289636272937059,0.2054833471775055,-0.2203981727361679,-0.0848819389939308,0.2341217994689941));
res += mul(Get(s1,0,-dy), float4x4(0.2746340036392212,-0.0223734471946955,0.0528832487761974,0.0415007509291172,0.3053389489650726,0.1486716121435165,-0.5956175923347473,-0.0620287097990513,0.0910009369254112,0.3855062127113342,0.1510390937328339,0.1067155897617340,0.1794074922800064,0.2741016745567322,-0.2952209413051605,0.1279887855052948));
res += mul(Get(s2,0,-dy), float4x4(0.2176160812377930,-0.2715540230274200,-0.2237496376037598,0.0216277353465557,-0.3734058141708374,-0.0496882200241089,0.2163175493478775,0.1111722141504288,-0.3934067487716675,0.0708192586898804,-0.0610881224274635,-0.0352423861622810,-0.2092741578817368,0.1359923034906387,0.0299847386777401,-0.0527067035436630));
res += mul(Get(s3,0,-dy), float4x4(-0.1484471708536148,-0.0237336959689856,-0.4007948338985443,0.1858927905559540,0.3527835011482239,-0.0068077584728599,0.0934992209076881,-0.1456055194139481,-0.1933502107858658,0.0643694028258324,0.0850689634680748,-0.0783993080258369,-0.1523967236280441,-0.0789976492524147,-0.2850866019725800,0.2067071795463562));
res += mul(Get(s4,0,-dy), float4x4(-0.6189778447151184,-0.0551053173840046,-0.0910841450095177,0.0792034789919853,0.1172786653041840,0.1660435497760773,-0.0032383773941547,0.0494504161179066,-0.0660842210054398,-0.0700112730264664,-0.0405861698091030,0.0019643658306450,0.1772040277719498,-0.0140124661847949,0.1341393738985062,-0.0280225276947021));
res += mul(Get(s5,0,-dy), float4x4(0.1141418293118477,-0.0547907352447510,0.1881209760904312,0.0304749310016632,-0.0514661669731140,0.1237018555402756,-0.0195920281112194,-0.0239637829363346,0.3041454553604126,-0.2887569665908813,-0.0474965348839760,-0.0684373527765274,0.3290658891201019,0.0109961358830333,-0.0012990542454645,-0.0472696870565414));
res += mul(Get(s0,0,0), float4x4(-0.6281924247741699,0.1308823376893997,0.1215927377343178,0.0075059127993882,0.0753823742270470,0.1501979827880859,-0.3028035163879395,-0.2146158516407013,-0.1352083384990692,0.2933454513549805,-0.2933411002159119,0.2697316706180573,0.1527740955352783,0.0611280053853989,-0.0005877970834263,0.2612584531307220));
res += mul(Get(s1,0,0), float4x4(0.1122741922736168,-0.3999862670898438,0.3073824048042297,0.0223490800708532,-0.0177025124430656,-0.0899076759815216,-0.2295694351196289,0.0777565017342567,-0.0068378108553588,-0.1731007248163223,-0.1724140197038651,0.2108412235975266,-0.0457284599542618,0.2118546217679977,-0.6379398107528687,0.2414600849151611));
res += mul(Get(s2,0,0), float4x4(0.0743429884314537,0.0354439169168472,-0.1164952963590622,0.0111454334110022,-0.3522538542747498,0.0516740307211876,0.3942508995532990,-0.0377041921019554,-0.4556928277015686,-0.2885707914829254,-0.3416088521480560,0.3983171582221985,0.0775204971432686,-0.3968765139579773,0.6738913059234619,-0.2289776355028152));
res += mul(Get(s3,0,0), float4x4(0.1736093014478683,-0.2610341310501099,0.0544032044708729,-0.0491188988089561,0.5191890001296997,-0.1020705923438072,-0.2228548973798752,0.1501033455133438,-0.3029690384864807,0.1437814086675644,-0.0807480812072754,0.1473098844289780,0.3539327681064606,-0.0070001357235014,-0.3310064971446991,-0.0765134021639824));
res += mul(Get(s4,0,0), float4x4(-0.5050952434539795,-0.3118171095848083,0.1247320845723152,0.4240398108959198,0.3039784729480743,0.1227252930402756,0.0543108545243740,0.1832347214221954,-0.1057786419987679,0.0451902896165848,-0.1543750166893005,0.1416865587234497,0.1995372921228409,0.0304298363626003,-0.5072793960571289,0.3320431113243103));
res += mul(Get(s5,0,0), float4x4(-0.3294514119625092,-0.0490480996668339,0.2930441200733185,-0.2220766991376877,0.0758182778954506,0.3025549054145813,-0.0293106567114592,0.0617463104426861,0.0921967625617981,0.1232514083385468,-0.1500201076269150,0.1867900043725967,0.1444448232650757,0.0838112309575081,0.1766378134489059,-0.0763196349143982));
res += mul(Get(s0,0,dy), float4x4(-0.0013070781715214,-0.0673883706331253,0.0200615283101797,0.0345854200422764,-0.0220165513455868,-0.0125282034277916,-0.0116757927462459,0.1315693557262421,-0.0380611717700958,-0.0358723066747189,-0.0083522144705057,0.0517491512000561,0.0291019678115845,0.0551923178136349,0.0631238222122192,0.2695329189300537));
res += mul(Get(s1,0,dy), float4x4(0.2498965263366699,0.1099030673503876,0.2291187942028046,-0.2673678994178772,0.1932225823402405,0.0573863424360752,-0.4616285860538483,-0.0156417489051819,0.1979690194129944,-0.0284133814275265,0.0054762372747064,-0.4901495873928070,-0.0191801488399506,-0.1000402569770813,0.4527904391288757,-0.0259243119508028));
res += mul(Get(s2,0,dy), float4x4(0.1224146187305450,0.0999915525317192,0.4285778701305389,0.1185339540243149,-0.3377251029014587,-0.0341261178255081,-0.0294212568551302,-0.2384773343801498,-0.0098560964688659,-0.0270755607634783,0.1829265207052231,-0.0756348371505737,-0.0142886769026518,-0.1437449753284454,-0.1974332779645920,-0.0327831134200096));
res += mul(Get(s3,0,dy), float4x4(-0.1790452152490616,0.1249618306756020,-0.3971763253211975,0.1217052564024925,0.2098768949508667,0.0969787389039993,0.1067073196172714,0.0154043203219771,0.0864235982298851,-0.0258601792156696,0.1034138277173042,0.1027204096317291,-0.0244229342788458,0.1320188641548157,0.1648121178150177,0.0763604864478111));
res += mul(Get(s4,0,dy), float4x4(0.1507129073143005,-0.1892393380403519,-0.0792596563696861,-0.0348355546593666,-0.1507438719272614,0.3298481106758118,-0.1554119139909744,0.1617910414934158,-0.0442510955035686,0.0464409366250038,-0.0174967590719461,-0.0095336176455021,-0.1782128065824509,-0.1045796424150467,-0.1949339956045151,0.1948611885309219));
res += mul(Get(s5,0,dy), float4x4(-0.0586161725223064,0.1517359316349030,0.0576580688357353,0.2262095212936401,-0.0796367228031158,0.1333234608173370,-0.1382562220096588,-0.0216911882162094,0.0826494246721268,0.0818263813853264,-0.0528166629374027,0.0924959927797318,0.3400781452655792,0.0218407195061445,-0.0097503531724215,-0.0606653429567814));
res += mul(Get(s0,dx,-dy), float4x4(-0.1200020909309387,0.0411848425865173,-0.0207654442638159,-0.0956283733248711,-0.2112198173999786,0.0213521793484688,0.1181358024477959,0.0839334130287170,0.1473655849695206,-0.1055209264159203,0.1748035103082657,-0.0347676165401936,0.0130695803090930,-0.0845805853605270,0.0569040104746819,0.0112964455038309));
res += mul(Get(s1,dx,-dy), float4x4(0.0726214498281479,-0.1717640608549118,0.0153588214889169,-0.1626255065202713,0.0407982245087624,0.0431838184595108,-0.5263965129852295,0.0542016141116619,-0.1379483044147491,0.0416679158806801,0.0182217396795750,0.0157232917845249,-0.0543302893638611,-0.3301467895507812,-0.3638395965099335,0.2280106842517853));
res += mul(Get(s2,dx,-dy), float4x4(0.1715608537197113,-0.2039591521024704,-0.2237361967563629,0.0223680101335049,0.1816921085119247,-0.0269368663430214,0.3121497929096222,-0.0815508663654327,-0.0247055478394032,0.0636903569102287,0.0176523867994547,0.1171136200428009,0.0357164554297924,0.1325535774230957,-0.0206454917788506,0.0132162794470787));
res += mul(Get(s3,dx,-dy), float4x4(-0.2283646166324615,-0.0773090496659279,-0.1693036705255508,-0.0155096380040050,0.3534772396087646,-0.0996621474623680,0.0094480765983462,-0.2031555324792862,0.2574698030948639,-0.0722638368606567,-0.0994084253907204,-0.0949172452092171,-0.2080436944961548,-0.1097717136144638,0.1633397042751312,-0.0094552533701062));
res += mul(Get(s4,dx,-dy), float4x4(0.2404794394969940,0.0606407076120377,0.1486523896455765,-0.0290968157351017,-0.0989481732249260,-0.1491994559764862,0.1074472963809967,0.0662121325731277,0.1033472791314125,0.0121638979762793,0.0041614286601543,-0.0261834692209959,-0.1484080404043198,0.0723410174250603,0.1471174359321594,0.0064677684567869));
res += mul(Get(s5,dx,-dy), float4x4(0.0406235456466675,-0.0595445446670055,-0.1212055012583733,0.0660210251808167,-0.0097630191594362,-0.0023922496475279,-0.0340852476656437,-0.0171314068138599,-0.6007745862007141,-0.0831656157970428,-0.2352997660636902,0.0131116192787886,0.1724066734313965,0.0715431123971939,0.0093385959044099,0.0544705018401146));
res += mul(Get(s0,dx,0), float4x4(-0.1933861970901489,-0.1084639951586723,0.0344684533774853,-0.0357453711330891,0.0693164318799973,-0.1786435246467590,0.1893223822116852,0.1178490146994591,-0.0235345102846622,-0.0865550115704536,-0.0747689381241798,0.0735671892762184,0.0445969328284264,-0.4037393927574158,-0.1551345139741898,-0.0917050689458847));
res += mul(Get(s1,dx,0), float4x4(-0.1718288213014603,-0.1014308929443359,-0.1159298866987228,-0.0287119057029486,0.0218824148178101,0.0991219356656075,-0.2393820285797119,0.2213047295808792,-0.0588912740349770,-0.0678993389010429,0.1961376219987869,-0.0374120138585567,0.3561010658740997,-0.1781007945537567,-0.1067989021539688,0.0387742258608341));
res += mul(Get(s2,dx,0), float4x4(0.1277149617671967,0.1140725314617157,-0.0863444209098816,-0.1312353461980820,-0.0111952601000667,-0.2293848991394043,0.0365779995918274,-0.3531028926372528,0.0810495167970657,0.2049991786479950,-0.3967168331146240,0.1089051291346550,-0.0671831592917442,0.2302171885967255,0.1362535506486893,-0.0354858674108982));
res += mul(Get(s3,dx,0), float4x4(-0.0333405770361423,-0.1614846438169479,-0.0557634495198727,0.2153997570276260,0.3137888312339783,-0.2133744508028030,-0.0793926864862442,-0.1190382540225983,0.0314860604703426,0.0759317129850388,-0.2889539301395416,0.0248133111745119,0.1456999629735947,0.0801399424672127,0.0140138342976570,-0.0110190492123365));
res += mul(Get(s4,dx,0), float4x4(0.0461707971990108,0.0438027158379555,-0.1861197799444199,-0.0001280095748371,-0.0997144803404808,0.1179937422275543,-0.2058999687433243,0.1207945048809052,0.0590215474367142,0.1038632541894913,-0.2938736975193024,-0.0117943668738008,-0.1694086790084839,-0.1632480323314667,0.1150091886520386,0.1459916830062866));
res += mul(Get(s5,dx,0), float4x4(-0.1035035252571106,-0.0573933161795139,0.0627639070153236,-0.0949439108371735,-0.1327846199274063,0.1914251595735550,-0.0017394612077624,0.0042481780983508,0.1214931085705757,-0.1264482587575912,-0.3195758163928986,0.2127466648817062,0.0576000511646271,0.0086606452241540,0.2323928773403168,-0.0266446005553007));
res += mul(Get(s0,dx,dy), float4x4(-0.0759886056184769,-0.3802143931388855,0.3575039207935333,-0.0501496456563473,0.2425957769155502,-0.0268011111766100,0.0592617914080620,-0.2206597477197647,-0.1860268414020538,0.0963463485240936,0.0658017694950104,-0.0474973730742931,0.0700987055897713,0.0600560232996941,0.0726803913712502,-0.1246994733810425));
res += mul(Get(s1,dx,dy), float4x4(0.0010048742406070,-0.1062304377555847,0.0102097298949957,0.0263095144182444,0.1304727494716644,-0.1019473150372505,-0.1454219669103622,0.0319977849721909,0.0079377340152860,0.0528745353221893,0.0441190265119076,-0.1347754895687103,-0.1798618733882904,-0.0669709369540215,-0.2246415168046951,-0.1903856843709946));
res += mul(Get(s2,dx,dy), float4x4(0.1121800318360329,0.0518381968140602,0.1814688295125961,-0.0012117305304855,-0.0720381215214729,-0.0242657084017992,-0.0019811398815364,-0.1909867823123932,0.0193654503673315,0.0057266233488917,0.0156229808926582,-0.0178428478538990,0.0881143882870674,0.0216079819947481,-0.0891071930527687,0.1060327738523483));
res += mul(Get(s3,dx,dy), float4x4(0.1106706559658051,0.1500498354434967,-0.1377987414598465,0.0390099659562111,0.3978118896484375,0.1469808369874954,0.0499381832778454,-0.2461197972297668,-0.1915226876735687,-0.2383359819650650,0.0008089742623270,0.0580950044095516,-0.0393078736960888,0.2509340941905975,-0.1417217701673508,-0.0002002518012887));
res += mul(Get(s4,dx,dy), float4x4(0.0385074354708195,0.0281341765075922,0.1610988229513168,-0.0864370316267014,-0.0659513622522354,0.0169950835406780,-0.0155858779326081,0.1213593930006027,-0.1380559206008911,0.0284207351505756,-0.1256929785013199,0.0461269542574883,0.0285683274269104,0.0704094842076302,0.0343991369009018,0.0198973380029202));
res += mul(Get(s5,dx,dy), float4x4(0.0275294445455074,0.0752443894743919,0.0704967156052589,-0.0167927723377943,-0.1838704645633698,-0.0930319130420685,-0.2736098766326904,0.2029045522212982,0.1366549879312515,0.3336503505706787,0.1146948933601379,-0.1859211921691895,0.2816576063632965,-0.0140553694218397,0.1755119860172272,-0.1122342124581337));
res = max(float4(0, 0, 0, 0), res) + float4(-0.1422006338834763,1.1293283700942993,0.0052523491904140,0.9891918301582336) * min(float4(0, 0, 0, 0), res);
return res;
}