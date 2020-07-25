sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += mul(Get(s0,-dx,-dy), float4x4(-0.060966651886702,-0.038708060979843,-0.071840763092041,-0.030955532565713,0.019959378987551,0.061059076339006,-0.034546285867691,0.007261355407536,0.072261855006218,0.008767825551331,0.014368344098330,0.005629017017782,0.031231159344316,-0.058664884418249,0.061622712761164,0.000715380301699));
res += mul(Get(s0,-dx,0), float4x4(-0.045662447810173,-0.010355396196246,0.005509926937521,0.007121160160750,0.070027112960815,0.075498767197132,-0.028077753260732,-0.021145977079868,0.085132114589214,-0.052739657461643,0.048566870391369,-0.038542248308659,0.105085819959641,-0.047417540103197,0.079637147486210,0.003668879624456));
res += mul(Get(s0,-dx,dy), float4x4(-0.070069521665573,0.042089905589819,0.026803601533175,0.012737806886435,0.044091083109379,0.006994931958616,-0.005635384470224,0.014996567741036,-0.064627364277840,-0.080383971333504,0.000496874097735,-0.074515938758850,0.029406184330583,-0.042254082858562,0.011601399630308,-0.045986916869879));
res += mul(Get(s0,0,-dy), float4x4(0.052520461380482,-0.057933494448662,-0.019731191918254,-0.104806199669838,-0.020544325932860,0.023695101961493,-0.061409164220095,0.110699400305748,-0.012215395458043,-0.015299824066460,-0.022163566201925,0.016549635678530,0.096792496740818,0.022726504132152,-0.006233196239918,0.029457123950124));
res += mul(Get(s0,0,0), float4x4(-0.021051665768027,-0.058416098356247,0.017324596643448,0.009098257869482,-0.029249994084239,0.089034125208855,-0.103444457054138,0.105901688337326,0.114298552274704,-0.085245572030544,0.006599799264222,0.058407176285982,0.006335386540741,0.072302460670471,-0.062199566513300,0.053197417408228));
res += mul(Get(s0,0,dy), float4x4(-0.056101087480783,0.023160470649600,0.007892393507063,0.129197508096695,0.051567818969488,0.105554565787315,-0.068890891969204,0.047357514500618,-0.046828463673592,-0.027772763743997,0.033890999853611,0.030996149405837,-0.008735108189285,-0.001896069850773,-0.012085155583918,-0.003093042410910));
res += mul(Get(s0,dx,-dy), float4x4(0.039158001542091,0.042482722550631,0.022302227094769,-0.150036379694939,-0.010784414596856,-0.050327733159065,0.005539003759623,0.084309846162796,0.024408739060163,-0.003181241452694,0.039948921650648,-0.019105542451143,0.035857047885656,0.111465699970722,-0.081856310367584,0.023731216788292));
res += mul(Get(s0,dx,0), float4x4(-0.060234121978283,0.009474676102400,0.056589398533106,-0.032115347683430,-0.024539206176996,-0.075859263539314,-0.035014532506466,0.181676298379898,-0.033859454095364,0.000365892570699,-0.043090131133795,-0.068822100758553,0.049058247357607,0.105935275554657,0.004775485489517,0.071031279861927));
res += mul(Get(s0,dx,dy), float4x4(-0.088808469474316,0.049413193017244,-0.049443062394857,0.031177122145891,-0.011153603903949,0.051541894674301,-0.026900637894869,0.069265715777874,-0.063677132129669,0.031156787648797,-0.023731460794806,0.010841578245163,0.001850400818512,0.049444131553173,-0.039634920656681,-0.005715187173337));
res += mul(Get(s1,-dx,-dy), float4x4(-0.141659542918205,-0.038163285702467,0.090248614549637,-0.015287116169930,-0.046653874218464,-0.046367231756449,0.090029798448086,0.033661745488644,0.012210557237267,0.029849581420422,0.023523194715381,0.039119604974985,0.045814432203770,-0.002677466254681,0.009525801055133,-0.014738002792001));
res += mul(Get(s1,-dx,0), float4x4(-0.034466251730919,-0.030236572027206,0.006698543671519,0.063250169157982,-0.041838582605124,0.043504010885954,-0.019433749839664,0.043570298701525,-0.091548219323158,0.079450793564320,0.020973227918148,0.021666809916496,0.015603368170559,0.027921494096518,-0.013751246966422,-0.067914612591267));
res += mul(Get(s1,-dx,dy), float4x4(-0.083183646202087,0.027377013117075,0.067231528460979,-0.003867164254189,0.092939153313637,-0.011587995104492,0.027072208002210,-0.028245821595192,-0.012428920716047,0.035290367901325,0.030657570809126,0.006577907130122,-0.014645187184215,0.021462969481945,0.010097513906658,-0.030031276866794));
res += mul(Get(s1,0,-dy), float4x4(-0.106887951493263,-0.027321979403496,0.082298412919044,-0.000803456816357,-0.068250410258770,-0.058589145541191,0.036415074020624,0.028235897421837,0.009702504612505,-0.000456974608824,-0.016447257250547,0.064894393086433,0.022750291973352,-0.047445967793465,0.003949006553739,0.052387949079275));
res += mul(Get(s1,0,0), float4x4(-0.061634447425604,-0.075466275215149,0.134692788124084,0.005308464635164,-0.014328469522297,0.007424039766192,0.024348108097911,0.090565472841263,-0.100676372647285,0.081879518926144,-0.017511727288365,0.087835989892483,-0.059187691658735,-0.043968789279461,-0.018303366377950,0.090200826525688));
res += mul(Get(s1,0,dy), float4x4(-0.051538821309805,-0.053193621337414,0.109629280865192,0.007410624995828,-0.039736665785313,0.095691360533237,-0.112568326294422,-0.020378008484840,-0.011955899186432,-0.001813961658627,0.025223845615983,-0.030415834859014,-0.035949546843767,-0.010194618254900,0.015776574611664,0.075142949819565));
res += mul(Get(s1,dx,-dy), float4x4(-0.023534506559372,-0.079149246215820,0.070612542331219,-0.038443628698587,-0.125973775982857,-0.070177674293518,0.047882322221994,0.007821376435459,0.012070260010660,-0.048027094453573,-0.086046941578388,0.066171318292618,0.023821718990803,-0.049264352768660,-0.002260001841933,0.024302877485752));
res += mul(Get(s1,dx,0), float4x4(-0.017317811027169,-0.131724968552589,0.062701418995857,-0.011384209617972,-0.081626541912556,-0.079519972205162,-0.022743906825781,0.036520477384329,-0.069581709802151,0.010897437110543,0.000274948426522,0.094824872910976,-0.028378374874592,-0.092626072466373,-0.038836326450109,0.087473936378956));
res += mul(Get(s1,dx,dy), float4x4(0.035225741565228,-0.056530229747295,0.116024687886238,0.039055652916431,-0.011098090559244,0.023943968117237,0.020616708323359,-0.009193025529385,0.010856371372938,-0.032211787998676,0.065753221511841,-0.004258522763848,-0.024224393069744,-0.067547731101513,-0.062326654791832,0.089212715625763));
res += mul(Get(s2,-dx,-dy), float4x4(-0.030542552471161,0.095721662044525,-0.077997423708439,0.058138065040112,0.023279303684831,-0.000962838297710,-0.021850742399693,-0.022289568558335,0.000040417711716,-0.045175448060036,-0.030092189088464,-0.031207339838147,0.061636719852686,0.042708657681942,-0.035433143377304,-0.036150310188532));
res += mul(Get(s2,-dx,0), float4x4(0.082367353141308,0.021983267739415,-0.054647393524647,0.004458422306925,0.003834738628939,0.001651620725170,-0.021494751796126,-0.009226588532329,-0.060833767056465,-0.023799140006304,-0.035409815609455,-0.041873387992382,0.014591006562114,0.101275846362114,-0.039182957261801,0.073984414339066));
res += mul(Get(s2,-dx,dy), float4x4(0.098732143640518,-0.038757190108299,-0.044798299670219,-0.001048915553838,0.009446896612644,-0.003251116024330,-0.021127067506313,-0.006353927310556,-0.062050510197878,-0.014250439591706,-0.031567603349686,-0.039946418255568,0.048983089625835,0.058514632284641,-0.013827665708959,-0.007722167763859));
res += mul(Get(s2,0,-dy), float4x4(-0.049798008054495,0.055337142199278,-0.080894179642200,0.060701306909323,0.015029142610729,-0.010617499239743,-0.020522970706224,-0.001211637747474,0.049130387604237,-0.021405646577477,0.051251202821732,-0.019141923636198,-0.086039446294308,-0.035375162959099,-0.016531679779291,-0.005011001601815));
res += mul(Get(s2,0,0), float4x4(0.114302568137646,0.056390240788460,0.010711524635553,-0.017481368035078,-0.003717501182109,-0.008418021723628,-0.013987926766276,-0.001916300505400,-0.015420528128743,-0.018719878047705,-0.025659609586000,0.005171942058951,-0.068457692861557,-0.017881259322166,-0.016873458400369,-0.015734435990453));
res += mul(Get(s2,0,dy), float4x4(0.114853434264660,-0.034697066992521,-0.029557339847088,0.015331796370447,0.001178383594379,-0.012059210799634,0.004695868585259,-0.015385378152132,0.006451627239585,-0.008212416432798,-0.056325867772102,-0.001876044203527,-0.046565249562263,0.044249460101128,-0.067004553973675,-0.060309659689665));
res += mul(Get(s2,dx,-dy), float4x4(0.058372005820274,0.075819030404091,0.078778579831123,0.030409615486860,-0.000838898762595,-0.006172293331474,-0.024639593437314,0.010997223667800,0.064709253609180,0.016972471028566,0.065048091113567,-0.034507125616074,-0.121344350278378,-0.048983372747898,0.005507371388376,-0.097831644117832));
res += mul(Get(s2,dx,0), float4x4(0.084145024418831,0.097681201994419,0.059853717684746,0.041777718812227,-0.007119239307940,0.001607022830285,-0.011298133060336,0.006363519933075,0.091849878430367,-0.058445159345865,0.081946700811386,-0.001972304657102,-0.117555789649487,-0.038698237389326,0.050024922937155,-0.087410338222980));
res += mul(Get(s2,dx,dy), float4x4(0.026917122304440,0.033882308751345,-0.063590936362743,0.055650953203440,-0.003888674313203,0.003850747831166,0.010271826758981,-0.013204782269895,0.080148063600063,-0.078112356364727,0.024537330493331,-0.002026351401582,-0.028667479753494,-0.008973391726613,0.070393003523350,-0.049457699060440));
res += mul(Get(s3,-dx,-dy), float4x4(-0.086290009319782,-0.037725072354078,-0.003113409038633,0.053224127739668,0.073649398982525,0.033490784466267,0.027597259730101,-0.017679180949926,0.017432315275073,-0.040184013545513,0.030623693019152,0.019772157073021,-0.115742996335030,-0.009460546076298,0.031188776716590,-0.018449671566486));
res += mul(Get(s3,-dx,0), float4x4(0.018109394237399,-0.040659628808498,-0.008642980828881,0.041589617729187,0.024522190913558,0.021499095484614,0.041076857596636,-0.027911735698581,-0.025543928146362,-0.015008462592959,0.034220073372126,-0.015834167599678,-0.050614953041077,-0.016347536817193,0.001405172632076,-0.030065074563026));
res += mul(Get(s3,-dx,dy), float4x4(-0.109070375561714,-0.019536042585969,-0.025391893461347,0.041596625000238,0.014284770004451,-0.070256292819977,0.037120107561350,0.018643969669938,0.020932903513312,0.007972422055900,0.091352231800556,-0.031481783837080,0.081968948245049,-0.020013913512230,0.062552772462368,-0.038629360496998));
res += mul(Get(s3,0,-dy), float4x4(0.059173610061407,0.017318516969681,0.038924802094698,-0.020178457722068,-0.000245987379458,-0.051586315035820,-0.049904499202967,0.050026848912239,0.009597836062312,-0.049204722046852,-0.003725310321897,0.011268795467913,-0.097201675176620,-0.029974445700645,-0.011201595887542,-0.029527587816119));
res += mul(Get(s3,0,0), float4x4(0.007197853177786,-0.013226551003754,-0.074011228978634,-0.037499282509089,0.033492613583803,-0.067975498735905,-0.019923256710172,0.049397934228182,-0.092946022748947,-0.068074837327003,-0.058824699372053,0.030876008793712,-0.069671154022217,0.036986082792282,-0.064114212989807,-0.036707937717438));
res += mul(Get(s3,0,dy), float4x4(0.014033830724657,0.006036953534931,-0.009036622010171,0.059267651289701,-0.039882455021143,-0.046845756471157,-0.010862277820706,0.006061792373657,-0.030009472742677,-0.033548172563314,-0.104663491249084,0.048597466200590,0.056791514158249,0.090823799371719,-0.081311710178852,-0.031273070722818));
res += mul(Get(s3,dx,-dy), float4x4(0.005978193599731,0.067903362214565,-0.064640410244465,0.029930399730802,0.042416125535965,-0.063266150653362,-0.068793892860413,0.002385865198448,-0.004792026709765,0.014677622355521,0.003168639959767,-0.084811396896839,-0.052475441247225,-0.025239277631044,-0.012434845790267,-0.034698929637671));
res += mul(Get(s3,dx,0), float4x4(-0.018642056733370,0.040906175971031,-0.010645488277078,-0.002353660296649,0.007687739096582,-0.039019461721182,-0.066704295575619,-0.034480761736631,-0.017312264069915,-0.024242695420980,-0.005094130523503,-0.068689554929733,0.013114864006639,-0.014061312191188,-0.029128059744835,-0.009612640365958));
res += mul(Get(s3,dx,dy), float4x4(-0.042248476296663,-0.001096763298847,-0.063343994319439,0.029502838850021,0.011946648359299,-0.055249921977520,0.022223984822631,-0.021606408059597,0.017052439972758,-0.001483005820774,-0.047242484986782,-0.023145470768213,0.093949295580387,0.061388775706291,-0.022938027977943,-0.022928923368454));
return max(float4(0,0,0,0), res);
}