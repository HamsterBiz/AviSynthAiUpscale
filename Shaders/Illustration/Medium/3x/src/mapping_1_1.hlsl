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
float4 res = float4(-0.0426213368773460,0.0463094897568226,0.0077139423228800,-0.2948752343654633);
res += mul(Get(s0,-dx,-dy), float4x4(0.0756400451064110,0.0738457366824150,-0.0191890038549900,0.4077070653438568,0.0451825074851513,-0.0211568772792816,-0.3765178620815277,-0.1411159336566925,-0.1168028190732002,0.0670371726155281,0.0807180479168892,-0.0877005979418755,-0.0383034683763981,0.0101437978446484,0.0823540315032005,-0.2784826755523682));
res += mul(Get(s1,-dx,-dy), float4x4(0.0730806589126587,0.0577317960560322,-0.2404027134180069,-0.2163568437099457,-0.0494833439588547,-0.0084984125569463,0.0106434375047684,0.1802687048912048,0.0029505239799619,-0.0423086732625961,-0.0877513438463211,0.2245096713304520,-0.0269334707409143,-0.0804134607315063,-0.0026180758140981,-0.2751842141151428));
res += mul(Get(s2,-dx,-dy), float4x4(-0.0510392226278782,0.1035151183605194,-0.2554593682289124,-0.0443051829934120,-0.0120811006054282,-0.1304580271244049,0.2339955121278763,0.0381179824471474,-0.0783830657601357,-0.0085420701652765,0.0673057958483696,-0.2743944823741913,0.0093311807140708,0.0368363596498966,0.0285602621734142,0.0741277858614922));
res += mul(Get(s3,-dx,-dy), float4x4(0.0245936382561922,0.0150655163452029,-0.1250115483999252,0.0843246802687645,-0.0078993607312441,-0.1531966775655746,-0.1325875222682953,-0.1312958449125290,-0.0811553597450256,0.0363645441830158,-0.0311413388699293,0.0562766194343567,-0.0617354251444340,-0.1763169169425964,-0.0724681988358498,-0.0519541092216969));
res += mul(Get(s4,-dx,-dy), float4x4(0.0070697586052120,-0.0225514266639948,0.1738920658826828,-0.0386179834604263,0.0097151743248105,-0.1054831445217133,0.0770781114697456,-0.0647339075803757,0.0827213078737259,0.1184715330600739,0.0949060991406441,0.0346388071775436,0.0357165336608887,-0.1156009137630463,0.0631051883101463,-0.2385903447866440));
res += mul(Get(s5,-dx,-dy), float4x4(0.1680361628532410,0.0322399139404297,-0.1683763414621353,-0.1163728833198547,0.0718315094709396,0.0517652258276939,-0.1276906430721283,-0.0536191426217556,-0.1122092679142952,0.1122126132249832,-0.0524068176746368,0.1280038505792618,0.0233874749392271,0.0093664517626166,-0.1593779474496841,0.3035650551319122));
res += mul(Get(s0,-dx,0), float4x4(-0.1322697848081589,0.0909211412072182,-0.0630869120359421,0.3785250782966614,0.2961802482604980,-0.0916553065180779,-0.1675113737583160,-0.2144538313150406,0.0744130909442902,0.0411712042987347,-0.1472058445215225,0.2163098603487015,0.1217574402689934,0.0196013189852238,0.1169103160500526,-0.0587196201086044));
res += mul(Get(s1,-dx,0), float4x4(-0.0575562007725239,0.1229139566421509,0.1168952062726021,0.4223503470420837,-0.2882957458496094,-0.0338762700557709,0.2911078929901123,0.2861079275608063,0.1837932914495468,0.0918718948960304,-0.1502951979637146,-0.3587605059146881,0.0144859123975039,-0.0076105296611786,0.0417263619601727,-0.5286970734596252));
res += mul(Get(s2,-dx,0), float4x4(0.1055707931518555,0.0387978218495846,0.0902789533138275,-0.0629069879651070,0.0292671639472246,0.0936113148927689,0.0547902472317219,0.6111547946929932,0.0809587836265564,0.0632434934377670,-0.2797057628631592,-0.2456178367137909,0.0671657398343086,-0.3093668222427368,0.0773318558931351,-0.1659831255674362));
res += mul(Get(s3,-dx,0), float4x4(-0.0853080749511719,0.0154775399714708,0.1513154655694962,-0.3447033762931824,-0.0139236208051443,0.1233744174242020,-0.0098535185679793,-0.6876626014709473,0.0829101875424385,-0.1317085623741150,0.0426016338169575,0.1712809503078461,-0.3282025754451752,0.1778380274772644,-0.0603435598313808,-0.3662054240703583));
res += mul(Get(s4,-dx,0), float4x4(-0.1113425269722939,-0.0426865555346012,0.0673120245337486,0.3240001797676086,0.0302708521485329,-0.0128025142475963,0.3454420864582062,0.3294786214828491,-0.1418585777282715,-0.0069006034173071,0.0786249488592148,-0.0054729152470827,-0.0896418690681458,0.0113147040829062,0.0040989159606397,0.3841094076633453));
res += mul(Get(s5,-dx,0), float4x4(0.0142290089279413,0.1801277995109558,-0.1775476038455963,0.1409733742475510,-0.2339551001787186,-0.2080126851797104,-0.1022959351539612,-0.1353114098310471,-0.0518471784889698,0.1344377249479294,0.0837890729308128,0.2685546875000000,-0.3911979794502258,-0.0280447024852037,0.0863231718540192,-0.7990293502807617));
res += mul(Get(s0,-dx,dy), float4x4(-0.0053579667583108,-0.0894031599164009,0.1370972543954849,0.5159303545951843,-0.0912100598216057,0.0906759276986122,0.4043250083923340,0.3923290371894836,-0.0029088777955621,0.0697873681783676,0.2095560431480408,-0.2182687222957611,0.1985872834920883,0.1010780856013298,-0.1022046282887459,0.0450423061847687));
res += mul(Get(s1,-dx,dy), float4x4(-0.1609184294939041,-0.0855235829949379,0.0626746863126755,0.1905705034732819,0.0509484782814980,0.0398906618356705,-0.0978460982441902,0.4906165301799774,-0.1182272583246231,-0.1125350371003151,0.0342491641640663,-0.2417097836732864,-0.0345587730407715,0.0224611461162567,0.0414559245109558,-0.7831729650497437));
res += mul(Get(s2,-dx,dy), float4x4(0.0009361573611386,0.1236001253128052,-0.1821175962686539,-0.2261593043804169,-0.0522844381630421,0.0573845840990543,0.0058214268647134,0.5109785795211792,0.1761725842952728,0.0416190437972546,0.0555508062243462,0.0766392201185226,0.0827715620398521,0.1512539833784103,0.0382450632750988,0.2840148508548737));
res += mul(Get(s3,-dx,dy), float4x4(0.0218693800270557,0.1303788423538208,0.1782921552658081,0.2125336676836014,-0.0032472100574523,-0.1460260748863220,0.2890402674674988,0.2460853606462479,0.1470036357641220,0.1165931746363640,-0.1084615662693977,0.0769482031464577,-0.0706534087657928,-0.0876954570412636,-0.1336402744054794,0.0139857009053230));
res += mul(Get(s4,-dx,dy), float4x4(-0.0644874870777130,-0.0168116763234138,0.0796910002827644,-0.3402357697486877,0.0175001546740532,-0.0984537452459335,-0.0253134183585644,0.2042009085416794,-0.0079207140952349,-0.1160130351781845,0.0051410584710538,-0.6625456809997559,-0.0796788111329079,-0.1307083815336227,0.1179591566324234,-0.2363397628068924));
res += mul(Get(s5,-dx,dy), float4x4(-0.0875005871057510,-0.0645343288779259,0.2918972373008728,0.2966509461402893,0.0594054572284222,-0.1933417022228241,-0.0708320587873459,0.0475015044212341,-0.0597017519176006,-0.1696706563234329,0.0783490836620331,-0.1683887839317322,0.0221855472773314,-0.0612978599965572,-0.0434691384434700,0.7558860182762146));
res += mul(Get(s0,0,-dy), float4x4(0.0273788515478373,0.0261865910142660,-0.1210250779986382,-0.1524889171123505,-0.0493750460445881,0.1821423023939133,0.0608995519578457,-0.2518093585968018,0.0301253031939268,-0.0846610888838768,-0.0982803329825401,-0.1056744083762169,0.1905375421047211,0.1398547440767288,-0.0796408951282501,-0.3749075829982758));
res += mul(Get(s1,0,-dy), float4x4(0.3908542990684509,0.0679029673337936,-0.2679157853126526,0.0292296111583710,0.0719860717654228,0.0217989701777697,-0.1928015351295471,-0.2875243723392487,0.2752906382083893,-0.0397231169044971,-0.0139020690694451,-0.2853071689605713,0.0327789895236492,0.0301325693726540,0.0861742421984673,-0.1405162960290909));
res += mul(Get(s2,0,-dy), float4x4(-0.1134856119751930,-0.1719913929700851,-0.0020378490444273,-0.0419079586863518,0.1864451020956039,0.0070249703712761,0.0813772976398468,-0.0235539209097624,-0.0854137539863586,0.0558052174746990,-0.0633661746978760,0.2689525783061981,-0.1196081191301346,-0.0401565283536911,-0.0214036870747805,0.0000783439536463));
res += mul(Get(s3,0,-dy), float4x4(-0.0444758646190166,-0.0966854542493820,-0.0305746830999851,-0.1060923412442207,0.0395009666681290,-0.0812238305807114,-0.1145301684737206,-0.4399643242359161,-0.0432386547327042,0.0298282317817211,0.0678646564483643,-0.0516120828688145,-0.0355297327041626,-0.0259274281561375,0.1599653363227844,-0.0529414117336273));
res += mul(Get(s4,0,-dy), float4x4(0.2854365110397339,0.0220333207398653,-0.0728494673967361,0.0953442379832268,0.0801964774727821,-0.0038125317078084,0.0276245921850204,-0.0739438980817795,0.2688175737857819,0.0005673969280906,-0.2430778294801712,-0.0782002136111259,-0.3097642660140991,0.0836109742522240,-0.0265098307281733,0.3113394081592560));
res += mul(Get(s5,0,-dy), float4x4(0.2616642117500305,-0.1675166189670563,-0.2800061404705048,-0.0170792676508427,-0.2054908275604248,0.0530658923089504,0.2593993246555328,0.0714347288012505,-0.1184909120202065,-0.1991007626056671,-0.1902254968881607,0.1881850808858871,0.0157931931316853,-0.0241527277976274,-0.1985658407211304,0.0637389048933983));
res += mul(Get(s0,0,0), float4x4(-0.4255796670913696,-0.1510061174631119,-0.0333537682890892,-0.2052045017480850,0.0937931910157204,0.0269559286534786,-0.0376787446439266,0.2594580650329590,0.0346113778650761,-0.0711841657757759,0.1902001053094864,-0.0372049659490585,-0.7835696935653687,0.1195060610771179,0.0779099166393280,0.1052065566182137));
res += mul(Get(s1,0,0), float4x4(0.1478857994079590,-0.1848761886358261,0.7320820093154907,-0.5003548860549927,0.7325780987739563,-0.0456758365035057,0.0622512176632881,0.0765199437737465,-0.5790423154830933,-0.0366838462650776,0.3021569848060608,0.0574555322527885,0.1305333524942398,-0.0837083682417870,0.0662899762392044,-0.6643130183219910));
res += mul(Get(s2,0,0), float4x4(0.2077872157096863,0.2733142077922821,0.1741928309202194,-0.1895181983709335,0.2280066460371017,0.2792899906635284,-0.7019965052604675,-0.3936231434345245,-0.0441368557512760,-0.3727339506149292,0.1009996607899666,-0.2602066993713379,-0.2983371317386627,-0.0596277900040150,-0.1561718285083771,0.6502593755722046));
res += mul(Get(s3,0,0), float4x4(-0.3231405913829803,-0.0918075963854790,0.1095453202724457,0.0606480054557323,0.5792109966278076,0.3198658823966980,-0.0275598466396332,-0.4871259927749634,0.0621131807565689,-0.2413239628076553,-0.0003290408931207,-0.0810910239815712,-0.2778805196285248,0.0758799463510513,-0.1658881157636642,0.0509399920701981));
res += mul(Get(s4,0,0), float4x4(0.7859585285186768,-0.1054795756936073,-0.8159707188606262,0.4052451848983765,0.3487731814384460,0.0857175588607788,-0.7086606025695801,-0.5448406338691711,-0.3119281530380249,0.1365334987640381,0.3307079076766968,0.3455780446529388,-0.4404906928539276,-0.2155434787273407,0.0016632983461022,0.0475350022315979));
res += mul(Get(s5,0,0), float4x4(-0.8313665390014648,-0.0222277995198965,0.8182767033576965,-0.4817346334457397,-0.2738753557205200,0.2835025191307068,0.1289402544498444,-0.1018225625157356,0.3792117238044739,0.0399263389408588,-0.1353749185800552,0.2867909371852875,0.7680450081825256,0.0105543052777648,0.3739423155784607,-0.3404364883899689));
res += mul(Get(s0,0,dy), float4x4(-0.1317407935857773,-0.2216243296861649,-0.2813684344291687,-0.0230585150420666,0.1376007795333862,-0.0328922905027866,0.0645290166139603,0.2414775043725967,0.1114659607410431,-0.1275980323553085,0.0277997013181448,-0.5816723704338074,-0.0466513298451900,-0.2455635368824005,0.1951493471860886,0.3079332113265991));
res += mul(Get(s1,0,dy), float4x4(-0.2958715558052063,0.2848271429538727,0.0106290895491838,-0.4094718992710114,0.0040658763609827,0.0271351262927055,-0.1314760744571686,-0.3150283694267273,0.1168312504887581,0.0803361982107162,-0.0756340622901917,0.4725605547428131,0.0337526649236679,0.0151721490547061,-0.0360966809093952,-1.0966731309890747));
res += mul(Get(s2,0,dy), float4x4(0.0572634413838387,0.1010055840015411,-0.0965058282017708,-0.3848107755184174,-0.1076692715287209,-0.0451629832386971,0.3224567174911499,0.0377603471279144,0.0399125516414642,0.0642716884613037,-0.0482938066124916,-0.4921064078807831,-0.0562362782657146,0.0505706705152988,0.1085602194070816,0.4502211809158325));
res += mul(Get(s3,0,dy), float4x4(0.1756761223077774,-0.0018953966209665,-0.1714550852775574,-0.0673060417175293,-0.1249727755784988,0.0167623143643141,0.0739552527666092,0.8508581519126892,0.0911768674850464,0.0349254980683327,0.0795846357941628,-0.0892906710505486,-0.0269489828497171,-0.1355087608098984,0.2573805451393127,0.3412373960018158));
res += mul(Get(s4,0,dy), float4x4(-0.1426416486501694,-0.1450467705726624,0.0002681203477550,0.0634515881538391,-0.3983242511749268,0.1186082959175110,0.1678765863180161,-0.3163162767887115,-0.0467414371669292,0.0037177505437285,0.0796472653746605,0.2574520111083984,-0.0535952411592007,0.0571403577923775,-0.0323044583201408,-0.5002884268760681));
res += mul(Get(s5,0,dy), float4x4(0.3093525767326355,0.1090244278311729,-0.3751801848411560,0.1847985237836838,0.4468374550342560,0.1561081707477570,-0.1353552043437958,0.5134029388427734,0.0954211428761482,-0.1336295604705811,0.1219069361686707,-0.3239053189754486,-0.1000789627432823,-0.1590605080127716,-0.1268814951181412,-0.0137913059443235));
res += mul(Get(s0,dx,-dy), float4x4(-0.1128703802824020,0.0954796597361565,-0.0368889756500721,0.1149975955486298,-0.1638595908880234,0.0404010079801083,-0.1097877547144890,-0.0962694585323334,0.0709288194775581,0.0322091281414032,-0.2148351818323135,0.1735085248947144,0.1096338704228401,-0.0870986804366112,-0.0200176555663347,-0.1236340850591660));
res += mul(Get(s1,dx,-dy), float4x4(0.0203553587198257,0.0686386078596115,-0.0207529887557030,0.0717916041612625,-0.0656946450471878,-0.0980095937848091,0.0040565542876720,-0.0700391381978989,-0.1004144623875618,0.0145059032365680,-0.1910631656646729,-0.0118122361600399,0.0475323945283890,-0.0179432760924101,-0.1102283671498299,-0.1327182501554489));
res += mul(Get(s2,dx,-dy), float4x4(-0.0529069080948830,-0.0419030226767063,0.0717940330505371,0.3175431489944458,-0.0076792980544269,-0.1062555983662605,-0.3403640687465668,-0.1106927692890167,0.0907986536622047,-0.0671435296535492,0.2992420792579651,0.1528000384569168,0.0289882719516754,0.0420645289123058,0.1831237673759460,0.1092451885342598));
res += mul(Get(s3,dx,-dy), float4x4(0.0869578495621681,0.1536977142095566,-0.0300888027995825,-0.0806448087096214,-0.0792597234249115,0.0305274371057749,-0.1840785890817642,-0.0071965758688748,-0.0669279992580414,-0.0353387743234634,0.1026008352637291,-0.0349102355539799,0.1465719640254974,-0.0116435727104545,-0.0367800854146481,0.1415040194988251));
res += mul(Get(s4,dx,-dy), float4x4(0.0273767411708832,0.0806151255965233,-0.0259598754346371,0.1442580223083496,-0.1769909560680389,-0.0314084477722645,-0.0560896918177605,0.1081673055887222,-0.0999835655093193,-0.0657480061054230,-0.0662150904536247,-0.0025124005042017,0.1618695408105850,0.0584035553038120,-0.1076105982065201,-0.2070682197809219));
res += mul(Get(s5,dx,-dy), float4x4(-0.1889167428016663,-0.0016794272232801,0.1496000438928604,-0.0827562212944031,-0.0928728878498077,-0.0041016004979610,0.0123755661770701,-0.1143033653497696,0.2082737386226654,-0.0438330955803394,-0.1282657235860825,0.1002017110586166,0.1776486635208130,0.0316095240414143,-0.1076526343822479,0.0219952315092087));
res += mul(Get(s0,dx,0), float4x4(-0.2394731789827347,0.0103381648659706,0.1366610527038574,-0.0655712634325027,-0.1113667860627174,-0.0827874317765236,0.1061722114682198,0.0904584601521492,-0.3774637877941132,0.0976371020078659,-0.0242231301963329,0.1891424804925919,0.0359935648739338,-0.0973769500851631,-0.1973293870687485,-0.2436645179986954));
res += mul(Get(s1,dx,0), float4x4(-0.5271294713020325,-0.1665203273296356,-0.1021191924810410,0.2542356252670288,-0.5176714062690735,0.0041559776291251,0.2961344420909882,-0.6134136319160461,0.1348996609449387,0.0405707657337189,0.1366071403026581,-0.0741690620779991,-0.1060708761215210,0.0133200669661164,-0.0005918984534219,-0.1686436682939529));
res += mul(Get(s2,dx,0), float4x4(-0.1893406808376312,-0.0717963725328445,0.1401941776275635,0.1596744507551193,-0.3271811306476593,-0.0791601464152336,0.1877209842205048,-0.2873046994209290,-0.1475140005350113,0.0788342505693436,0.0242301188409328,0.3109910488128662,0.1738363653421402,-0.0936976298689842,-0.0719714015722275,-0.0602337345480919));
res += mul(Get(s3,dx,0), float4x4(0.1567369699478149,-0.0069681275635958,-0.3335863053798676,-0.0619524456560612,0.2700235545635223,-0.0511003397405148,0.2820757329463959,-0.1567878574132919,0.1659970283508301,-0.0178496688604355,-0.0715747624635696,-0.1277417689561844,0.5606310963630676,-0.0053002657368779,0.1963465511798859,-0.0234651528298855));
res += mul(Get(s4,dx,0), float4x4(0.5110120773315430,0.0410094894468784,0.0042232475243509,0.0662650391459465,0.1159534752368927,0.0721934139728546,-0.2566046118736267,-0.0030475272797048,0.1640451401472092,0.0514434464275837,-0.1352881044149399,-0.0380178056657314,-0.2346118539571762,-0.1103646308183670,0.2589446008205414,-0.1188324093818665));
res += mul(Get(s5,dx,0), float4x4(0.3069100379943848,-0.0281700156629086,-0.1612151414155960,-0.2807098627090454,0.4545372426509857,0.0507703274488449,-0.0227482859045267,0.0594938695430756,0.0138018373399973,0.0796170011162758,0.3635307252407074,0.4612737894058228,-0.4894015491008759,0.0543984547257423,0.0303463451564312,-0.3682124316692352));
res += mul(Get(s0,dx,dy), float4x4(-0.1540034115314484,0.0153216067701578,0.0857541337609291,0.3273595869541168,0.0584656260907650,-0.0761817321181297,-0.0401238091289997,0.0713591948151588,0.1296994537115097,-0.0222016815096140,0.0713900774717331,0.4396038949489594,-0.0758776664733887,0.0374052263796329,-0.0537852309644222,0.2808015942573547));
res += mul(Get(s1,dx,dy), float4x4(0.1065774187445641,-0.1007728800177574,-0.1816737353801727,-0.1602073609828949,0.0440402664244175,0.0419667847454548,-0.1647848784923553,0.2641393840312958,0.0729854032397270,0.0856527313590050,0.0416385792195797,-0.1028235703706741,-0.0080859754234552,-0.0188157092779875,0.0668001025915146,-0.4938160777091980));
res += mul(Get(s2,dx,dy), float4x4(-0.2173407077789307,-0.1478750705718994,0.0528704561293125,-0.5365452766418457,0.0951570346951485,-0.0137461312115192,0.0860210135579109,0.1149558126926422,-0.0110206389799714,0.1030608266592026,-0.2403297722339630,0.0062438221648335,0.1037207320332527,-0.0877167731523514,-0.0909391194581985,0.1259936094284058));
res += mul(Get(s3,dx,dy), float4x4(-0.0713135972619057,-0.0263863913714886,0.1824656724929810,-0.0480956472456455,-0.1186696290969849,-0.2016644775867462,0.0086697656661272,0.2271463274955750,-0.0086513329297304,0.1273799985647202,-0.0321065783500671,0.0001931108854478,0.2291935682296753,0.0474549643695354,-0.0802380666136742,0.3235822319984436));
res += mul(Get(s4,dx,dy), float4x4(0.1963171213865280,-0.0292338337749243,0.0082491189241409,0.1690839529037476,0.1113804802298546,-0.0670410841703415,0.4515228569507599,-0.0411230847239494,0.0300893858075142,-0.0635004118084908,-0.1588969826698303,-0.1298036724328995,0.1265798509120941,-0.0305276960134506,-0.0743011310696602,-0.2280571460723877));
res += mul(Get(s5,dx,dy), float4x4(0.0530276857316494,-0.0590445771813393,-0.2083680778741837,0.2177358716726303,-0.2791423797607422,-0.1759397089481354,-0.0156221175566316,-0.2779793739318848,-0.1427984684705734,0.0632888823747635,-0.1488246768712997,0.0123932594433427,0.0275248028337955,0.1435843855142593,0.1480966210365295,0.4289839565753937));
res = max(float4(0, 0, 0, 0), res) + float4(-0.6198807954788208,-0.8183389306068420,-0.6263523101806641,0.0003661551163532) * min(float4(0, 0, 0, 0), res);
return res;
}