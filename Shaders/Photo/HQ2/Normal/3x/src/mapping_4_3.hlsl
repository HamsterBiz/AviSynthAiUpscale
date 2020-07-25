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
res += mul(Get(s0,-dx,-dy), float4x4(-0.041017200797796,0.062791332602501,0.008315019309521,0.072593919932842,0.025694679468870,-0.003217961173505,0.062036335468292,0.107692465186119,0.124875910580158,-0.058972366154194,0.037608120590448,0.019349539652467,0.040980786085129,-0.016073785722256,-0.074982263147831,-0.061123713850975));
res += mul(Get(s0,-dx,0), float4x4(0.012984825298190,0.118103779852390,-0.025824218988419,0.029606530442834,-0.005129377357662,-0.025899024680257,0.043754797428846,0.085002727806568,0.076208427548409,-0.100446514785290,0.096314422786236,0.026756200939417,0.102958038449287,-0.026093894615769,-0.043754972517490,0.033865068107843));
res += mul(Get(s0,-dx,dy), float4x4(0.067157760262489,0.134709551930428,-0.034332811832428,0.015233985148370,0.034506555646658,0.000839287356939,0.065294623374939,0.010710624977946,0.047295369207859,-0.152331888675690,0.015929542481899,0.029277667403221,0.055123753845692,-0.051854941993952,0.013332525268197,0.022676089778543));
res += mul(Get(s0,0,-dy), float4x4(0.002843824448064,0.051458280533552,-0.009668695740402,0.109348453581333,-0.020545560866594,-0.012014040723443,0.068300426006317,0.011897092685103,0.080885693430901,0.030230147764087,-0.018602680414915,-0.005941775161773,0.066009685397148,0.028929349035025,-0.103083938360214,-0.067817695438862));
res += mul(Get(s0,0,0), float4x4(0.008992273360491,0.064450532197952,-0.014940437860787,0.037691414356232,-0.048347745090723,0.013883482664824,0.072927325963974,0.044578518718481,0.029481535777450,-0.073180042207241,0.067761026322842,-0.069389015436172,0.008935681544244,-0.098908245563507,-0.088276132941246,0.000648415414616));
res += mul(Get(s0,0,dy), float4x4(0.040018405765295,0.042921401560307,-0.041477650403976,0.011159696616232,0.036127448081970,0.067162603139877,0.035226691514254,0.017210114747286,-0.001447525341064,-0.131242737174034,0.047433167695999,-0.051432311534882,-0.028330456465483,-0.101125746965408,-0.058470413088799,0.017502300441265));
res += mul(Get(s0,dx,-dy), float4x4(0.053157590329647,0.037016678601503,-0.008865796960890,0.114567592740059,-0.022860117256641,0.064818143844604,-0.044212739914656,0.014515971764922,0.008758549578488,0.006455085705966,-0.036936946213245,-0.008601473644376,0.066703826189041,0.129398897290230,-0.008683988824487,-0.108787000179291));
res += mul(Get(s0,dx,0), float4x4(0.009511465206742,-0.035043329000473,-0.017657736316323,0.065432347357273,-0.089889429509640,0.067697435617447,0.022089270874858,-0.002873826306313,0.005124348681420,-0.071078382432461,-0.014909087680280,-0.058410171419382,-0.037904407829046,-0.061837635934353,-0.035555094480515,-0.084878355264664));
res += mul(Get(s0,dx,dy), float4x4(0.009560785256326,-0.003663524286821,-0.047598700970411,0.001162980683148,-0.071075610816479,-0.006797287613153,0.069594018161297,-0.039718266576529,-0.082370422780514,-0.112768605351448,-0.005208139307797,-0.105310551822186,0.021507870405912,0.029391320422292,-0.086490392684937,-0.045181974768639));
res += mul(Get(s1,-dx,-dy), float4x4(0.001332556013949,0.080582924187183,0.045589070767164,-0.047259502112865,0.004738167859614,-0.017543995752931,-0.026072107255459,-0.000134367917781,0.063957765698433,0.002993153873831,0.025983970612288,-0.039928406476974,0.036048993468285,-0.024503273889422,0.005939348135144,0.047092482447624));
res += mul(Get(s1,-dx,0), float4x4(0.003499720711261,-0.020633831620216,0.045996110886335,-0.051228456199169,0.098980434238911,0.051519691944122,0.052452076226473,-0.001354829408228,0.061855398118496,-0.043089412152767,0.023068221285939,-0.017781276255846,0.021389529109001,0.024873107671738,-0.036686711013317,0.009555864147842));
res += mul(Get(s1,-dx,dy), float4x4(0.043612018227577,-0.039121046662331,0.086483262479305,0.057949434965849,0.026901531964540,-0.031991593539715,0.037760589271784,0.035572152584791,-0.025883581489325,-0.082423239946365,-0.044574357569218,0.111167721450329,-0.038190912455320,0.012464302591980,-0.071674771606922,0.014622784219682));
res += mul(Get(s1,0,-dy), float4x4(-0.038006063550711,0.042303893715143,-0.031610067933798,-0.078065350651741,0.021872596815228,0.028725480660796,0.050344113260508,-0.017293436452746,0.034767806529999,0.017593938857317,-0.048204105347395,-0.035499121993780,0.046405177563429,-0.012798573821783,0.057885836809874,-0.027735738083720));
res += mul(Get(s1,0,0), float4x4(0.021340839564800,-0.047742616385221,0.054319921880960,-0.113311618566513,0.015011901967227,-0.055433984845877,-0.030858309939504,0.011636931449175,0.107139356434345,0.010573629289865,-0.053827278316021,-0.099510468542576,0.065982073545456,-0.023458210751414,0.020167412236333,-0.045916851609945));
res += mul(Get(s1,0,dy), float4x4(0.041773326694965,-0.023664275184274,0.100137904286385,0.068635858595371,-0.040872778743505,-0.003454422811046,0.036177750676870,-0.009120749309659,-0.010341787710786,-0.019350551068783,0.010292489081621,-0.025983348488808,-0.012054314836860,0.005931020248681,-0.033248506486416,0.002346646972001));
res += mul(Get(s1,dx,-dy), float4x4(-0.123812139034271,-0.051575511693954,0.027999119833112,-0.100540541112423,-0.028567494824529,-0.016008241102099,-0.046807657927275,-0.056655153632164,-0.081759601831436,-0.040535837411880,0.089866861701012,-0.024454887956381,0.064397171139717,-0.024830903857946,0.050027616322041,-0.061121806502342));
res += mul(Get(s1,dx,0), float4x4(-0.039003830403090,-0.068781703710556,0.012483739294112,-0.096391163766384,-0.033219866454601,-0.049996133893728,-0.037967745214701,-0.010852390900254,-0.065735436975956,-0.047769349068403,0.028217662125826,-0.042170673608780,0.003735640784726,-0.077875152230263,0.035006433725357,-0.060049306601286));
res += mul(Get(s1,dx,dy), float4x4(0.002527958713472,-0.053015079349279,0.117248848080635,0.052967347204685,-0.047715421766043,-0.005264421459287,0.029387112706900,0.013753408566117,-0.069715999066830,-0.018925454467535,-0.015784759074450,0.015465363860130,-0.047907974570990,-0.049050409346819,-0.000313175201882,0.002150422660634));
res += mul(Get(s2,-dx,-dy), float4x4(0.147953361272812,-0.096532620489597,-0.072487257421017,0.007436631247401,-0.097141928970814,-0.025299670174718,0.039701379835606,0.049395579844713,0.046900313347578,-0.097974903881550,-0.040073864161968,0.027505628764629,0.021415740251541,0.054458670318127,0.014192845672369,0.077535361051559));
res += mul(Get(s2,-dx,0), float4x4(0.028516303747892,0.032620105892420,-0.051321566104889,-0.034931346774101,0.068222470581532,0.044651553034782,-0.057728182524443,0.068639345467091,0.064638897776604,-0.066888123750687,-0.016300540417433,0.066491410136223,-0.067325316369534,-0.100956954061985,-0.000171531137312,0.020305521786213));
res += mul(Get(s2,-dx,dy), float4x4(0.031102564185858,0.050888337194920,-0.088132739067078,0.058420702815056,0.077999107539654,-0.044998753815889,0.004228738602251,0.041560739278793,0.079235710203648,-0.019906526431441,-0.036808483302593,0.006316176615655,-0.063646964728832,-0.060983255505562,-0.039501089602709,-0.070132762193680));
res += mul(Get(s2,0,-dy), float4x4(0.054954931139946,0.008164246566594,-0.004336323589087,-0.015797654166818,-0.071573287248611,0.013134583830833,0.078079208731651,0.090964451432228,0.001732690376230,-0.083183743059635,-0.083153307437897,-0.008828992024064,-0.001437215367332,0.087263472378254,-0.015849577262998,0.059446360915899));
res += mul(Get(s2,0,0), float4x4(-0.007305901031941,0.084931023418903,-0.070381037890911,-0.084040313959122,-0.003085260512307,0.082361318171024,-0.072664871811867,0.113860152661800,0.070493467152119,-0.009768014773726,-0.065648950636387,0.076006725430489,-0.054149881005287,0.027766795828938,0.017547093331814,-0.022701811045408));
res += mul(Get(s2,0,dy), float4x4(0.022102972492576,0.090984389185905,-0.093824468553066,-0.003585070371628,-0.009744200855494,-0.029408136382699,0.012934124097228,0.032777067273855,0.090047523379326,0.008143385872245,-0.027561372146010,0.003451465629041,-0.019482398405671,0.013554886914790,-0.010698051191866,-0.037500258535147));
res += mul(Get(s2,dx,-dy), float4x4(0.012333309277892,0.037961293011904,0.065496452152729,-0.002917637815699,-0.019644362851977,0.019322600215673,0.055716328322887,-0.008184749633074,-0.082916691899300,0.021421046927571,-0.082604810595512,0.022228257730603,0.014509688131511,-0.017055019736290,0.018839308992028,0.037268329411745));
res += mul(Get(s2,dx,0), float4x4(-0.114204272627831,-0.006644129287452,0.034286174923182,0.042967356741428,0.011019900441170,0.081822961568832,-0.012269713915884,-0.064467564225197,-0.040303271263838,0.060220927000046,-0.051484704017639,0.067409493029118,-0.018021071329713,0.003693480277434,0.055796749889851,0.088578052818775));
res += mul(Get(s2,dx,dy), float4x4(-0.079433150589466,0.032602965831757,-0.085678085684776,0.076155386865139,0.002782755065709,0.015000024810433,0.035711903125048,-0.050091523677111,0.039035584777594,0.055767036974430,-0.021004009991884,0.037879504263401,-0.009212671779096,0.005923191551119,-0.001425299677067,0.005352203734219));
res += mul(Get(s3,-dx,-dy), float4x4(-0.011563286185265,0.018732262775302,-0.011744173243642,-0.069677576422691,-0.014241257682443,0.007912914268672,0.055774718523026,0.050225004553795,0.004713204223663,0.029854901134968,-0.013954250141978,-0.050511755049229,-0.016090558841825,0.046117529273033,-0.046907600015402,0.029450908303261));
res += mul(Get(s3,-dx,0), float4x4(0.031354002654552,0.034820239990950,-0.017314093187451,-0.066201888024807,-0.082981809973717,-0.027881789952517,-0.001378928544000,0.073956355452538,0.075527817010880,-0.024772111326456,-0.017392624169588,-0.045714892446995,0.029365176334977,0.094082243740559,-0.076111286878586,0.007603115867823));
res += mul(Get(s3,-dx,dy), float4x4(-0.050036225467920,-0.053996048867702,-0.060894347727299,-0.005685173906386,-0.004463369492441,0.064707607030869,-0.021947199478745,0.118748724460602,0.030798576772213,-0.030161287635565,0.009327035397291,-0.084997817873955,-0.040082525461912,0.053295891731977,-0.091667406260967,-0.056697227060795));
res += mul(Get(s3,0,-dy), float4x4(0.029071534052491,0.050711281597614,-0.082737438380718,-0.078960120677948,-0.022958176210523,0.064230501651764,-0.052364192903042,-0.060254991054535,-0.011082467623055,-0.016653548926115,-0.025868657976389,-0.055122874677181,0.025289183482528,-0.058881118893623,-0.010696983896196,-0.013839412480593));
res += mul(Get(s3,0,0), float4x4(0.060971878468990,0.000901658902876,0.056954640895128,-0.077948130667210,-0.040792789310217,-0.027603344991803,-0.027027292177081,-0.043466232717037,0.008154946379364,-0.054294832050800,-0.025144902989268,-0.048384387046099,0.073827132582664,-0.001419990439899,0.045379545539618,0.004083375912160));
res += mul(Get(s3,0,dy), float4x4(-0.058551367372274,-0.038874275982380,0.073791451752186,0.003477004123852,-0.079803317785263,-0.040550220757723,0.043835628777742,0.068880140781403,-0.016196252778172,-0.019346736371517,0.003841027617455,0.019892355427146,-0.045953631401062,0.033452078700066,0.032193418592215,-0.030633777379990));
res += mul(Get(s3,dx,-dy), float4x4(-0.009447749704123,0.022629840299487,0.039403267204762,-0.049363713711500,-0.059053838253021,0.025411818176508,0.026669217273593,-0.082346141338348,-0.054072331637144,0.024041280150414,0.009696187451482,-0.000168346698047,-0.029396468773484,-0.055666897445917,0.060614649206400,0.047430098056793));
res += mul(Get(s3,dx,0), float4x4(0.008099560625851,-0.014584828168154,0.093316078186035,-0.023140581324697,-0.007061223033816,0.030676065012813,0.016540663316846,-0.053658638149500,-0.061629824340343,0.063746109604836,-0.024968961253762,0.010600659996271,0.003677191911265,-0.025963198393583,0.133596420288086,0.083080947399139));
res += mul(Get(s3,dx,dy), float4x4(-0.056777499616146,0.005663740914315,0.030253335833549,0.044740110635757,-0.078426450490952,-0.049167983233929,0.024132691323757,0.025721345096827,-0.015161626972258,0.130446359515190,0.009033367037773,0.070314280688763,-0.027259171009064,0.096907123923302,0.108941584825516,0.055423434823751));
return max(float4(0,0,0,0), res);
}