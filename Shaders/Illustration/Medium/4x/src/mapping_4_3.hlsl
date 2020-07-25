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
float4 res = float4(0.0598774589598179,0.0036805903073400,-0.0341551713645458,-0.0090460730716586);
res += mul(Get(s0,-dx,-dy), float4x4(0.0155381364747882,-0.0477568544447422,0.0125664481893182,-0.0612930282950401,0.0444546267390251,-0.0225652735680342,0.0148079991340637,0.0281433612108231,-0.1349953263998032,0.0194791965186596,0.1202883943915367,-0.0149478875100613,0.0053849965333939,0.0282144173979759,-0.0048904763534665,-0.0261405315250158));
res += mul(Get(s1,-dx,-dy), float4x4(-0.0369879528880119,-0.0196135044097900,-0.0089625604450703,-0.0856078192591667,0.0129891624674201,-0.0409569628536701,-0.0407266318798065,0.0672552436590195,-0.0179877392947674,0.0323972031474113,-0.0519521944224834,-0.0546960830688477,0.0445867292582989,-0.0344697535037994,0.0460725091397762,-0.0196271408349276));
res += mul(Get(s2,-dx,-dy), float4x4(-0.0442266575992107,0.0357669852674007,0.0626238882541656,0.0306946821510792,0.0278344955295324,0.0491463914513588,0.0385768190026283,0.4614472389221191,-0.0724979043006897,0.0240533258765936,0.0405529625713825,-0.1821150034666061,0.0085389260202646,0.0349992103874683,-0.0189196486026049,0.0568772144615650));
res += mul(Get(s3,-dx,-dy), float4x4(0.0272469799965620,0.0162788350135088,0.0101958205923438,-0.1419807374477386,0.0636845454573631,-0.0200554039329290,0.0402807742357254,-0.0093362834304571,0.0884393155574799,0.0159154869616032,-0.0231718011200428,-0.0952362790703773,0.0338641777634621,-0.0300380680710077,-0.0182373877614737,-0.0028245511930436));
res += mul(Get(s4,-dx,-dy), float4x4(0.0100426496937871,-0.0409448295831680,-0.0896428972482681,0.1969695091247559,0.0059602078981698,-0.0163105409592390,-0.0047534909099340,0.1371629834175110,0.0048465691506863,-0.0043178722262383,0.0204756148159504,-0.0210094582289457,-0.0389771871268749,0.0042927111499012,0.0171065926551819,-0.0066660190932453));
res += mul(Get(s5,-dx,-dy), float4x4(0.0387791283428669,-0.0156436190009117,0.0022821123711765,0.0087206466123462,0.0332516469061375,0.0117228459566832,-0.0465794168412685,0.0108693288639188,-0.1487530916929245,0.0290008876472712,0.0496648959815502,-0.1987798213958740,-0.0153842885047197,0.0197400674223900,-0.0843807384371758,0.2195026427507401));
res += mul(Get(s0,-dx,0), float4x4(-0.0694509074091911,-0.0362252332270145,-0.0928813889622688,-0.3305242955684662,-0.0571527071297169,-0.0311244111508131,-0.0386720523238182,0.0148132834583521,0.1553002297878265,-0.0924195498228073,-0.0677483975887299,-0.5412073135375977,0.1169418469071388,-0.0694889873266220,-0.0754331648349762,0.0520790666341782));
res += mul(Get(s1,-dx,0), float4x4(-0.0207634586840868,0.0353163555264473,0.0239155907183886,-0.2430693805217743,0.0058691599406302,-0.0016004737699404,-0.0245648976415396,0.0619352310895920,-0.1402928084135056,0.1762405931949615,0.0145958820357919,-0.1252873837947845,0.0059322360903025,-0.0417404100298882,-0.0716010257601738,-0.1591033935546875));
res += mul(Get(s2,-dx,0), float4x4(0.0327276475727558,-0.0501054152846336,0.0378371961414814,-0.2228428125381470,0.0821857228875160,-0.1303705871105194,-0.0258630979806185,0.2185111641883850,0.0923244208097458,-0.0560978911817074,0.1040839552879333,-0.4470113217830658,0.1325320303440094,0.0153254084289074,0.0526940040290356,0.1325938254594803));
res += mul(Get(s3,-dx,0), float4x4(-0.0873421579599380,0.0842441245913506,-0.0584392547607422,-0.2404917776584625,0.0094145154580474,0.0334915481507778,0.0647600963711739,-0.2946516573429108,0.0169226489961147,0.0060628838837147,-0.0363831594586372,-0.0632830113172531,-0.0044161304831505,0.0134212020784616,0.0678422600030899,0.0161932669579983));
res += mul(Get(s4,-dx,0), float4x4(0.0510681085288525,0.0190762076526880,-0.0608307085931301,0.0156729724258184,-0.0121975056827068,0.0213845167309046,-0.0057533513754606,-0.1410466432571411,0.0082570640370250,-0.0024072823580354,-0.0320428423583508,-0.0331284962594509,-0.0139698917046189,0.0399948172271252,0.0654340684413910,0.0350375324487686));
res += mul(Get(s5,-dx,0), float4x4(-0.1287172436714172,0.0458194687962532,0.0149327041581273,0.0384216383099556,-0.0609110780060291,-0.1075250804424286,-0.0706397742033005,-0.0097918976098299,0.0609922036528587,0.0153090246021748,-0.0130046028643847,-0.4430141150951385,-0.1303632706403732,-0.0391375459730625,-0.1126878038048744,-0.0238508339971304));
res += mul(Get(s0,-dx,dy), float4x4(0.0064070830121636,0.0562734901905060,0.0094257257878780,0.0061061405576766,-0.0223944988101721,-0.0045786104165018,-0.0019138931529596,-0.0239421706646681,0.0126617169007659,0.0552914291620255,-0.0647531449794769,-0.0658844187855721,-0.0966722592711449,-0.0362548343837261,-0.0581942610442638,0.0122303571552038));
res += mul(Get(s1,-dx,dy), float4x4(0.0541653335094452,0.0194044932723045,-0.0201050937175751,-0.0195767246186733,0.0542800314724445,-0.0505672171711922,0.0073197311721742,0.0838654339313507,-0.0835410356521606,0.0392804630100727,-0.0214606262743473,0.0064897635020316,-0.0357992611825466,0.0620753802359104,0.0137275774031878,0.1462753415107727));
res += mul(Get(s2,-dx,dy), float4x4(0.1330271959304810,0.0246414393186569,-0.0115545932203531,-0.2050257176160812,-0.0380725003778934,-0.0120160542428493,0.0117913065478206,-0.1990977823734283,0.0718949586153030,-0.0175784863531590,0.0646502599120140,-0.1035284250974655,-0.0410777591168880,0.0167823862284422,0.0153429396450520,-0.0158728957176208));
res += mul(Get(s3,-dx,dy), float4x4(-0.0593296810984612,0.0059157307259738,0.0116732409223914,-0.1559347659349442,0.0232516154646873,-0.0096214236691594,0.0793587118387222,-0.0635625943541527,-0.0466780401766300,0.0523408763110638,-0.0033691797871143,0.0043468126095831,0.2270182520151138,-0.1383219063282013,0.0583601333200932,0.2827317714691162));
res += mul(Get(s4,-dx,dy), float4x4(0.1245145127177238,-0.0419940724968910,0.0593237467110157,0.3086122870445251,0.0791936516761780,-0.0504964105784893,0.0170594528317451,-0.0214664023369551,-0.0232582744210958,0.0013410629471764,0.0104721309617162,-0.0408706180751324,-0.0049080741591752,0.0124450596049428,-0.0196721348911524,-0.0601647384464741));
res += mul(Get(s5,-dx,dy), float4x4(-0.0530046895146370,0.0012401080457494,-0.0154978642240167,0.1473639756441116,-0.1330373436212540,0.0630392506718636,-0.0740676447749138,0.0868124812841415,-0.0298953652381897,0.0518742464482784,-0.0160901024937630,-0.0002240512985736,0.0100827934220433,-0.0001132001343649,0.0428340248763561,0.1546685695648193));
res += mul(Get(s0,0,-dy), float4x4(0.0732516273856163,0.0136070856824517,0.0192421693354845,-0.1871027946472168,0.0490100532770157,0.0006503176409751,-0.0561342611908913,0.0786266550421715,0.0404146201908588,-0.0147369224578142,-0.0559187158942223,0.2530657947063446,-0.1085046902298927,0.1010062322020531,0.1686330735683441,-0.1534252166748047));
res += mul(Get(s1,0,-dy), float4x4(-0.0960592404007912,0.0848287567496300,0.1094466894865036,0.0262502469122410,0.0379738993942738,-0.0560785904526711,-0.0629016086459160,-0.0216664876788855,0.0552926808595657,-0.1012114360928535,-0.1969247758388519,-0.1534847915172577,0.0158165916800499,-0.0509266145527363,0.0478072166442871,-0.0462449342012405));
res += mul(Get(s2,0,-dy), float4x4(-0.0015302316751331,0.0203860420733690,-0.0258982516825199,0.1429488360881805,0.0596400275826454,-0.0325286351144314,-0.1509039551019669,-0.3590011298656464,-0.0367071405053139,0.0059499531053007,0.1359021812677383,-0.1759023070335388,-0.1262966543436050,-0.0193303283303976,0.0760895311832428,-0.0758561044931412));
res += mul(Get(s3,0,-dy), float4x4(0.0398608259856701,0.0764075294137001,-0.0169755127280951,0.1109093800187111,0.1167116761207581,-0.0780909135937691,-0.0649098902940750,0.2380775660276413,0.1898060888051987,-0.1517716050148010,-0.1684572994709015,-0.1633612364530563,-0.0340778380632401,-0.0016580683877692,0.0311164110898972,-0.0632633566856384));
res += mul(Get(s4,0,-dy), float4x4(0.0532596185803413,0.0174412857741117,0.0366474501788616,0.1987273991107941,-0.0117355957627296,-0.0454194508492947,0.0563243962824345,-0.0455653518438339,0.1073399558663368,-0.0624982602894306,-0.0334037952125072,0.0193056873977184,0.0031401680316776,-0.0014907274162397,-0.0609329156577587,-0.0038762900512666));
res += mul(Get(s5,0,-dy), float4x4(-0.0088957073166966,-0.0210291054099798,0.1513374298810959,-0.0945657640695572,-0.0066885044798255,0.0341754555702209,0.1027554720640182,-0.2241591662168503,-0.1228584423661232,0.0453580692410469,0.1959117203950882,0.0450129657983780,-0.1462695300579071,0.0485735610127449,0.1826977878808975,-0.1445406079292297));
res += mul(Get(s0,0,0), float4x4(-0.2235486358404160,-0.2396121025085449,0.3490208983421326,-0.1654506921768188,-0.0728235915303230,0.0124311707913876,-0.2185236066579819,0.2009371072053909,0.1634335219860077,0.0819312632083893,0.1155835613608360,0.5489832758903503,0.2479036301374435,-0.0978043898940086,-0.1649413406848907,-0.3914623856544495));
res += mul(Get(s1,0,0), float4x4(0.1086309477686882,-0.0135158244520426,-0.1734814047813416,0.2849190831184387,0.0447751656174660,0.0579854547977448,0.1494598388671875,-0.2581610381603241,-0.2729317545890808,0.3525229394435883,-0.1430149227380753,0.0436848774552345,-0.0260612647980452,-0.1108543351292610,0.1420034021139145,-0.3296969830989838));
res += mul(Get(s2,0,0), float4x4(0.0414501763880253,0.1145782768726349,-0.0771494060754776,0.5440787076950073,0.0388144589960575,-0.0034577914047986,0.1123762503266335,-0.2666200399398804,0.1040698289871216,0.0233673080801964,0.0527546815574169,-0.2284180670976639,0.3833779394626617,0.1351526081562042,-0.1407903283834457,-0.3472825288772583));
res += mul(Get(s3,0,0), float4x4(-0.0985648185014725,-0.0443871468305588,-0.0972635820508003,0.4768398702144623,-0.1102020591497421,0.0709170252084732,0.0769288465380669,-0.0661263242363930,-0.1170716136693954,0.2148777693510056,0.0597738735377789,0.0735836625099182,0.1075831949710846,-0.0464406348764896,0.0995826497673988,-0.2806461453437805));
res += mul(Get(s4,0,0), float4x4(0.1595252901315689,-0.1408029496669769,-0.0770229324698448,0.1423826515674591,-0.0578979402780533,0.0217647869139910,0.0920910388231277,-0.4141099452972412,-0.1564899682998657,0.0534027032554150,0.3947692215442657,-0.5003043413162231,-0.1361729800701141,0.1241994947195053,-0.1190992370247841,0.2263659983873367));
res += mul(Get(s5,0,0), float4x4(0.0699579566717148,-0.1590480208396912,0.0765497311949730,-0.3833222985267639,0.1746653616428375,-0.1251222491264343,-0.2564875483512878,-0.1914020627737045,0.0202457010746002,-0.0412203781306744,-0.0211197305470705,0.3678614199161530,0.0436499603092670,-0.0674003213644028,-0.0073236529715359,-0.6180292367935181));
res += mul(Get(s0,0,dy), float4x4(0.0640732198953629,-0.0968954712152481,-0.0556951500475407,-0.1035116165876389,-0.2468413561582565,0.2037580758333206,0.0471330210566521,0.3743846118450165,0.0644368752837181,0.0101270908489823,0.0390450805425644,0.0794065147638321,-0.1968663781881332,-0.0776066482067108,-0.1093393340706825,-0.1742611527442932));
res += mul(Get(s1,0,dy), float4x4(-0.0216328464448452,-0.0742531493306160,0.0082903625443578,-0.0045038070529699,0.0897778347134590,-0.0420223549008369,-0.1045900657773018,-0.0969557166099548,-0.1462171375751495,-0.0761848315596581,0.1196948960423470,-0.1775201559066772,0.0771116912364960,0.1147382333874702,-0.0231383796781301,-0.0465986691415310));
res += mul(Get(s2,0,dy), float4x4(-0.0095018353313208,0.0480778217315674,0.0323253422975540,0.1895775645971298,0.0224940106272697,0.0759981945157051,0.0375874824821949,0.3847702145576477,-0.0135964220389724,0.0407962352037430,0.0719719827175140,-0.0858813300728798,-0.1650285720825195,0.0668953508138657,0.0075614764355123,0.0253610033541918));
res += mul(Get(s3,0,dy), float4x4(-0.0250933058559895,-0.0498252734541893,0.0108530633151531,-0.0287624970078468,0.0314971394836903,-0.0219915471971035,0.0281806048005819,0.2142271548509598,-0.1114085540175438,0.0385156720876694,-0.0166773013770580,-0.2001660168170929,0.0996110811829567,-0.0268607698380947,0.0414765179157257,-0.3058683276176453));
res += mul(Get(s4,0,dy), float4x4(0.0924255624413490,0.0049095363356173,-0.0451524704694748,0.4949879646301270,0.1474516242742538,-0.0266703609377146,0.1000656336545944,-0.1472160369157791,0.1052678152918816,-0.0747120156884193,0.0597462803125381,-0.1652370393276215,-0.0373447909951210,0.0361798517405987,0.0311780273914337,0.0927016511559486));
res += mul(Get(s5,0,dy), float4x4(0.0557350181043148,-0.1248472407460213,-0.0405216291546822,-0.0548541173338890,-0.2467237114906311,-0.0509409941732883,-0.0291343964636326,0.1540534794330597,0.0023797887843102,-0.0705157667398453,-0.0392104834318161,0.0104442993178964,-0.2481046468019485,-0.0192385967820883,0.0318755134940147,0.2390456497669220));
res += mul(Get(s0,dx,-dy), float4x4(0.0300737712532282,-0.0432785153388977,-0.0651782900094986,0.0734275877475739,-0.0234893821179867,0.0409681499004364,0.0000193552914425,0.0354055538773537,-0.0704785734415054,0.0360790044069290,-0.0110424552112818,-0.1072174459695816,-0.0871831774711609,0.0247121714055538,0.0199895706027746,0.0120628979057074));
res += mul(Get(s1,dx,-dy), float4x4(-0.0042380471713841,-0.0036614530254155,0.0012585314689204,-0.0243605412542820,0.0126339979469776,-0.0246382672339678,-0.0310666915029287,0.1493793874979019,0.0908180326223373,0.0095823388546705,-0.0528796538710594,-0.1472150832414627,0.0370775461196899,0.0125949708744884,-0.0245540831238031,0.0491385795176029));
res += mul(Get(s2,dx,-dy), float4x4(-0.0163638927042484,0.0612799189984798,-0.0833056345582008,-0.0014370684511960,0.1369607001543045,-0.0877261236310005,-0.1004588529467583,0.1462445557117462,-0.0092293126508594,0.0294075738638639,0.0543625317513943,0.0311590339988470,-0.0040295971557498,0.0028298259712756,0.0560751371085644,-0.0303117949515581));
res += mul(Get(s3,dx,-dy), float4x4(0.0097776930779219,0.0123463533818722,-0.0333744175732136,-0.0453889816999435,-0.0081662908196449,0.0085105895996094,0.0275421161204576,-0.0668484941124916,0.1114448830485344,-0.0113679468631744,0.0076335845515132,-0.1417480111122131,-0.1878869980573654,0.0182550679892302,0.1434990614652634,-0.2372904419898987));
res += mul(Get(s4,dx,-dy), float4x4(0.0089010801166296,-0.0177731048315763,-0.0053617693483829,0.0656321048736572,-0.0503509789705276,0.0351223759353161,0.0324595831334591,-0.0088891768828034,0.0559129156172276,0.0213819257915020,0.0166399404406548,-0.1246059834957123,0.0137448906898499,-0.0086775319650769,0.0266465656459332,-0.0616881623864174));
res += mul(Get(s5,dx,-dy), float4x4(0.0127450367435813,-0.0491067916154861,-0.0184121411293745,0.1871302425861359,0.0028115117456764,0.0069066081196070,0.0235553625971079,0.1098022609949112,-0.0484044179320335,0.0343024283647537,0.0219287127256393,-0.0158603154122829,-0.0107901915907860,-0.0277886968106031,-0.0224597305059433,0.0143658556044102));
res += mul(Get(s0,dx,0), float4x4(-0.0485272705554962,0.0924061760306358,-0.0300632230937481,0.2417259961366653,0.0691625252366066,-0.0016338247805834,-0.0624388270080090,0.1112135127186775,0.0445317663252354,0.0063620237633586,0.0562901683151722,-0.1499199420213699,0.0781193897128105,0.0220780689269304,-0.1199509203433990,0.1536166220903397));
res += mul(Get(s1,dx,0), float4x4(0.0821136161684990,0.0339482910931110,-0.0080434530973434,-0.0385246574878693,0.0617719441652298,-0.0674235522747040,-0.0929724797606468,0.2357105314731598,-0.1533306539058685,0.1375127583742142,-0.0173391550779343,0.0584359690546989,-0.0121116964146495,-0.1348706036806107,-0.0058641266077757,-0.0832149907946587));
res += mul(Get(s2,dx,0), float4x4(0.0402476973831654,0.0421595200896263,-0.0041136448271573,0.0665829107165337,-0.2351597398519516,0.1066113039851189,0.0975582674145699,0.2162841558456421,0.0739280730485916,-0.0129458187147975,0.0557332821190357,0.0672242045402527,0.1040858998894691,-0.1156057119369507,0.0181436501443386,-0.1831857711076736));
res += mul(Get(s3,dx,0), float4x4(0.0057231900282204,0.0315753258764744,0.0094215087592602,-0.2699233889579773,0.0296852849423885,-0.0824625566601753,-0.0684422850608826,-0.1935779601335526,0.0118577126413584,0.0490690283477306,0.0152029152959585,0.1001634672284126,0.2292436063289642,-0.0111530190333724,-0.0353584811091423,0.0941868573427200));
res += mul(Get(s4,dx,0), float4x4(-0.0558118782937527,0.1033652797341347,0.0264383684843779,0.0271876864135265,-0.0559832341969013,-0.0294682662934065,0.0659704655408859,-0.0263887867331505,-0.0807434692978859,0.0335112661123276,0.0759118571877480,0.1621534079313278,-0.0915666818618774,0.0992316156625748,0.0062696915119886,-0.1663759499788284));
res += mul(Get(s5,dx,0), float4x4(-0.1243207827210426,-0.0004536034830380,-0.0400538332760334,0.2008394598960876,0.2027038037776947,-0.0536503382027149,-0.0400893352925777,-0.0543721839785576,0.0566565543413162,-0.0685861036181450,0.0428501218557358,-0.2287504076957703,-0.0790548920631409,0.0006536267464980,-0.0638329759240150,0.0317889079451561));
res += mul(Get(s0,dx,dy), float4x4(-0.0683839693665504,0.0111382910981774,-0.0366044938564301,0.1330215930938721,0.0444216467440128,0.0324585512280464,-0.0231699980795383,0.1025137975811958,0.0775652751326561,-0.0048384764231741,0.0317874997854233,0.0781345814466476,-0.1245442852377892,0.0475675016641617,-0.0572796091437340,0.0393242053687572));
res += mul(Get(s1,dx,dy), float4x4(-0.0254599880427122,-0.0247519481927156,0.0232378449290991,0.1160609722137451,-0.0874754637479782,0.0111691169440746,-0.0621557533740997,0.1501625478267670,-0.1263993531465530,0.0862618535757065,-0.0205289181321859,0.0154113732278347,-0.0535239763557911,-0.0884875282645226,-0.0200512949377298,0.0959339365363121));
res += mul(Get(s2,dx,dy), float4x4(0.1063668206334114,-0.0019699132535607,0.0433751493692398,0.0912376120686531,0.2711283564567566,-0.0717164203524590,-0.0294114779680967,-0.3880428373813629,0.0208874382078648,-0.0530289970338345,0.0287724249064922,-0.0444429144263268,-0.0139272855594754,-0.0132525153458118,0.0304898358881474,-0.0945882648229599));
res += mul(Get(s3,dx,dy), float4x4(-0.0692185685038567,0.0004553865292110,0.0270445626229048,-0.0562677234411240,-0.0418927967548370,0.0317646190524101,0.0075217420235276,-0.0375608690083027,-0.0360873043537140,0.0089700734242797,0.0293255746364594,0.0033448883332312,-0.0474617183208466,-0.1017871573567390,0.0266804229468107,0.0076063368469477));
res += mul(Get(s4,dx,dy), float4x4(0.1264993250370026,0.0005240176105872,-0.0300583448261023,-0.2522585391998291,0.1061908826231956,-0.0323949716985226,0.0135810952633619,-0.1167144998908043,-0.0097228139638901,-0.0503029711544514,0.0019795852713287,0.0142789511010051,0.0080419704318047,0.0401640459895134,0.0109716812148690,-0.0715584531426430));
res += mul(Get(s5,dx,dy), float4x4(-0.0987898632884026,0.0179890077561140,-0.0381372198462486,0.2220310121774673,-0.1487193852663040,0.0628146454691887,-0.0309191327542067,0.0009402952273376,-0.0351478829979897,-0.0734589174389839,0.0566012039780617,-0.0380399003624916,-0.0388494841754436,-0.0136085730046034,0.0598572418093681,-0.1850588619709015));
res = max(float4(0, 0, 0, 0), res) + float4(-0.5758419632911682,0.7830986976623535,1.6283956766128540,0.0138910338282585) * min(float4(0, 0, 0, 0), res);
return res;
}