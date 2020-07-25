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
res += mul(Get(s0,-dx,-dy), float4x4(-0.018992256373167,-0.030804753303528,0.004787115845829,-0.010682977735996,0.000102021302155,-0.002375313779339,0.000220835441723,0.000056771681557,0.001299601630308,0.144704014062881,0.128952398896217,-0.004002452362329,-0.008916522376239,0.113623768091202,0.031765390187502,-0.010049708187580));
res += mul(Get(s0,-dx,0), float4x4(-0.021084291860461,0.029393849894404,-0.008365448564291,-0.003618960734457,-0.000096663934528,0.001068504643627,-0.001272743567824,0.000256550731137,0.023167664185166,-0.063880108296871,0.263795256614685,-0.007056180853397,-0.015877012163401,0.051186800003052,-0.100964017212391,-0.010797924362123));
res += mul(Get(s0,-dx,dy), float4x4(-0.015855699777603,0.009628271684051,0.125894978642464,-0.010831769555807,-0.000122768047731,0.003409960772842,-0.000487066077767,-0.000010748770364,0.002982152393088,-0.078584082424641,0.068457998335361,-0.003942505456507,-0.013298796489835,-0.041929878294468,-0.080270208418369,-0.008889340795577));
res += mul(Get(s0,0,-dy), float4x4(-0.018533559516072,-0.175058722496033,-0.147746220231056,-0.007911829277873,-0.000039685586671,-0.000781662063673,-0.000980695360340,-0.000139235067763,0.000145113459439,0.402027755975723,0.190918818116188,-0.002028587274253,-0.009034320712090,0.045225538313389,0.087112970650196,-0.012261764146388));
res += mul(Get(s0,0,0), float4x4(-0.024014901369810,0.208407610654831,-0.112554267048836,0.015809601172805,0.000075689684309,-0.002238307613879,0.001066742232069,-0.000145539015648,0.009241858497262,-0.000221602589590,0.051056571304798,-0.009490058757365,-0.014127108268440,-0.052159130573273,0.016695711761713,-0.011460475623608));
res += mul(Get(s0,0,dy), float4x4(-0.018747620284557,0.209794878959656,0.108187720179558,-0.007911628112197,0.000018057140551,-0.000072439455835,-0.000247432821197,-0.000140711039421,0.004451933782548,-0.051491435617208,-0.040459692478180,0.006761599797755,-0.010812258347869,-0.075772121548653,-0.069610297679901,-0.009987009689212));
res += mul(Get(s0,dx,-dy), float4x4(0.000806448399089,-0.196252033114433,-0.018722031265497,-0.012566660530865,-0.000315890269121,0.003915392793715,-0.001453550299630,-0.000027585861972,0.005117825698107,0.096376717090607,0.115126475691795,0.006269758567214,-0.017378035932779,0.242406889796257,0.009039306081831,-0.001976435538381));
res += mul(Get(s0,dx,0), float4x4(0.021796554327011,-0.038445759564638,0.242210015654564,-0.015209481120110,0.000108901964268,-0.000340556754963,0.000294823606964,0.000050144608394,-0.003596547059715,0.234431773424149,-0.112117633223534,0.036418113857508,-0.019032159820199,-0.014891929924488,-0.050382982939482,-0.008051943033934));
res += mul(Get(s0,dx,dy), float4x4(0.001279541640542,0.054130472242832,0.167575508356094,-0.020709224045277,0.000076288670243,-0.000623740430456,-0.000717738468666,-0.000162717260537,0.006721759680659,0.103936478495598,-0.019789965823293,0.014253580011427,-0.015696238726377,-0.058358453214169,-0.095814496278763,-0.002671839902177));
res += mul(Get(s1,-dx,-dy), float4x4(0.000057034663769,-0.000768952537328,0.000782691873610,-0.000071707479947,0.018356975167990,-0.096748530864716,0.131085336208344,-0.012779327109456,-0.006394283380359,0.111223660409451,-0.078673660755157,0.024799704551697,-0.021056540310383,0.133301556110382,-0.155642852187157,0.027476193383336));
res += mul(Get(s1,-dx,0), float4x4(0.000035419991036,-0.000700733100530,0.000424763071351,-0.000099448210676,0.023188311606646,-0.156169086694717,0.152058809995651,-0.011743715964258,0.008655980229378,0.122381657361984,0.132910192012787,0.012172737158835,-0.020012473687530,0.221473649144173,-0.172699466347694,0.034801244735718));
res += mul(Get(s1,-dx,dy), float4x4(0.000045631200919,-0.000508405093569,0.000731129839551,0.000056862569181,0.013557757250965,-0.165205717086792,0.037734609097242,-0.006998087745160,0.010654552839696,-0.017993366345763,0.086413495242596,-0.003047813894227,-0.006992947775871,0.104513593018055,-0.055460739880800,0.016311086714268));
res += mul(Get(s1,0,-dy), float4x4(0.000019361330487,0.000373685878003,-0.000459925766336,0.000145354351844,0.000977177522145,0.008325284346938,0.014908325858414,-0.003819150617346,0.005751215852797,0.122167356312275,0.072006545960903,-0.002419783268124,0.009325845167041,0.004736122675240,-0.063068091869354,0.037983134388924));
res += mul(Get(s1,0,0), float4x4(-0.000052543058700,0.000236079125898,-0.000317087135045,0.000011463898772,0.004556372296065,-0.018114220350981,0.024967446923256,-0.006755490321666,0.005070002749562,0.047767933458090,0.132294654846191,-0.020885135978460,0.012463879771531,0.267508000135422,0.078629352152348,0.042051378637552));
res += mul(Get(s1,0,dy), float4x4(-0.000164673358086,0.000285528629320,-0.000327074725647,0.000031108094845,0.009738096967340,-0.223680377006531,-0.000481857627165,-0.008491206914186,-0.007750047836453,-0.084534719586372,-0.041658289730549,-0.011723185889423,0.007735919207335,0.083353474736214,0.046018246561289,0.013063612394035));
res += mul(Get(s1,dx,-dy), float4x4(0.000105114842881,-0.000055186406826,0.000331091607222,0.000154489593115,-0.000983929727226,-0.041157942265272,-0.001014803885482,-0.001719773863442,0.004448392428458,0.042880363762379,0.041059240698814,-0.006853056605905,0.029165619984269,-0.086476251482964,0.118531242012978,-0.004196198657155));
res += mul(Get(s1,dx,0), float4x4(0.000045572222007,-0.000252432189882,0.000336496625096,0.000019696475647,-0.001572023611516,0.030518714338541,-0.010907142423093,0.000410204054788,-0.007103936746716,0.116194225847721,-0.007528113666922,-0.000665932311676,0.041353985667229,-0.126472681760788,0.318754225969315,-0.016342453658581));
res += mul(Get(s1,dx,dy), float4x4(0.000128951884108,-0.000505489530042,0.000226214498980,-0.000107454914541,0.003581659868360,-0.122190259397030,-0.032152369618416,-0.005052417516708,-0.002585978247225,0.006033242680132,-0.001887222286314,-0.000371925270883,0.014166437089443,-0.141770124435425,0.054663244634867,-0.009670262224972));
res += mul(Get(s2,-dx,-dy), float4x4(-0.009286569431424,0.029572825878859,-0.116385951638222,0.014517686329782,0.001399808097631,0.054559268057346,-0.048920363187790,0.019021287560463,-0.015896296128631,0.073504522442818,-0.073569580912590,0.013002328574657,0.003486709203571,-0.076372303068638,0.031341861933470,-0.002291050506756));
res += mul(Get(s2,-dx,0), float4x4(-0.000753073079977,0.108218804001808,-0.018373254686594,0.017061401158571,0.002610034542158,0.101646170020103,-0.058927226811647,0.025456303730607,-0.018550699576735,0.095278054475784,-0.162306383252144,0.020298413932323,0.001576907001436,-0.064906440675259,0.009168889373541,-0.001363075920381));
res += mul(Get(s2,-dx,dy), float4x4(0.007409433368593,-0.049614537507296,0.009210711345077,0.009098498150706,-0.001080513000488,0.084773480892181,-0.077959075570107,0.018693046644330,-0.014441057108343,0.259354889392853,0.037697624415159,0.012574004940689,-0.000435724097770,0.018102459609509,0.024287357926369,0.001427905051969));
res += mul(Get(s2,0,-dy), float4x4(0.002965506631881,-0.036008022725582,-0.051029790192842,0.015742260962725,0.014420407824218,-0.050386302173138,0.109381765127182,-0.000201566290343,-0.001450940966606,-0.084641851484776,-0.005191234871745,-0.016512416303158,-0.001151611912064,-0.038760568946600,-0.018399979919195,-0.001352282008156));
res += mul(Get(s2,0,0), float4x4(0.010817710310221,0.156718164682388,0.109952397644520,0.009783929213881,0.025484617799520,-0.129004329442978,0.185376197099686,-0.002101546851918,0.002770695136860,-0.154008015990257,0.006497078109533,-0.010267158038914,-0.003216109471396,-0.025461092591286,-0.040879927575588,0.000359597266652));
res += mul(Get(s2,0,dy), float4x4(0.011786162853241,-0.057519886642694,0.055046014487743,-0.001484286389314,0.016223901882768,-0.104955583810806,0.092346504330635,0.000696575210895,-0.004641797393560,0.270032972097397,0.152226492762566,-0.005851064343005,-0.001726899761707,0.034727767109871,0.011915469542146,0.001538601703942));
res += mul(Get(s2,dx,-dy), float4x4(0.009837579913437,-0.087587356567383,0.032307844609022,0.002242606831715,0.002289250260219,-0.003445625770837,-0.021812645718455,0.001449910691008,-0.006352857686579,-0.007533367723227,-0.053559232503176,-0.011961199343204,-0.001998967258260,0.005174514371902,-0.030734566971660,0.003762338077649));
res += mul(Get(s2,dx,0), float4x4(0.006077219266444,0.067010380327702,0.068975634872913,-0.000325421802700,0.002357475459576,0.053812675178051,-0.048315640538931,0.005230294074863,0.006948476657271,-0.057975579053164,0.021580083295703,-0.016115335747600,-0.001032655709423,-0.007537188474089,-0.012937999330461,0.005168929230422));
res += mul(Get(s2,dx,dy), float4x4(-0.000837899744511,0.017367526888847,-0.053948380053043,0.004736517090350,0.002765672979876,0.033828463405371,-0.031652115285397,0.004971476271749,0.000419516582042,0.140253245830536,0.095396280288696,-0.016275076195598,0.001212639617734,0.031120561063290,0.034610558301210,0.003667792538181));
res += mul(Get(s3,-dx,-dy), float4x4(0.003809305373579,-0.070280686020851,0.063475765287876,-0.009484269656241,0.008865017443895,-0.098172739148140,0.029465394094586,-0.005169763695449,0.000773881154601,-0.002006349852309,-0.008524223230779,0.001312202424742,0.014492777176201,-0.088251680135727,0.108649812638760,-0.010553580708802));
res += mul(Get(s3,-dx,0), float4x4(-0.002520947018638,-0.071120634675026,-0.037783782929182,-0.002123359357938,0.010393008589745,-0.076658569276333,0.025406120344996,0.001589888008311,-0.001379441935569,0.069460384547710,-0.016273571178317,0.002149331150576,0.031840357929468,-0.008456881158054,0.346329867839813,-0.013361062854528));
res += mul(Get(s3,-dx,dy), float4x4(-0.005198601633310,0.063905306160450,-0.004803053569049,0.000043877698772,-0.004916212521493,0.157222777605057,-0.056417658925056,0.004911798518151,0.000013451413906,-0.002814895473421,-0.011410313658416,-0.000475068663945,0.011364285834134,-0.066272333264351,0.082968972623348,-0.016273304820061));
res += mul(Get(s3,0,-dy), float4x4(-0.007813028991222,-0.076714597642422,-0.044839017093182,-0.005411013495177,-0.003688559401780,0.209686547517776,-0.020089257508516,0.001772485440597,0.001397886197083,-0.033905662596226,-0.007187333889306,-0.000645958003588,0.003419667249545,0.139299795031548,0.084211267530918,-0.002477478003129));
res += mul(Get(s3,0,0), float4x4(-0.008934182114899,-0.075236089527607,-0.080879241228104,0.003472107229754,0.011604715138674,-0.134737372398376,0.053233999758959,-0.005982425529510,-0.000821810681373,0.061702206730843,0.009437331929803,0.001540043158457,0.010905206203461,0.061853509396315,0.134273812174797,-0.009471701458097));
res += mul(Get(s3,0,dy), float4x4(-0.005987358745188,0.057312324643135,0.020910276100039,-0.000324224150972,0.006994286086410,-0.052911765873432,0.023828314617276,-0.000545324117411,-0.000554529367946,-0.009004090912640,-0.006629142910242,-0.000441789627075,0.003874285612255,-0.072186470031738,-0.026165362447500,-0.000975028378889));
res += mul(Get(s3,dx,-dy), float4x4(-0.007750368211418,-0.045996487140656,-0.066841080784798,0.000215443651541,-0.008285311050713,0.190933197736740,-0.055806629359722,0.013771636411548,-0.000103303093056,-0.000314755598083,-0.013037208467722,-0.000437688286183,0.000221086884267,-0.037487812340260,-0.008072080090642,0.010294551961124));
res += mul(Get(s3,dx,0), float4x4(-0.002736256457865,-0.067946814000607,-0.034847505390644,0.000868150440510,-0.005043362267315,0.170257270336151,-0.061055786907673,0.012283798307180,0.000595584220719,0.024019202217460,0.021953972056508,-0.002479642629623,-0.005762086249888,0.279762119054794,-0.084680162370205,0.038381170481443));
res += mul(Get(s3,dx,dy), float4x4(-0.003038836410269,0.024218458682299,0.013876664452255,-0.003472461597994,0.005690967664123,-0.065832786262035,0.025647742673755,-0.002977517200634,0.000017870072043,-0.043574187904596,-0.007071672007442,-0.000756858033128,0.001264505437575,0.057706322520971,-0.039249315857887,0.016757642850280));
return max(float4(0,0,0,0), res);
}