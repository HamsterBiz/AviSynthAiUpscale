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
float4 res = float4(-0.3247960805892944,-0.1712382435798645,-0.3888994753360748,-0.1026028245687485);
res += mul(Get(s0,-dx,-dy), float4x4(0.0578527078032494,-0.1407489031553268,-0.0482611879706383,0.0998921245336533,-0.0975764393806458,0.0550203286111355,-0.1458818465471268,-0.0989114195108414,-0.0742727816104889,0.0814460739493370,0.0387866534292698,-0.0391965843737125,0.0603895075619221,0.1456701904535294,0.1379926949739456,0.0734114721417427));
res += mul(Get(s1,-dx,-dy), float4x4(0.0684871524572372,-0.1167992725968361,0.4086176753044128,0.0304061528295279,-0.0757282078266144,0.0866439491510391,-0.0315722301602364,-0.0221594441682100,-0.0383674129843712,-0.0598464980721474,0.0684568062424660,-0.0524684302508831,0.1086070984601974,0.2388034015893936,-0.0763159394264221,-0.0791510120034218));
res += mul(Get(s2,-dx,-dy), float4x4(-0.2937518358230591,-0.0328876264393330,-0.0006383486906998,-0.4302814602851868,-0.0441738702356815,-0.2393680661916733,-0.0966994985938072,-0.1284885555505753,-0.0678541287779808,0.0795325860381126,-0.0949718430638313,-0.1076172366738319,-0.0727997571229935,-0.3348695635795593,-0.0067687877453864,-0.0262268781661987));
res += mul(Get(s3,-dx,-dy), float4x4(0.0455238521099091,0.0197139736264944,0.3634404242038727,-0.0057171471416950,0.0266071092337370,0.0239798873662949,-0.0285533927381039,0.0068782181479037,0.0741112008690834,-0.1932482570409775,0.2597246170043945,-0.0363966450095177,-0.1526894122362137,-0.0867149382829666,-0.0505958795547485,-0.1029423177242279));
res += mul(Get(s4,-dx,-dy), float4x4(-0.1410417258739471,-0.1616442650556564,0.3274284005165100,-0.0954995527863503,0.0060456381179392,0.1330936104059219,0.0366833582520485,0.0571612082421780,0.1503863334655762,-0.4924744665622711,0.2620621919631958,0.1828895062208176,-0.1172918528318405,-0.2716932594776154,-0.1277553290128708,-0.1096762046217918));
res += mul(Get(s5,-dx,-dy), float4x4(0.0555979013442993,0.0517718419432640,-0.1173446476459503,0.0278176907449961,-0.0333193019032478,0.0552310422062874,-0.2392590641975403,-0.1661680489778519,0.0261253882199526,-0.2904314100742340,0.1745799630880356,-0.0189856607466936,0.0400829613208771,0.1690460145473480,-0.0068411175161600,0.0324702039361000));
res += mul(Get(s0,-dx,0), float4x4(0.0814306288957596,-0.5277634263038635,-0.2978796958923340,-0.2266306132078171,-0.1351849138736725,0.0130942417308688,-0.3033784031867981,-0.3700664937496185,-0.1730271130800247,-0.1278327852487564,0.1752984970808029,-0.4410378038883209,0.0805220901966095,-0.1335178166627884,-0.0133791062980890,-0.1689231395721436));
res += mul(Get(s1,-dx,0), float4x4(0.1410233676433563,-0.2140063643455505,-0.0086551290005445,0.0794404596090317,-0.2097055912017822,0.0523076951503754,0.1362285465002060,-0.1183299347758293,0.0581746585667133,-0.1021922379732132,-0.0818474218249321,-0.0348112359642982,-0.0976208448410034,-0.1064016073942184,0.1125625446438789,-0.3695259988307953));
res += mul(Get(s2,-dx,0), float4x4(-0.3204579055309296,0.3499853312969208,0.0622363761067390,-0.3818173110485077,-0.0273949392139912,-0.7365293502807617,0.2328185886144638,0.2193192243576050,-0.0101852901279926,0.0677160620689392,0.0875722393393517,0.0880678668618202,-0.1680695563554764,-0.4979788661003113,-0.2145994454622269,0.0603492520749569));
res += mul(Get(s3,-dx,0), float4x4(0.0970954671502113,-0.0272192824631929,0.0479389689862728,-0.0082779200747609,0.0605198554694653,0.1497570276260376,0.2976421117782593,0.0378678105771542,0.2369983196258545,0.1221827417612076,0.1172637492418289,0.2204962372779846,0.0608445219695568,-0.1901879459619522,0.1451360732316971,-0.0360510051250458));
res += mul(Get(s4,-dx,0), float4x4(0.1196146085858345,-0.1257071197032928,0.0039433958008885,-0.0415496975183487,-0.1001200675964355,0.2463013380765915,-0.0105252731591463,0.0377853289246559,0.3317756652832031,-0.0102373734116554,-0.4175929725170135,0.4540911614894867,0.0684386342763901,-0.3089482784271240,-0.0801221281290054,-0.0482244640588760));
res += mul(Get(s5,-dx,0), float4x4(0.0554705299437046,0.0145185887813568,-0.1678552180528641,-0.0725653618574142,-0.0764744132757187,0.0252824276685715,0.1451565027236938,-0.0875020325183868,-0.0971999168395996,-0.0016475268639624,-0.0274119358509779,0.0928111597895622,0.0080297086387873,0.1668376922607422,-0.0434086509048939,0.0288019720464945));
res += mul(Get(s0,-dx,dy), float4x4(-0.0876197069883347,-0.1144729927182198,-0.0089866993948817,-0.0450787842273712,-0.1583383381366730,0.0635575205087662,-0.0015136199072003,-0.1400516182184219,0.0872013345360756,0.1188426986336708,0.0481879599392414,0.0606881156563759,-0.0955903902649879,0.0518842339515686,-0.1716233491897583,-0.0002326408139197));
res += mul(Get(s1,-dx,dy), float4x4(0.0923488363623619,0.0159432925283909,-0.0166187621653080,0.1750612109899521,-0.2481830865144730,0.0714971572160721,0.1669548302888870,-0.0894715562462807,0.0828274413943291,-0.0472165793180466,0.1306478232145309,0.0798512324690819,-0.1662945896387100,-0.3072359561920166,0.0208007432520390,0.0036853910423815));
res += mul(Get(s2,-dx,dy), float4x4(-0.0069326707161963,0.1062589287757874,0.0968626663088799,-0.1375863999128342,0.0760739892721176,0.2504840791225433,-0.0931099206209183,-0.0952614396810532,-0.0203032325953245,-0.0772311240434647,-0.1518408507108688,-0.0110962716862559,0.0534695312380791,0.0172909330576658,-0.1558738946914673,-0.0222781486809254));
res += mul(Get(s3,-dx,dy), float4x4(0.0639474242925644,-0.1236285865306854,0.3220178484916687,-0.1868641227483749,-0.0813762918114662,-0.0900890007615089,-0.1602597087621689,-0.1026794165372849,0.0597513914108276,0.2405911684036255,0.1179879456758499,-0.0271945763379335,0.0150274783372879,0.1045479774475098,0.0536721087992191,0.1551359891891479));
res += mul(Get(s4,-dx,dy), float4x4(0.0096854846924543,0.3328057229518890,0.2615454494953156,-0.0341567955911160,0.0922175049781799,0.2442526370286942,-0.0595594868063927,0.0963052511215210,0.1875686645507812,0.0458898022770882,-0.0204842146486044,0.3374637663364410,-0.2122694104909897,0.4017423689365387,-0.1597129255533218,0.1439179331064224));
res += mul(Get(s5,-dx,dy), float4x4(-0.1002434492111206,-0.2451035678386688,-0.0786873921751976,0.0556153245270252,0.0924026891589165,-0.1270972788333893,0.1342162042856216,-0.1265956312417984,-0.1136137768626213,-0.1522095948457718,-0.1746632456779480,0.0766008943319321,-0.0731453448534012,-0.2425667047500610,0.1722512394189835,-0.0129543161019683));
res += mul(Get(s0,0,-dy), float4x4(-0.0419785529375076,0.0384297445416451,-0.1706639677286148,0.0229966286569834,-0.0045196190476418,0.0655941069126129,-0.1237421184778214,-0.0817021504044533,0.0347497612237930,-0.1186049729585648,-0.0750893652439117,0.0537735000252724,0.1395202279090881,0.2848447561264038,-0.0671128034591675,0.2405278533697128));
res += mul(Get(s1,0,-dy), float4x4(0.0694352313876152,0.0046607707627118,0.0261698793619871,0.0552229434251785,0.0065508680418134,-0.0115481819957495,-0.1543560028076172,0.1462394893169403,0.0970013588666916,0.3421406745910645,-0.1659329682588577,0.0465300120413303,0.0726848319172859,0.4600879848003387,-0.1721199154853821,0.1862381398677826));
res += mul(Get(s2,0,-dy), float4x4(-0.2717486917972565,-0.1614564061164856,0.2873154282569885,-0.4302976727485657,-0.1864181905984879,-0.3708310425281525,-0.2369946986436844,-0.1105095818638802,-0.0865427777171135,0.2409399300813675,0.0396072231233120,-0.1116753593087196,-0.0458247736096382,-0.4957076907157898,-0.1150236874818802,0.1248129010200500));
res += mul(Get(s3,0,-dy), float4x4(0.1034373268485069,0.2843704223632812,-0.2107826769351959,-0.0365024432539940,0.1904358118772507,0.0771812424063683,-0.0072304578498006,0.2782902717590332,0.1094303280115128,-0.1893596202135086,-0.1684919893741608,0.0032716214191169,-0.2430382519960403,-0.1063275933265686,-0.1618686169385910,-0.3040686547756195));
res += mul(Get(s4,0,-dy), float4x4(-0.0648450925946236,-0.2126433402299881,-0.2030763179063797,-0.2225517183542252,0.2155281752347946,0.0753961578011513,0.2981344461441040,0.1112359836697578,0.3387435376644135,-0.5994009375572205,0.1342433243989944,0.1720270514488220,0.0380657278001308,-0.0113393319770694,0.0815499424934387,-0.0685135498642921));
res += mul(Get(s5,0,-dy), float4x4(-0.1668813079595566,0.0328639224171638,-0.2430558949708939,-0.0409835986793041,-0.0586973764002323,0.0135410362854600,-0.5979732275009155,-0.3282049298286438,-0.0886337310075760,-0.1822896897792816,-0.0035025922115892,0.0230741742998362,-0.0485211648046970,-0.1315423548221588,-0.0378598608076572,0.0846750810742378));
res += mul(Get(s0,0,0), float4x4(0.0772447437047958,0.5293279290199280,-0.2345573008060455,0.3375170826911926,-0.1698364019393921,-0.5574128031730652,0.1038343086838722,0.2765347063541412,0.1288719773292542,0.3545730113983154,-0.4565195739269257,-0.0376714617013931,-0.3017205893993378,-0.2781974077224731,-0.0397918149828911,-0.5832360386848450));
res += mul(Get(s1,0,0), float4x4(0.1927036941051483,0.1708007454872131,-0.5931555032730103,-0.0488815605640411,0.2757713198661804,0.2619526684284210,0.3557197451591492,0.0913211330771446,-0.3289223313331604,-0.1091698333621025,-0.1706670969724655,-0.8255233764648438,-0.1429484039545059,0.3699926435947418,0.3634680211544037,0.6084455251693726));
res += mul(Get(s2,0,0), float4x4(-0.3701504766941071,0.0590793825685978,0.3426765799522400,-0.2854384183883667,-0.0710562691092491,-1.1385723352432251,-0.1549006402492523,-0.5797573328018188,0.0262389201670885,-0.2594030201435089,-0.1063377931714058,-0.1025093495845795,0.4369639754295349,-0.0786403939127922,-0.0729249417781830,0.4721177518367767));
res += mul(Get(s3,0,0), float4x4(0.2161542475223541,-0.2470985502004623,-0.1945778727531433,-0.2378228455781937,-0.2693353891372681,-0.2127612233161926,0.0633694753050804,0.0000809231714811,0.2509394288063049,0.2520960271358490,-0.0109652327373624,-0.0727487206459045,0.2580200135707855,-0.0053496877662838,-0.1819600313901901,0.1566692888736725));
res += mul(Get(s4,0,0), float4x4(0.0813118517398834,-0.3291568160057068,-0.0996236875653267,0.4479120075702667,-0.1482739001512527,0.1927506029605865,0.0314890928566456,0.1386227160692215,0.4226128458976746,-0.0398806370794773,0.0390483178198338,0.3479420244693756,0.6433571577072144,-0.8363559246063232,0.2617171108722687,-0.1420588642358780));
res += mul(Get(s5,0,0), float4x4(0.2777870595455170,0.5141352415084839,-0.4298395514488220,0.0263371765613556,-0.5519369840621948,0.1789786666631699,0.1596570909023285,-0.4147258996963501,0.0478058606386185,-0.2242328524589539,0.4992537200450897,-0.6321740150451660,-0.2512755692005157,0.0940710082650185,-0.0832550600171089,-0.5679059028625488));
res += mul(Get(s0,0,dy), float4x4(-0.0463688895106316,0.4070107042789459,-0.1856054514646530,-0.0720826536417007,0.1227698549628258,-0.0219361260533333,-0.0813080370426178,-0.3301645219326019,-0.3893004357814789,-0.0910308063030243,-0.1459484845399857,0.2010574936866760,-0.3711362183094025,-0.1485051214694977,-0.0441846773028374,0.0680487975478172));
res += mul(Get(s1,0,dy), float4x4(-0.0155424904078245,-0.1872120499610901,0.0341268740594387,0.1785078048706055,0.0786889642477036,-0.2868515849113464,-0.1930257230997086,-0.0148605136200786,-0.2757865190505981,0.0207607299089432,0.0188652947545052,0.0887706726789474,0.3994829952716827,-0.0715814307332039,-0.2929451763629913,0.1509653180837631));
res += mul(Get(s2,0,dy), float4x4(-0.0706011801958084,0.3042206764221191,0.2141238600015640,-0.1187354549765587,0.0284195784479380,0.4766640663146973,-0.0843152627348900,-0.0872130841016769,0.0349622964859009,-0.1435398906469345,-0.0043228426948190,0.0600834786891937,0.3001276552677155,-0.2780170440673828,0.0059103369712830,-0.1287654638290405));
res += mul(Get(s3,0,dy), float4x4(0.1631614118814468,0.0041408184915781,0.0057154227979481,-0.1229719072580338,0.1013450026512146,-0.2878105938434601,0.2297014892101288,-0.1392974704504013,0.0349614657461643,0.4872353076934814,-0.3212348222732544,0.1140130981802940,0.1244998499751091,-0.0570210516452789,-0.1138455718755722,-0.0959574058651924));
res += mul(Get(s4,0,dy), float4x4(-0.1850097775459290,0.3002246618270874,-0.2104967385530472,-0.0479691587388515,0.0948509722948074,-0.0138948950916529,0.1330754160881042,-0.1417694389820099,0.1968664079904556,-0.6258242726325989,-0.0777485892176628,0.1877672821283340,0.0438335463404655,0.4756063222885132,-0.2178892344236374,0.3729904592037201));
res += mul(Get(s5,0,dy), float4x4(0.1246938481926918,0.0432355329394341,-0.1772826015949249,0.2249396890401840,-0.1310265660285950,-0.3428598642349243,0.1379272341728210,-0.1615296900272369,-0.3899291753768921,0.0219237841665745,0.0772956833243370,-0.0931090414524078,-0.2945200800895691,-0.2237044721841812,0.2683808803558350,0.0334077551960945));
res += mul(Get(s0,dx,-dy), float4x4(0.0431597530841827,0.1149343326687813,-0.1932580322027206,0.0343048647046089,-0.0511743575334549,-0.0268656015396118,-0.2888380587100983,0.0362125933170319,-0.0411825627088547,0.0982725098729134,0.0481576286256313,0.0279037412256002,0.2743820846080780,-0.2640538811683655,0.3768751919269562,0.0158776175230742));
res += mul(Get(s1,dx,-dy), float4x4(-0.1864648759365082,-0.0217052884399891,-0.2717049121856689,0.0089804222807288,0.0390762723982334,0.2403817772865295,-0.0106767481192946,0.1260130256414413,-0.0207661949098110,-0.1925121098756790,-0.0050865896046162,-0.0503791123628616,-0.0721946507692337,-0.0006244810065255,0.1315134763717651,-0.1176802590489388));
res += mul(Get(s2,dx,-dy), float4x4(-0.1405981034040451,0.1824350506067276,-0.2032819986343384,-0.0876737311482430,-0.0787989720702171,0.2643661201000214,-0.2523176074028015,-0.0764153972268105,-0.0393030829727650,0.0362452268600464,0.0180903933942318,-0.0415825210511684,-0.0755025222897530,-0.2568435668945312,-0.1069183349609375,0.0283977109938860));
res += mul(Get(s3,dx,-dy), float4x4(0.0960495248436928,-0.4988383650779724,-0.3150714933872223,-0.1632427424192429,0.0715864673256874,0.0332181639969349,-0.0054919631220400,0.0139781311154366,0.1236313655972481,0.6440645456314087,-0.1102254390716553,-0.0023987458553165,-0.1587588787078857,0.2047705650329590,-0.1067820340394974,-0.0858813375234604));
res += mul(Get(s4,dx,-dy), float4x4(-0.0075093088671565,-0.2727125287055969,-0.1190846562385559,0.0363696105778217,0.1931080967187881,-0.3524156212806702,0.1044902130961418,-0.0536259859800339,0.3819233179092407,0.0995142683386803,0.1886990815401077,0.1838227063417435,-0.0614147186279297,0.0599925741553307,-0.2490440309047699,0.0724299773573875));
res += mul(Get(s5,dx,-dy), float4x4(0.1498871892690659,0.0776121839880943,0.0037291427142918,0.1119999885559082,-0.2929480373859406,-0.3109943866729736,-0.1525510698556900,-0.2979718148708344,-0.0184950437396765,0.0661466345191002,-0.0126914773136377,0.0627105459570885,-0.0491257719695568,-0.0139941005036235,-0.2235848456621170,0.0328174792230129));
res += mul(Get(s0,dx,0), float4x4(-0.0156408175826073,-0.3846900761127472,-0.1491101235151291,0.0885638669133186,-0.3741160929203033,0.1624395996332169,-0.2521508932113647,-0.0013498420594260,0.2666705548763275,-0.0223525334149599,-0.0288837458938360,0.0295403413474560,0.0211009792983532,0.3952315449714661,-0.2303087711334229,0.3547034859657288));
res += mul(Get(s1,dx,0), float4x4(0.2533715069293976,-0.1261116266250610,0.0755121037364006,0.1194667816162109,0.0564975589513779,-0.1721639335155487,0.1701109111309052,-0.0010319484863430,-0.0781114771962166,-0.1910853087902069,0.2766621708869934,0.0551213361322880,-0.1302104294300079,0.3497055768966675,-0.6735982298851013,0.1334476470947266));
res += mul(Get(s2,dx,0), float4x4(0.0541281737387180,0.1254941821098328,-0.1638993322849274,-0.2891406416893005,-0.0824571177363396,0.6023592948913574,-0.6348681449890137,0.0916647166013718,-0.0709047168493271,-0.2164920717477798,-0.0604201741516590,-0.1092354878783226,0.1041486039757729,-0.0719703584909439,0.0614558532834053,0.1406630426645279));
res += mul(Get(s3,dx,0), float4x4(0.3158836662769318,0.1432852894067764,-0.7545547485351562,0.0126735456287861,0.0933680310845375,0.5578814744949341,-0.0023678853176534,0.0730961784720421,0.4564906656742096,0.3278111517429352,-0.8341496586799622,0.0120195606723428,-0.2834482192993164,0.1168041303753853,0.1347077041864395,-0.0368462502956390));
res += mul(Get(s4,dx,0), float4x4(-0.1534755527973175,0.5235899686813354,-0.3088818192481995,0.0221908222883940,-0.4247248768806458,0.2455568164587021,-0.7221371531486511,0.1233480796217918,0.3245724439620972,-0.5893314480781555,0.1173277422785759,0.2840246856212616,0.1902123987674713,0.2766452729701996,-0.3624860644340515,0.1657616794109344));
res += mul(Get(s5,dx,0), float4x4(0.0469533205032349,-1.1694425344467163,0.3011426329612732,0.0171754639595747,-0.2998860776424408,-0.3170761764049530,-0.3847718834877014,-0.1387481093406677,0.0916542708873749,0.0427601747214794,0.1364145427942276,0.0744586512446404,-0.2406869083642960,0.1395335197448730,-0.1745079308748245,0.1530607193708420));
res += mul(Get(s0,dx,dy), float4x4(0.0633732825517654,0.1131743043661118,0.0751627609133720,-0.0926241427659988,-0.1314515322446823,0.0436959043145180,-0.0807445645332336,-0.0531103797256947,-0.0227679479867220,-0.0545582994818687,0.1118606775999069,-0.0148554490879178,-0.0841452032327652,0.2564578354358673,-0.0265738200396299,0.0658890902996063));
res += mul(Get(s1,dx,dy), float4x4(0.0243381131440401,-0.2402687370777130,-0.0941649973392487,0.1085492596030235,0.0870183184742928,0.3559907674789429,0.2671441733837128,-0.0604702085256577,0.0553215555846691,0.0054295524023473,0.1484160274267197,0.1244964897632599,-0.1248629018664360,0.0314255431294441,-0.4067595005035400,0.1627288013696671));
res += mul(Get(s2,dx,dy), float4x4(-0.0827769935131073,0.1929931342601776,-0.1877431422472000,-0.0625435784459114,-0.0081793852150440,0.4086158573627472,-0.1107900813221931,-0.0492338277399540,0.0136247593909502,0.2376613765954971,0.0864607244729996,0.0514647029340267,0.1857996284961700,0.0875056758522987,0.0708652511239052,-0.0270817261189222));
res += mul(Get(s3,dx,dy), float4x4(0.1547756493091583,0.1204816251993179,-0.3859466016292572,-0.1037224754691124,-0.1940905004739761,0.3099765181541443,-0.2448559701442719,-0.0044007794931531,0.1292917430400848,-0.2793150842189789,-0.0793563649058342,-0.1510193645954132,0.1368359774351120,-0.1498869061470032,0.2013490945100784,0.0038338254671544));
res += mul(Get(s4,dx,dy), float4x4(-0.0335254259407520,-0.1410246938467026,-0.1101956069469452,0.0149721074849367,-0.1683183014392853,-0.1756409555673599,-0.3271842896938324,-0.0080403545871377,0.4324953258037567,-0.4008869528770447,0.6212818622589111,0.2522790431976318,-0.1274920701980591,-0.2411092072725296,-0.1479379683732986,-0.0274420510977507));
res += mul(Get(s5,dx,dy), float4x4(-0.1222298145294189,-0.3216705620288849,0.3706663548946381,0.0472231134772301,-0.0535848997533321,-0.0506351292133331,0.0240903124213219,-0.0670663341879845,0.0989561378955841,0.1124387606978416,0.0097109107300639,0.1691092252731323,-0.2767854332923889,0.0735969841480255,-0.1729337871074677,0.0314740203320980));
res = max(float4(0, 0, 0, 0), res) + float4(-0.1510352045297623,0.0063398657366633,0.1525930762290955,0.1151297613978386) * min(float4(0, 0, 0, 0), res);
return res;
}