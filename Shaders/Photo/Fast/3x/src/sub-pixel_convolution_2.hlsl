sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float3 res = float3(0.0808946415781975,0.0967240929603577,0.1065380051732063);
res += mul(Get(s0,-dx,-dy), float4x3(0.0086289606988430,-0.0038727507926524,-0.0024516624398530,0.0004022068751510,0.0077213239856064,0.0068716155365109,0.0035391128621995,0.0071527045220137,0.0007129542645998,-0.0063323718495667,-0.0011251424439251,0.0013192972401157));
res += mul(Get(s1,-dx,-dy), float4x3(-0.0114637846127152,0.0247903335839510,0.0248626191169024,-0.0168379470705986,-0.0083134202286601,0.0007055011810735,-0.0043735378421843,0.0068831420503557,0.0012245669495314,-0.0079865939915180,-0.0209184102714062,-0.0218637678772211));
res += mul(Get(s2,-dx,-dy), float4x3(-0.0174895469099283,0.0033832159824669,0.0062870988622308,-0.0136487046256661,-0.0085128508508205,-0.0033080272842199,-0.0035107892472297,-0.0040745963342488,-0.0009133829735219,-0.0182430539280176,-0.0093421274796128,-0.0064161662012339));
res += mul(Get(s0,-dx,0), float4x3(-0.0239740703254938,-0.0095440922304988,0.0128141827881336,-0.0075950413011014,-0.0151333892717957,-0.0007052063010633,0.0185854267328978,0.0291846320033073,0.0110783800482750,0.0045375488698483,0.0003501057799440,-0.0005346378311515));
res += mul(Get(s1,-dx,0), float4x3(0.0412488579750061,0.0482721589505672,0.0134355286136270,-0.0013495314633474,-0.0171295609325171,-0.0184201616793871,-0.0040946356020868,-0.0180480200797319,-0.0181177537888288,-0.0867021903395653,-0.1072385236620903,-0.0751180648803711));
res += mul(Get(s2,-dx,0), float4x3(-0.0743432193994522,-0.0957686007022858,-0.0693676471710205,-0.0094467457383871,0.0064160791225731,0.0093625178560615,-0.0181491766124964,-0.0178987942636013,-0.0117362709715962,-0.0374493487179279,-0.0543758012354374,-0.0381340235471725));
res += mul(Get(s0,-dx,dy), float4x3(0.0036563908215612,-0.0087428390979767,-0.0147397462278605,0.0116033637896180,0.0126243513077497,0.0126909930258989,0.0057059405371547,-0.0040102894417942,-0.0146432844921947,-0.0107777230441570,0.0022673085331917,0.0215349029749632));
res += mul(Get(s1,-dx,dy), float4x3(-0.0037385739851743,-0.0046695163473487,-0.0060684410855174,-0.0064960061572492,-0.0047613065689802,0.0027367942966521,0.0007405172218569,0.0058936150744557,0.0112069388851523,-0.0053175599314272,-0.0003671786689665,-0.0074895150028169));
res += mul(Get(s2,-dx,dy), float4x3(-0.0026004409883171,-0.0056361989118159,-0.0245763454586267,0.0207821168005466,0.0120267225429416,0.0111766653135419,-0.0022186781279743,-0.0071569727733731,-0.0097837597131729,-0.0000738150993129,0.0017845841357484,-0.0152448369190097));
res += mul(Get(s0,0,-dy), float4x3(0.0294241178780794,0.0152218407019973,0.0132227595895529,-0.1338043957948685,0.0125298826023936,0.0195006169378757,0.0897834897041321,-0.0800115019083023,-0.0586128681898117,-0.0186444371938705,0.0359444171190262,0.0281692370772362));
res += mul(Get(s1,0,-dy), float4x3(-0.0468509718775749,0.0226794425398111,0.0093065025284886,-0.0396568030118942,0.0325697436928749,0.0173233821988106,-0.0450370237231255,-0.0110106375068426,0.0011280098697171,0.0344295278191566,-0.0620968602597713,-0.0512050613760948));
res += mul(Get(s2,0,-dy), float4x3(0.0313617959618568,-0.0014042833354324,-0.0059299962595105,0.0192931909114122,-0.0515959896147251,-0.0236395467072725,0.0103498492389917,-0.0003990629920736,0.0051968568004668,0.0507347583770752,-0.0608355440199375,-0.0628444179892540));
res += mul(Get(s0,0,0), float4x3(0.2363687008619308,0.3780227005481720,0.4516170918941498,0.0373975783586502,0.0512022525072098,0.1253007352352142,0.0133195007219911,0.0077860774472356,0.2556178271770477,0.1867382526397705,-0.0590807832777500,-0.1309577673673630));
res += mul(Get(s1,0,0), float4x3(0.0397077500820160,-0.4441798925399780,-0.3388184607028961,0.0331807769834995,0.0064634098671377,-0.0743702873587608,-0.7960424423217773,-0.8008006811141968,-0.6623400449752808,0.1302407681941986,0.3632043004035950,0.1287203729152679));
res += mul(Get(s2,0,0), float4x3(-0.0334158726036549,0.0065613090991974,0.0298743229359388,-0.2819925844669342,0.0045362492091954,0.2184321582317352,0.0442999489605427,0.0492398068308830,0.0255949329584837,0.2705618739128113,0.2861882150173187,0.3431136608123779));
res += mul(Get(s0,0,dy), float4x3(-0.0096292309463024,-0.0051766787655652,0.0419308431446552,-0.0073999115265906,0.0220106914639473,-0.0360600464046001,0.0193719360977411,0.0425006523728371,-0.0333527252078056,0.0045939646661282,-0.0842440351843834,0.0844392180442810));
res += mul(Get(s1,0,dy), float4x3(0.0004875572631136,0.0466295592486858,-0.0835882723331451,-0.0014842315576971,0.0005266306106932,0.0066247172653675,0.0043860198929906,0.0151420030742884,-0.0427493304014206,0.0110494056716561,-0.0389615744352341,0.0339429676532745));
res += mul(Get(s2,0,dy), float4x3(0.0020569632761180,-0.0183776151388884,-0.0135774174705148,0.0234910119324923,0.0591756999492645,0.0199612881988287,-0.0111096389591694,-0.0096870483830571,0.0187679659575224,-0.0112212151288986,0.0015981213655323,0.0249652843922377));
res += mul(Get(s0,dx,-dy), float4x3(-0.0135965272784233,-0.0167166125029325,-0.0091922786086798,-0.0114793032407761,0.0112806577235460,0.0068600201047957,-0.0248790234327316,0.0006920517771505,0.0187837779521942,-0.0078312614932656,-0.0002835933992174,0.0029835174791515));
res += mul(Get(s1,dx,-dy), float4x3(0.0071657677181065,0.0332207344472408,0.0210775360465050,0.0263094399124384,0.0206660982221365,-0.0010789133375511,0.0013873083516955,0.0047204843722284,0.0036443248391151,0.0047291638329625,-0.0081473095342517,-0.0056232414208353));
res += mul(Get(s2,dx,-dy), float4x3(0.0064108958467841,-0.0115535892546177,-0.0121779162436724,0.0089969923719764,-0.0100139901041985,-0.0190027859061956,0.0185201279819012,-0.0039040229748935,-0.0074228164739907,-0.0034456765279174,-0.0005520417471416,0.0050986702553928));
res += mul(Get(s0,dx,0), float4x3(-0.0021707953419536,-0.0086441012099385,-0.0021196058951318,0.0169310588389635,-0.0274127293378115,-0.0262616332620382,0.0147428074851632,0.0018222810467705,-0.0057041430845857,-0.0183868817985058,-0.0012382682180032,0.0009240607614629));
res += mul(Get(s1,dx,0), float4x3(0.0603172220289707,0.0512997210025787,0.0423531085252762,-0.0017189360223711,0.0017709428211674,0.0122681464999914,0.0180523823946714,0.0046442281454802,-0.0050877020694315,-0.0450079813599586,-0.0223376378417015,-0.0375348515808582));
res += mul(Get(s2,dx,0), float4x3(0.0342209190130234,0.0562807209789753,0.0515498556196690,-0.0228803623467684,-0.0103874802589417,0.0032998274546117,0.0284162294119596,0.0476907528936863,0.0431478358805180,0.0261020250618458,0.0259147528558969,0.0124063258990645));
res += mul(Get(s0,dx,dy), float4x3(0.0012305970303714,0.0085377627983689,0.0062903119251132,0.0056479074992239,0.0094212666153908,0.0215877406299114,0.0044242171570659,0.0031689940951765,0.0016355713596568,-0.0086068110540509,-0.0007709427154623,-0.0116236815229058));
res += mul(Get(s1,dx,dy), float4x3(-0.0003088316007052,-0.0079287420958281,0.0030643036589026,0.0005666986107826,0.0037950389087200,0.0061980835162103,-0.0016658952226862,0.0036009273026139,0.0207835771143436,0.0071089402772486,0.0035451359581202,-0.0085943490266800));
res += mul(Get(s2,dx,dy), float4x3(-0.0067284144461155,0.0038333071861416,0.0084733860567212,0.0030378839001060,-0.0028217092622072,-0.0108742350712419,0.0003157550527249,0.0019548502750695,0.0082303974777460,-0.0013080737553537,-0.0046132695861161,0.0067899231798947));
return float4(res, 0);
}