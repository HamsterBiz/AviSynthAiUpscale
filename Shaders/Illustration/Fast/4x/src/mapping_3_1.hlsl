sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.0207847915589809,-0.0153972180560231,-0.1303903460502625,0.0254873670637608);
res += mul(Get(s0,-dx,-dy), float4x4(-0.1555901467800140,-0.0202130004763603,0.0953949913382530,-0.0819849818944931,-0.0739011913537979,-0.0041234297677875,0.1412985920906067,0.0701984763145447,-0.3078151643276215,-0.0103795779868960,0.0564386993646622,-0.0393803976476192,0.0081872921437025,0.0468897633254528,0.1769725829362869,0.0905126556754112));
res += mul(Get(s1,-dx,-dy), float4x4(0.1202768161892891,-0.0500168390572071,-0.2660374641418457,0.0132487677037716,0.1796061396598816,0.0124491406604648,0.1038203537464142,-0.1748248040676117,-0.1273000091314316,-0.1121261268854141,0.1384361535310745,-0.0085715493187308,0.0097433291375637,0.0436870530247688,-0.0808067098259926,-0.0117613226175308));
res += mul(Get(s2,-dx,-dy), float4x4(0.4687378406524658,-0.0072235967963934,-0.2769990563392639,0.0089959530159831,-0.0118153588846326,0.0235832314938307,-0.2682502269744873,-0.1065256223082542,0.0605290122330189,-0.1112120077013969,-0.1289878189563751,0.3056150376796722,-0.1224200874567032,0.0253140442073345,0.1894036680459976,0.0116270156577229));
res += mul(Get(s0,-dx,0), float4x4(0.0475213751196861,0.0231068003922701,-0.0175826940685511,0.0109702283516526,0.3080378770828247,0.0942010655999184,-0.2326803356409073,0.0654640719294548,-0.1371634900569916,0.1024827212095261,-0.0984755307435989,-0.1742933839559555,0.1838420033454895,-0.1210848316550255,-0.0684613808989525,0.2472501993179321));
res += mul(Get(s1,-dx,0), float4x4(0.0200318433344364,0.0649834349751472,0.0706315711140633,-0.0564651861786842,0.1526502966880798,0.0748960152268410,-0.2623334527015686,-0.3686217963695526,-0.1046532094478607,0.1002673879265785,0.0058935224078596,-0.0685378313064575,0.0343163199722767,0.0558809638023376,-0.0139379575848579,-0.1041708737611771));
res += mul(Get(s2,-dx,0), float4x4(0.3342112898826599,-0.0017963650170714,0.0634932667016983,0.2758362889289856,-0.1807093173265457,0.0163407083600760,0.3396139740943909,-0.1820610016584396,-0.1326735764741898,-0.0345211587846279,0.2174080312252045,-0.0033138170838356,-0.0860414952039719,0.0589801259338856,-0.0658811926841736,0.1081256717443466));
res += mul(Get(s0,-dx,dy), float4x4(0.0678893774747849,0.0019291844218969,-0.1598007082939148,0.0080233421176672,0.2369516640901566,-0.1347024887800217,0.2129801958799362,0.1385042667388916,-0.0648440197110176,0.0048057893291116,0.0929334238171577,-0.1337634176015854,0.0821730047464371,-0.0350538305938244,0.0819518044590950,0.1205939725041389));
res += mul(Get(s1,-dx,dy), float4x4(-0.0724965557456017,-0.0340857915580273,0.1401621699333191,0.0154274832457304,-0.0956808403134346,0.0115162469446659,0.2033952623605728,0.0693953260779381,0.0342162773013115,0.0480398871004581,-0.1254409700632095,0.1329375505447388,0.0379294194281101,0.0235852897167206,0.0542869605123997,0.0320333801209927));
res += mul(Get(s2,-dx,dy), float4x4(0.2293605655431747,-0.0718845725059509,-0.0864544808864594,0.1245509684085846,-0.2285683602094650,0.0015361532568932,0.2923304736614227,-0.1836544573307037,0.0565726496279240,0.0865791738033295,-0.2523418962955475,-0.0068797497078776,0.0141612589359283,0.0273966584354639,-0.1547427028417587,-0.0046589341945946));
res += mul(Get(s0,0,-dy), float4x4(-0.0802987068891525,-0.0307656805962324,0.1813966333866119,-0.0117070907726884,0.2632904946804047,0.1010221466422081,0.5526229739189148,0.0320096909999847,0.3569817841053009,0.0740848481655121,0.1667520850896835,-0.1515779793262482,-0.1456453949213028,-0.1070224940776825,0.2534673810005188,-0.1962011158466339));
res += mul(Get(s1,0,-dy), float4x4(0.0792016685009003,0.0190344396978617,-0.4420626759529114,0.1231101900339127,0.3558170497417450,0.0670983716845512,0.0441733226180077,-0.2068635225296021,-0.1807866841554642,0.0807980522513390,0.2998547852039337,-0.1224219575524330,-0.0520411059260368,0.0076525048352778,-0.0357009731233120,0.0229579806327820));
res += mul(Get(s2,0,-dy), float4x4(-0.4636558592319489,-0.0816968381404877,-0.6636301875114441,0.2560656368732452,0.1499913483858109,-0.0243249591439962,-0.9746302962303162,-0.1712298244237900,-0.4455417692661285,-0.0521196350455284,0.3312573432922363,-0.0545135773718357,-0.1252865493297577,0.1502071917057037,0.2290423959493637,0.1672998815774918));
res += mul(Get(s0,0,0), float4x4(-0.2634005546569824,0.2674999535083771,0.1413217335939407,0.4797642529010773,-0.4788350462913513,-0.1482191681861877,-0.2906521856784821,0.7140107750892639,0.0852009952068329,0.0380105786025524,-0.2242104411125183,0.1137736141681671,-0.7489202618598938,-0.1170797944068909,-0.0352978333830833,0.0591233558952808));
res += mul(Get(s1,0,0), float4x4(0.7344537377357483,0.7690873742103577,0.3237351477146149,0.2941739261150360,0.2718815505504608,-0.2909762263298035,-0.3457030057907104,-0.4039272069931030,0.1455652862787247,0.8531856536865234,0.1896800249814987,-0.6491841673851013,0.1145130693912506,-0.0281961429864168,-0.0135014997795224,-0.0868382379412651));
res += mul(Get(s2,0,0), float4x4(-0.6161801815032959,0.1856446713209152,0.4647773504257202,0.2620378434658051,-0.1062161698937416,-0.0403515100479126,0.5645283460617065,-0.0442099943757057,0.0167289376258850,0.2491887062788010,-0.1387258172035217,0.4462904930114746,-0.0753885954618454,-0.0019730220083147,-0.1372442543506622,-0.0111538842320442));
res += mul(Get(s0,0,dy), float4x4(-0.0312382057309151,-0.0016444697976112,-0.5518709421157837,0.0001392267149640,-0.1704465597867966,0.1749249249696732,-0.0800798460841179,0.1901890039443970,-0.0292333979159594,-0.0258656442165375,0.1524595767259598,-0.1171709522604942,0.0111019304022193,0.0167831964790821,-0.1330470144748688,-0.0894754081964493));
res += mul(Get(s1,0,dy), float4x4(-0.0186529271304607,0.0407451726496220,0.1019895896315575,0.0350829511880875,0.2112770378589630,-0.1446994096040726,0.3444946408271790,0.2095183134078979,-0.0662078037858009,0.0288043394684792,-0.0428008176386356,0.1159762218594551,-0.0087061431258917,-0.0113399354740977,0.1051894053816795,0.1095220148563385));
res += mul(Get(s2,0,dy), float4x4(-0.0999700427055359,0.1335768252611160,-0.1974654197692871,-0.0030043111182749,-0.0170883946120739,-0.0055056749843061,0.2736127078533173,-0.1196230500936508,-0.1634779274463654,0.0453945621848106,-0.4182458221912384,0.1673737317323685,0.0254209041595459,0.0335098914802074,-0.1955339759588242,-0.0545789524912834));
res += mul(Get(s0,dx,-dy), float4x4(0.1906159520149231,-0.0110145974904299,0.2208364754915237,0.0089195566251874,0.1159319952130318,-0.0979367569088936,0.1608904153108597,0.0092792781069875,-0.0037206553388387,0.0365034565329552,-0.0558628886938095,-0.0857483670115471,0.2088349461555481,0.0401830896735191,0.0944058895111084,0.0405047535896301));
res += mul(Get(s1,dx,-dy), float4x4(-0.0479980558156967,0.0443250313401222,-0.2246287018060684,0.0306233912706375,0.1957661807537079,-0.0564436540007591,-0.1281470060348511,0.1410447806119919,-0.0208129379898310,0.0651508346199989,-0.0307368580251932,0.0626728758215904,-0.0797572731971741,-0.0034078473690897,-0.0865383818745613,0.0304666738957167));
res += mul(Get(s2,dx,-dy), float4x4(-0.0872775465250015,-0.1053051799535751,-0.2697298526763916,0.0078313238918781,-0.0932668745517731,0.0166424643248320,-0.1991537511348724,-0.0282739289104939,0.1703788787126541,0.1174852550029755,0.3430664539337158,-0.0288515016436577,-0.1999112516641617,-0.0038607639726251,0.1124080494046211,-0.0142186991870403));
res += mul(Get(s0,dx,0), float4x4(-0.1283175647258759,-0.0428014360368252,0.0553521215915680,0.0824843272566795,-0.1502348482608795,-0.0117983231320977,0.1765117794275284,0.0872647687792778,-0.3820557892322540,-0.0304854046553373,-0.0704160258173943,-0.0884652733802795,0.2646029591560364,-0.1101296618580818,-0.2052603811025620,0.1601846069097519));
res += mul(Get(s1,dx,0), float4x4(-0.1987002938985825,-0.0771206319332123,0.0345334187150002,-0.1424408257007599,0.2877847850322723,0.0017153412336484,0.0458834283053875,0.4098184704780579,-0.1378544718027115,-0.0366247482597828,-0.1556116938591003,0.1280977874994278,0.0320350974798203,0.0258785504847765,-0.1047367230057716,-0.1146957054734230));
res += mul(Get(s2,dx,0), float4x4(-0.3290889859199524,-0.0453218780457973,0.1040576398372650,-0.2685403525829315,0.2709796726703644,-0.0113234501332045,0.2802375555038452,-0.0874635428190231,-0.3677747547626495,-0.1848613768815994,-0.1394981443881989,0.2037403285503387,-0.1293249726295471,0.0497887879610062,-0.1174478381872177,-0.0928103923797607));
res += mul(Get(s0,dx,dy), float4x4(-0.0375039353966713,0.0417021252214909,-0.3438335955142975,0.0965570136904716,-0.0186751615256071,-0.0025877272710204,-0.2566080987453461,-0.2337401509284973,0.0908411890268326,0.0465838611125946,-0.0289775971323252,0.0360930413007736,0.1819863021373749,0.0126828933134675,0.2608852088451385,0.0453104563057423));
res += mul(Get(s1,dx,dy), float4x4(-0.0804607719182968,-0.1172804087400436,0.1470123827457428,-0.1576160639524460,0.1025231480598450,-0.0848116278648376,0.1585708856582642,0.1800179630517960,-0.1318979859352112,-0.1082445979118347,-0.2678385972976685,-0.0642274916172028,-0.0865515694022179,-0.0031606103293598,0.0913653820753098,0.0749880149960518));
res += mul(Get(s2,dx,dy), float4x4(0.0434333905577660,0.0257558580487967,0.0502650104463100,0.0239503383636475,0.1613757908344269,-0.1067299619317055,0.3456356823444366,0.0452973283827305,-0.2353653013706207,0.0971112400293350,0.0173883419483900,-0.3537124693393707,-0.0164952222257853,0.0175174474716187,-0.1172369644045830,-0.0525859333574772));
res = max(float4(0, 0, 0, 0), res) + float4(-0.1235762462019920,1.0170748233795166,0.1025059223175049,2.8870396614074707) * min(float4(0, 0, 0, 0), res);
return res;
}