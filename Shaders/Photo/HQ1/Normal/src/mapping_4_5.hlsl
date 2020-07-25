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
float4 res = float4(0.0284779332578182,-0.0939084365963936,-0.0761318728327751,-0.1549808681011200);
res += mul(Get(s0,-dx,-dy), float4x4(0.0337658822536469,0.1161202043294907,-0.3310273587703705,-0.1427810937166214,0.0212253015488386,-0.0554718151688576,-0.0588083788752556,-0.0089112324640155,0.0748699977993965,0.0880449563264847,-0.0008825014811009,0.0427606366574764,-0.0210139490664005,0.1004167273640633,0.1802503764629364,0.0866019427776337));
res += mul(Get(s1,-dx,-dy), float4x4(-0.0697140917181969,-0.0032929182052612,0.1579524278640747,-0.0150162847712636,-0.0430110991001129,0.1148567721247673,0.3552842736244202,-0.0940649062395096,-0.0188480578362942,-0.0053729391656816,0.0334511548280716,-0.0811276659369469,0.0285040065646172,-0.1378682404756546,0.0951945260167122,0.0576292239129543));
res += mul(Get(s2,-dx,-dy), float4x4(0.1008848771452904,-0.0188177023082972,-0.0337591841816902,-0.1377437859773636,0.0504275895655155,0.1327809393405914,-0.0724043026566505,-0.0056766546331346,-0.0962261632084846,0.0296056903898716,-0.1678567677736282,-0.1496834307909012,0.0165483858436346,0.0074777984991670,0.0049960496835411,0.1871136873960495));
res += mul(Get(s3,-dx,-dy), float4x4(-0.0358295962214470,0.1808683425188065,-0.0784721001982689,0.0458479262888432,-0.0363834276795387,-0.0994630753993988,0.0738229528069496,0.0715851783752441,-0.0101253325119615,-0.1430796235799789,0.0109684942290187,0.0330859087407589,0.0055339690297842,-0.0381397642195225,0.0380307100713253,-0.1053034290671349));
res += mul(Get(s4,-dx,-dy), float4x4(-0.0205471776425838,-0.1298085302114487,-0.2542795836925507,-0.0122487982735038,0.0555395409464836,0.0168601945042610,0.0292467661201954,0.0358587503433228,-0.0182516798377037,-0.2005122005939484,0.1519130915403366,0.1705044955015182,0.0071095568127930,-0.0091277249157429,0.3482407331466675,0.0725572481751442));
res += mul(Get(s5,-dx,-dy), float4x4(-0.0166736505925655,0.0080166133120656,-0.3542249500751495,0.0723157972097397,0.1452444046735764,0.1198093593120575,-0.2205630689859390,-0.0515343435108662,-0.0554474703967571,-0.0342440083622932,-0.0738776847720146,0.0299743413925171,-0.0207759812474251,-0.0430816560983658,0.0203104596585035,-0.0426311604678631));
res += mul(Get(s0,-dx,0), float4x4(0.0895783454179764,0.0906566455960274,-0.0765512809157372,-0.2006550282239914,-0.0417927652597427,0.1349326819181442,-0.0777244344353676,-0.2067342996597290,0.0191134233027697,0.1805986016988754,0.0980918183922768,-0.0745944380760193,0.0805622562766075,-0.0617439262568951,0.0117695843800902,0.0986112728714943));
res += mul(Get(s1,-dx,0), float4x4(-0.1416192054748535,0.0234626978635788,-0.2921594083309174,-0.4849348962306976,-0.0376646630465984,0.0692479461431503,-0.4565688371658325,-0.1950540691614151,-0.0724645629525185,0.2416983097791672,-0.1454493850469589,-0.1965934038162231,0.1010976284742355,-0.2982601523399353,-0.2022206634283066,0.2152406573295593));
res += mul(Get(s2,-dx,0), float4x4(-0.0686063542962074,0.1388253420591354,-0.0942368209362030,-0.7568000555038452,-0.0458022132515907,0.1998676210641861,0.1032035201787949,-0.0615923516452312,-0.0821643769741058,-0.0290956888347864,-0.5309399962425232,-0.0021537241991609,0.0476315319538116,0.0208887122571468,-0.0405761115252972,0.2921261787414551));
res += mul(Get(s3,-dx,0), float4x4(-0.0687988176941872,-0.2922972738742828,0.0363932140171528,0.0132863307371736,0.0282974280416965,-0.2258625477552414,0.1050877869129181,0.1520242094993591,0.0137255955487490,-0.0873290970921516,-0.2123622298240662,0.1734553873538971,-0.0466232635080814,-0.0861810818314552,-0.0879840701818466,-0.2375677078962326));
res += mul(Get(s4,-dx,0), float4x4(0.0354767218232155,-0.2351257950067520,-0.0582337640225887,0.2298785895109177,0.0088371029123664,-0.1830338090658188,-0.1919917166233063,0.0691849514842033,0.0119070056825876,-0.1890261173248291,0.1822771579027176,0.2281440943479538,-0.0370949283242226,0.0642644092440605,-0.0813508778810501,-0.0142104486003518));
res += mul(Get(s5,-dx,0), float4x4(0.0269948597997427,-0.3513939678668976,-0.0697967261075974,-0.0505167767405510,-0.1474038213491440,0.3831046819686890,0.2985264062881470,-0.1403921395540237,-0.0879628285765648,0.1722667217254639,-0.0725850537419319,-0.0770766362547874,-0.0774134024977684,0.2131838947534561,-0.0669629722833633,-0.1588090360164642));
res += mul(Get(s0,-dx,dy), float4x4(-0.0347704216837883,0.0459465347230434,-0.0918306186795235,-0.0361573621630669,-0.0135814165696502,0.1478279381990433,-0.0783261656761169,-0.0842674002051353,0.0454897955060005,-0.0608231835067272,0.0385262519121170,0.0182827990502119,0.0203134790062904,0.0628899484872818,-0.1125517860054970,-0.0601078122854233));
res += mul(Get(s1,-dx,dy), float4x4(-0.0649182870984077,-0.0143124628812075,-0.0211187899112701,0.0061300932429731,0.0755382776260376,0.0166011415421963,-0.3042367398738861,0.0389074794948101,0.0489774160087109,0.1064300388097763,0.0477840006351471,-0.0959795117378235,-0.0323394313454628,-0.2008760124444962,-0.0420378521084785,0.0548545569181442));
res += mul(Get(s2,-dx,dy), float4x4(-0.1336739510297775,0.1502818167209625,0.0112218400463462,0.0073714866302907,0.0203275457024574,0.1428582370281219,0.0164253078401089,-0.0200357921421528,-0.0052790753543377,-0.0915200635790825,0.1126661971211433,0.0037123926449567,0.0877136290073395,-0.0635542273521423,0.0263823401182890,0.1195411607623100));
res += mul(Get(s3,-dx,dy), float4x4(-0.0033061464782804,-0.0886730477213860,-0.1065047532320023,-0.0204203724861145,-0.0626587569713593,-0.2052254676818848,-0.0820067226886749,0.0177720226347446,0.1555137187242508,0.0230000019073486,0.1399905681610107,0.2306033819913864,-0.0166499447077513,-0.0008222965407185,0.1175910979509354,-0.0296288803219795));
res += mul(Get(s4,-dx,dy), float4x4(-0.0717315301299095,-0.1085565388202667,0.0540515109896660,0.0611523985862732,-0.0391982868313789,0.0925457999110222,-0.1284898072481155,-0.0021906672045588,0.0492292977869511,-0.1223761662840843,-0.0026077935472131,0.0934756919741631,0.0033009552862495,0.0678793191909790,0.1263325661420822,0.0609805658459663));
res += mul(Get(s5,-dx,dy), float4x4(-0.0059103826060891,-0.0157038811594248,-0.0439336374402046,0.0379480682313442,-0.0289330463856459,0.3184888362884521,-0.2971124351024628,0.0761204734444618,0.1017908304929733,-0.0208702348172665,0.0472488105297089,0.1363367140293121,-0.0798240751028061,-0.1121835187077522,-0.0867586359381676,-0.0425658486783504));
res += mul(Get(s0,0,-dy), float4x4(0.0011023581027985,-0.0477027408778667,-0.3230148255825043,0.0097575075924397,-0.1013693809509277,-0.0510493442416191,-0.2141040414571762,-0.0428169965744019,-0.1766057610511780,-0.0667756050825119,0.2417201846837997,-0.1068080812692642,-0.0584890134632587,0.1175220683217049,0.0917938128113747,0.1648269593715668));
res += mul(Get(s1,0,-dy), float4x4(-0.1092508211731911,-0.1827052235603333,0.2218626141548157,0.0507853142917156,-0.0036628395318985,-0.1196844726800919,0.3722093999385834,0.0407352596521378,-0.1662853956222534,-0.0261789131909609,0.1240231320261955,0.0152903376147151,0.0607259720563889,-0.0407991036772728,0.0870653912425041,-0.0833139196038246));
res += mul(Get(s2,0,-dy), float4x4(-0.0396841168403625,0.0088824331760406,0.1666799485683441,0.0301438178867102,0.0689752027392387,-0.0515204071998596,0.0036570192314684,0.0688526257872581,-0.0012595352018252,0.0300732683390379,-0.2047047615051270,0.1324441879987717,0.1836409121751785,-0.0036928947083652,0.0752554982900620,-0.0074816863052547));
res += mul(Get(s3,0,-dy), float4x4(0.0331111475825310,-0.0548944249749184,-0.0083840489387512,-0.0383503772318363,0.0909141451120377,-0.0095737641677260,-0.0031198107171804,0.0442204624414444,0.0348796434700489,0.1688217073678970,-0.0412299633026123,0.0628695711493492,-0.0013778050197288,-0.2182341963052750,-0.1507019251585007,0.1062411367893219));
res += mul(Get(s4,0,-dy), float4x4(0.0282043050974607,0.2029165923595428,-0.1232180222868919,0.1579955071210861,-0.0210030507296324,0.1066078469157219,0.1313701570034027,-0.0049564046785235,-0.0027748283464462,0.0056449300609529,0.1548556238412857,-0.1515322774648666,0.0228284038603306,-0.1740079820156097,0.1075525209307671,-0.0906626880168915));
res += mul(Get(s5,0,-dy), float4x4(0.0954252406954765,0.0393785536289215,-0.2910354435443878,-0.0011187993222848,-0.1222334876656532,-0.3255087435245514,-0.3363546729087830,0.1764517873525620,-0.0514133833348751,0.0022608938161284,0.0368877500295639,-0.0255732126533985,-0.0858295634388924,-0.1955966502428055,-0.0060862968675792,0.0756079182028770));
res += mul(Get(s0,0,0), float4x4(0.2459546625614166,-0.0288968645036221,0.0551939532160759,0.2239517867565155,-0.0015160219045356,-0.2553218305110931,-0.0493084453046322,-0.1078677475452423,0.2567357718944550,-0.1961906403303146,0.0239576026797295,0.2477931827306747,-0.1117044463753700,0.1093096137046814,-0.2027977555990219,0.1795308142900467));
res += mul(Get(s1,0,0), float4x4(-0.2524517178535461,-0.1719658374786377,-0.3967574834823608,-0.5732761621475220,-0.0318191871047020,-0.1265108585357666,-0.5118011236190796,0.1140947937965393,0.0356322787702084,-0.1413280069828033,-0.4939927756786346,-0.0878195986151695,-0.1818812042474747,0.1905537247657776,-0.2277402430772781,-0.3574356734752655));
res += mul(Get(s2,0,0), float4x4(-0.1990318894386292,-0.2826604247093201,-0.4851943850517273,-0.0315511897206306,0.2121085524559021,-0.0914261490106583,-0.1039791405200958,0.1811749786138535,-0.2160146534442902,0.0878630280494690,-0.1692956835031509,0.0642400681972504,0.0201634708791971,0.2051967978477478,-0.0715547427535057,-0.0715746283531189));
res += mul(Get(s3,0,0), float4x4(-0.1661463677883148,0.1446869075298309,-0.2462739944458008,0.0314986035227776,-0.0165734179317951,0.2690566182136536,0.0108620021492243,-0.1545742005109787,0.1006178334355354,0.1238575205206871,-0.1327148377895355,0.1446222513914108,0.0680911839008331,-0.1106197237968445,-0.2107619792222977,0.1231799349188805));
res += mul(Get(s4,0,0), float4x4(-0.3305778801441193,-0.0253504384309053,0.0156801640987396,-0.0362544208765030,-0.0204748567193747,0.3019877374172211,-0.2222650945186615,-0.0851507112383842,0.2043629288673401,0.0374828688800335,-0.0873586311936378,-0.5307633876800537,0.0039368593133986,-0.1276710778474808,0.0261506568640471,0.0634451955556870));
res += mul(Get(s5,0,0), float4x4(-0.1485539674758911,0.2515905201435089,-0.0399628207087517,0.0743915587663651,0.1111149340867996,-0.1929749101400375,0.1565044075250626,0.0645682886242867,0.2244020998477936,-0.1015214473009109,-0.1127127185463905,0.0794935598969460,-0.0618473961949348,-0.2305843979120255,0.1185107082128525,0.2598988115787506));
res += mul(Get(s0,0,dy), float4x4(-0.0201852638274431,-0.0810449719429016,-0.0562038458883762,0.0947137176990509,-0.0208644885569811,-0.2533070147037506,0.0510621890425682,-0.0359151735901833,-0.1561906635761261,0.1015959158539772,0.0137335704639554,-0.0783241018652916,-0.0156560074537992,-0.1093226224184036,0.0029350570403039,0.1004640311002731));
res += mul(Get(s1,0,dy), float4x4(-0.1090765520930290,-0.0816505253314972,-0.1100298240780830,-0.0821595788002014,-0.0703782513737679,-0.0439422875642776,-0.1801862567663193,-0.0586310625076294,-0.0135353542864323,-0.0638006106019020,0.2896882295608521,-0.0631547123193741,0.0210181269794703,0.0392778739333153,0.0635184571146965,-0.0220865663141012));
res += mul(Get(s2,0,dy), float4x4(0.0137310791760683,0.0106701413169503,-0.0121286036446691,-0.0353750772774220,-0.0031258983071893,-0.0650715008378029,-0.0522595457732677,0.0308698806911707,0.0191986598074436,0.0489572174847126,0.2860629558563232,-0.0869973972439766,0.0634790062904358,0.1769229471683502,-0.0318406894803047,0.0632678642868996));
res += mul(Get(s3,0,dy), float4x4(0.0792206153273582,-0.0371425412595272,0.0553356595337391,-0.0246233735233545,0.0177443940192461,0.1543729454278946,-0.0125320870429277,0.0161258261650801,0.1231775060296059,0.2881414592266083,0.2187795937061310,0.1601372808218002,-0.0045618712902069,-0.1821634173393250,0.2553147673606873,-0.0643912628293037));
res += mul(Get(s4,0,dy), float4x4(0.0638329982757568,0.2659312784671783,-0.0797939077019691,-0.1230262070894241,0.0126549946144223,-0.0535181388258934,0.0063963700085878,-0.0934182330965996,0.1145971491932869,-0.0322017036378384,0.0686409696936607,-0.0747189298272133,0.0264401268213987,0.0020490610040724,0.2291185110807419,0.0320411622524261));
res += mul(Get(s5,0,dy), float4x4(-0.0843976289033890,0.1966448873281479,-0.4358301758766174,-0.0340551771223545,-0.1123750582337379,0.1044307574629784,-0.2609592080116272,-0.1543160080909729,0.0128502091392875,-0.0525855906307697,0.1101162582635880,-0.0919374600052834,0.0334058105945587,-0.0706684365868568,0.0708187445998192,0.0860905498266220));
res += mul(Get(s0,dx,-dy), float4x4(-0.1141357421875000,0.0471802465617657,-0.1704585105180740,0.0127967353910208,0.0334463417530060,-0.0690674558281898,0.0069978986866772,-0.0316635109484196,0.0025348162744194,0.1518973112106323,0.0963749364018440,0.0417544730007648,-0.0471328534185886,0.1686576604843140,0.1817823648452759,-0.0464660748839378));
res += mul(Get(s1,dx,-dy), float4x4(0.1083089932799339,0.1716673672199249,0.1217634230852127,0.1467076241970062,0.0952199697494507,0.1437678039073944,0.2067506015300751,0.1453053653240204,0.1385709047317505,0.0365517772734165,0.1133850812911987,-0.0029543214477599,0.1157798022031784,0.0705126971006393,-0.0538655482232571,0.1320065855979919));
res += mul(Get(s2,dx,-dy), float4x4(0.0080018751323223,-0.2050903439521790,0.1059157252311707,0.0464226491749287,0.0311409626156092,0.1705955564975739,0.0317197181284428,-0.0351384207606316,-0.0243443287909031,-0.0866426229476929,-0.0438434258103371,-0.2264609187841415,0.0034542116336524,0.1590687185525894,-0.0540610142052174,0.0046862177550793));
res += mul(Get(s3,dx,-dy), float4x4(-0.0454796701669693,0.0621509477496147,0.1083696857094765,-0.0335355289280415,-0.0189817175269127,-0.0672168359160423,-0.0308254584670067,0.0449719503521919,0.0208996720612049,0.0569475777447224,0.0362941958010197,0.0293370243161917,-0.0289178453385830,0.0843954011797905,-0.0422988198697567,0.1200215518474579));
res += mul(Get(s4,dx,-dy), float4x4(-0.1386196166276932,-0.3535731434822083,-0.0461855642497540,0.0522650443017483,-0.0900536701083183,-0.1289837807416916,-0.1064422056078911,-0.0247037857770920,0.0738374441862106,-0.0301143005490303,0.0541241355240345,-0.0110236555337906,0.0355387218296528,-0.1896497905254364,0.0301941502839327,-0.0199232362210751));
res += mul(Get(s5,dx,-dy), float4x4(-0.1020461693406105,-0.0082465596497059,-0.2100256979465485,-0.0050450419075787,-0.1287697255611420,0.1571028679609299,-0.5892655253410339,0.0538661368191242,-0.0030415819492191,-0.1109780147671700,0.0948350355029106,-0.0394195169210434,-0.0342036746442318,0.0782300755381584,-0.0853099524974823,-0.0452270768582821));
res += mul(Get(s0,dx,0), float4x4(-0.1448711901903152,0.2847857475280762,0.1141982153058052,-0.1031942591071129,0.0942934527993202,-0.0612427704036236,0.0010794567642733,0.0534063987433910,0.1149619743227959,0.3064256310462952,-0.1102073043584824,0.0023898365907371,0.0192144345492125,0.1713351607322693,-0.1515780985355377,-0.0958770960569382));
res += mul(Get(s1,dx,0), float4x4(-0.0595523007214069,-0.4355408251285553,-0.0230572763830423,0.2564638555049896,-0.0746619105339050,0.1696668118238449,0.0679512545466423,-0.0338939502835274,0.0074523808434606,-0.0451129898428917,-0.1816658228635788,0.0433046929538250,-0.0262692030519247,0.0087518682703376,0.0425059758126736,0.2353105843067169));
res += mul(Get(s2,dx,0), float4x4(0.1273569911718369,-0.3494936227798462,0.1513073891401291,0.1399275958538055,0.0730387344956398,0.1013002321124077,-0.2410560548305511,0.0283763706684113,0.0562595911324024,0.1450700610876083,-0.0229091402143240,-0.2327398657798767,-0.1796108186244965,0.0783735662698746,0.0459667555987835,-0.0207528192549944));
res += mul(Get(s3,dx,0), float4x4(0.1332940906286240,-0.3255618512630463,-0.1494716703891754,-0.0889297649264336,0.0910123065114021,-0.2550275921821594,-0.1006771177053452,-0.2812182605266571,-0.0138158304616809,0.1409389227628708,-0.0884401127696037,-0.0082040010020137,0.0470308065414429,0.1022511050105095,0.2099363356828690,0.0424590036273003));
res += mul(Get(s4,dx,0), float4x4(0.2134977430105209,0.1509246677160263,0.1549566388130188,-0.2665109336376190,-0.1248007267713547,-0.2413202971220016,-0.0306040104478598,-0.0238135270774364,-0.0122235929593444,-0.2494830042123795,-0.0820884853601456,0.1167304664850235,-0.0597442090511322,-0.0216911081224680,0.1721588969230652,-0.0882278829813004));
res += mul(Get(s5,dx,0), float4x4(-0.0766313225030899,-0.1041378229856491,0.0732707604765892,-0.0276887994259596,-0.2007301449775696,0.0307783801108599,-0.1313402354717255,0.2118488699197769,0.0762920156121254,0.0428453832864761,-0.0377362035214901,-0.0731584802269936,0.0538099706172943,0.0338838212192059,0.0708951950073242,-0.0145988641306758));
res += mul(Get(s0,dx,dy), float4x4(-0.0344122983515263,0.1648545265197754,0.0851404964923859,0.0230849552899599,-0.0570262074470520,0.1013187393546104,-0.0183944739401340,0.0235736556351185,0.0345676466822624,-0.0406171791255474,0.0514118485152721,-0.0415853261947632,-0.0223184730857611,0.0105671184137464,-0.0527012161910534,-0.0808539614081383));
res += mul(Get(s1,dx,dy), float4x4(0.0166834164410830,0.0370559319853783,0.0401502288877964,-0.0139593705534935,-0.0220814198255539,0.0793906003236771,0.1069349870085716,-0.0547678023576736,0.0043081836774945,-0.0949697569012642,0.0901632755994797,-0.0665429532527924,-0.0120533406734467,0.1505499482154846,-0.0555379986763000,0.1018436327576637));
res += mul(Get(s2,dx,dy), float4x4(0.0484919324517250,-0.0907720476388931,-0.0402690917253494,0.0576913766562939,0.0546194352209568,0.2198078930377960,0.0408533737063408,0.0069297556765378,-0.0795034468173981,0.0130919432267547,0.0159286223351955,0.0009805818554014,-0.0829493179917336,-0.0953324511647224,0.0697563439607620,-0.0296599846333265));
res += mul(Get(s3,dx,dy), float4x4(0.0497437790036201,-0.0282463282346725,-0.0385726317763329,0.0611442700028419,-0.0284108854830265,-0.1782064586877823,-0.0670867487788200,-0.0381614379584789,0.0067431256175041,0.0638505890965462,0.2489199042320251,-0.0201607961207628,-0.0053955186158419,0.0393363945186138,0.0309013109654188,-0.0049928850494325));
res += mul(Get(s4,dx,dy), float4x4(0.1369159668684006,-0.3426160812377930,0.0213318616151810,0.2160638570785522,-0.0467285290360451,-0.1275618374347687,-0.0146041736006737,0.0385149829089642,-0.0061959396116436,-0.0739623084664345,0.0127395931631327,-0.0416933633387089,-0.0236956626176834,0.1025370806455612,0.0261970125138760,0.0485195182263851));
res += mul(Get(s5,dx,dy), float4x4(0.0258224960416555,0.0102288722991943,-0.0030992815736681,0.0239992495626211,0.2290253192186356,0.0464985705912113,0.1058596447110176,-0.0349514335393906,0.0050843777135015,0.0155326034873724,-0.0552636645734310,-0.0258118230849504,-0.0801014080643654,0.0672703683376312,0.0400738194584846,-0.0047307438217103));
res = max(float4(0, 0, 0, 0), res) + float4(0.9722276329994202,-0.0224801637232304,0.0484572388231754,0.0679646283388138) * min(float4(0, 0, 0, 0), res);
return res;
}