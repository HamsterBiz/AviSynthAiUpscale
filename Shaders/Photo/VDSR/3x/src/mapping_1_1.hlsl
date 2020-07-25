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
res += mul(Get(s0,-dx,-dy), float4x4(-0.263100326061249,0.037458728998899,0.011086799204350,0.071946263313293,0.072022795677185,0.055275306105614,0.040878362953663,-0.097340412437916,-0.052888758480549,0.003587505547330,-0.006576876156032,0.069701485335827,0.018901223316789,-0.243065416812897,-0.186654016375542,0.038698799908161));
res += mul(Get(s0,-dx,0), float4x4(-0.009926506318152,-0.151069894433022,0.089448325335979,0.095741428434849,0.064472287893295,-0.078495278954506,0.045412398874760,0.160421714186668,-0.134581029415131,0.091737121343613,0.010964078828692,0.099861152470112,0.046446576714516,0.131369754672050,-0.031847361475229,0.244597718119621));
res += mul(Get(s0,-dx,dy), float4x4(-0.247263506054878,0.162587925791740,-0.100811108946800,0.005357956048101,0.080996572971344,-0.001053315703757,-0.146323740482330,0.069036282598972,-0.019944766536355,-0.034205388277769,0.004316880833358,-0.078544132411480,0.164592400193214,-0.009453951381147,-0.065234765410423,0.151192322373390));
res += mul(Get(s0,0,-dy), float4x4(-0.031626716256142,0.036964401602745,-0.089646793901920,-0.305723458528519,0.068192914128304,-0.132836729288101,0.152659505605698,-0.078706048429012,0.124464564025402,0.127989485859871,-0.034698188304901,0.060898032039404,-0.036849491298199,-0.233422234654427,-0.113025359809399,-0.313941985368729));
res += mul(Get(s0,0,0), float4x4(0.114021323621273,0.025327958166599,-0.072309933602810,-0.104370601475239,0.043647728860378,0.017999332398176,0.119942195713520,0.041464738547802,-0.161962419748306,-0.112077213823795,-0.179121747612953,0.081469058990479,0.098728053271770,0.065736368298531,-0.081484831869602,-0.073936216533184));
res += mul(Get(s0,0,dy), float4x4(0.109752461314201,0.081184111535549,-0.170095413923264,0.244174018502235,0.160976514220238,0.017940023913980,-0.058058261871338,0.040532156825066,0.050956569612026,0.263142466545105,-0.042106986045837,-0.183337911963463,0.097092203795910,-0.134232267737389,0.009030316025019,0.069253310561180));
res += mul(Get(s0,dx,-dy), float4x4(0.110956698656082,-0.009623182937503,-0.060105510056019,-0.103586718440056,-0.144906923174858,0.020673252642155,0.008525516837835,0.120922900736332,0.112249277532101,-0.052882235497236,0.121899835765362,0.040135078132153,-0.020955413579941,0.202035903930664,0.282746464014053,-0.012799103744328));
res += mul(Get(s0,dx,0), float4x4(-0.006160144694149,-0.106203325092793,0.102610304951668,0.004173219203949,0.115110218524933,0.068122468888760,-0.060800291597843,0.098717130720615,-0.020147945731878,0.012142682448030,0.020168326795101,0.011375435627997,0.031224336475134,-0.043461788445711,0.094517864286900,-0.007835753262043));
res += mul(Get(s0,dx,dy), float4x4(0.002367339329794,-0.101339958608150,-0.003818599274382,0.166691258549690,-0.154368326067924,0.106563203036785,-0.121909305453300,-0.151975646615028,0.034086894243956,-0.219506010413170,-0.042171046137810,-0.081426613032818,-0.264167219400406,-0.132824376225471,0.211388975381851,0.116794981062412));
res += mul(Get(s1,-dx,-dy), float4x4(0.194208458065987,-0.161614641547203,-0.101697281002998,-0.015871243551373,-0.141093805432320,0.261317700147629,0.073047816753387,-0.042792066931725,0.219307571649551,0.086411356925964,-0.071956016123295,0.106795899569988,-0.055827163159847,-0.052747514098883,-0.129240602254868,0.011251570656896));
res += mul(Get(s1,-dx,0), float4x4(-0.015366207808256,-0.137615129351616,0.031607009470463,-0.150239765644073,-0.135192826390266,-0.037385143339634,-0.059002961963415,-0.218721643090248,0.028101276606321,0.039369702339172,0.052886594086885,-0.018683481961489,0.074581801891327,-0.060105748474598,0.189317986369133,-0.020262856036425));
res += mul(Get(s1,-dx,dy), float4x4(-0.312606632709503,0.092788584530354,-0.051546186208725,0.031919416040182,-0.026368157938123,0.177926152944565,-0.014959054067731,-0.004302548710257,0.052601154893637,-0.125340312719345,0.205921262502670,-0.100490145385265,0.094928517937660,-0.002852446865290,0.082961603999138,0.137297213077545));
res += mul(Get(s1,0,-dy), float4x4(0.004355422221124,0.054257348179817,-0.170040801167488,0.011021471582353,0.089520178735256,-0.145027264952660,0.194970279932022,0.039448522031307,0.142445459961891,0.033367216587067,0.101416826248169,-0.063234806060791,0.199293896555901,-0.071825794875622,0.063178211450577,0.109289392828941));
res += mul(Get(s1,0,0), float4x4(0.068317107856274,-0.108458675444126,0.052520509809256,0.214231133460999,-0.025101073086262,-0.119282610714436,0.008984608575702,-0.009696030989289,0.145155832171440,-0.000405453291023,0.211552068591118,0.047410991042852,0.001220811158419,0.056714657694101,0.141506850719452,-0.075658209621906));
res += mul(Get(s1,0,dy), float4x4(0.070578180253506,0.078736320137978,0.184740036725998,0.015393263660371,0.050860125571489,0.040038779377937,-0.080711759626865,0.212919741868973,0.113970562815666,0.172651275992393,-0.037713468074799,0.187731236219406,-0.292027950286865,0.071788936853409,-0.127732917666435,-0.056257922202349));
res += mul(Get(s1,dx,-dy), float4x4(-0.001481583341956,0.047226589173079,0.163748040795326,0.012129827402532,0.079691097140312,0.074750356376171,-0.052539475262165,0.011961254291236,-0.040435377508402,0.039892118424177,0.042753316462040,0.151053935289383,-0.048940017819405,-0.000215332373045,-0.051502626389265,0.056777779012918));
res += mul(Get(s1,dx,0), float4x4(-0.027320528402925,-0.227408528327942,-0.088996261358261,-0.013437287881970,0.043056707829237,-0.188291624188423,-0.036227855831385,-0.009046476334333,0.048337537795305,0.057630922645330,-0.036555666476488,-0.059854954481125,-0.016710398718715,-0.144011795520782,-0.051666837185621,0.080696716904640));
res += mul(Get(s1,dx,dy), float4x4(-0.043142776936293,-0.018120393157005,-0.083332829177380,0.204275816679001,0.023894613608718,-0.138169303536415,0.019394613802433,0.095660135149956,-0.027942143380642,-0.111722037196159,0.152397409081459,-0.092751450836658,0.013204618357122,-0.103087708353996,-0.150987401604652,0.107821352779865));
res += mul(Get(s2,-dx,-dy), float4x4(-0.028574205935001,0.002532852813601,-0.118400976061821,0.148342892527580,0.034480072557926,-0.077306568622589,-0.127054780721664,-0.131605118513107,0.068544112145901,0.027235154062510,0.163632854819298,0.154832065105438,-0.219786569476128,0.073298975825310,0.160212859511375,0.093574926257133));
res += mul(Get(s2,-dx,0), float4x4(0.054748188704252,0.179480180144310,-0.237773552536964,-0.144091472029686,-0.108713507652283,0.028013391420245,0.077447772026062,-0.084511801600456,-0.309145480394363,-0.139081642031670,-0.134356454014778,-0.238835275173187,-0.135448053479195,-0.013987837359309,0.034436587244272,0.019889427348971));
res += mul(Get(s2,-dx,dy), float4x4(0.077551685273647,-0.033465303480625,0.020721692591906,0.097372740507126,0.174420133233070,-0.002432429930195,0.080887041985989,-0.151433780789375,-0.266635030508041,0.048066988587379,-0.208184540271759,0.072499834001064,0.157249957323074,0.099187940359116,-0.055671866983175,-0.046252153813839));
res += mul(Get(s2,0,-dy), float4x4(0.030502814799547,-0.070538148283958,-0.189531624317169,-0.331072956323624,-0.068266555666924,-0.075360059738159,0.028752816841006,-0.034719273447990,-0.115189120173454,-0.053891103714705,-0.156348854303360,-0.037947643548250,-0.101994246244431,-0.070958524942398,-0.028242200613022,-0.204691410064697));
res += mul(Get(s2,0,0), float4x4(-0.100364208221436,-0.126817464828491,-0.118795745074749,-0.146291375160217,0.207597732543945,-0.076656073331833,0.147636398673058,-0.314992994070053,0.087079666554928,-0.008177112787962,-0.016729492694139,-0.035159803926945,0.082121193408966,0.129699692130089,0.077087543904781,-0.058279071003199));
res += mul(Get(s2,0,dy), float4x4(0.098417170345783,0.018850304186344,0.064129814505577,0.055535614490509,0.036991707980633,-0.015810888260603,-0.106289215385914,-0.026201201602817,0.067454151809216,0.201677635312080,0.226292327046394,-0.022616082802415,0.022287623956800,-0.017002368345857,-0.050430778414011,-0.003516509896144));
res += mul(Get(s2,dx,-dy), float4x4(-0.115551903843880,-0.195652365684509,-0.160195410251617,0.249449655413628,-0.239142328500748,0.247569307684898,0.059503745287657,-0.046218950301409,-0.295524537563324,-0.066256560385227,0.155075207352638,0.176160186529160,-0.041410215198994,-0.013635927811265,-0.018769420683384,0.133039489388466));
res += mul(Get(s2,dx,0), float4x4(0.206595808267593,-0.102190665900707,-0.029141316190362,0.099556669592857,0.108769409358501,-0.102824345231056,-0.203838840126991,0.009101362898946,0.292577475309372,-0.150785192847252,-0.167828261852264,0.192040532827377,-0.159964933991432,0.139308780431747,0.009980008937418,0.083820067346096));
res += mul(Get(s2,dx,dy), float4x4(0.131681889295578,-0.045541252940893,-0.057681828737259,0.048252459615469,0.094532050192356,0.139676943421364,0.010686347261071,0.046609807759523,0.123637318611145,-0.117692507803440,0.147012770175934,0.034268368035555,0.048491999506950,0.063225328922272,-0.050553884357214,-0.039472389966249));
res += mul(Get(s3,-dx,-dy), float4x4(-0.045994874089956,-0.043565202504396,0.093537978827953,0.064570888876915,-0.050734274089336,0.008398569189012,-0.101947955787182,0.188858374953270,-0.098220884799957,0.125691667199135,-0.098365776240826,-0.258880645036697,-0.171601504087448,-0.156144797801971,-0.169997081160545,-0.311277180910110));
res += mul(Get(s3,-dx,0), float4x4(-0.066744431853294,-0.039006188511848,-0.141427621245384,0.111671939492226,0.079485140740871,0.021391263231635,-0.095751531422138,0.086340680718422,-0.161894664168358,-0.217802971601486,-0.131538361310959,-0.072545856237411,-0.094089649617672,-0.168417036533356,-0.025081122294068,-0.080048263072968));
res += mul(Get(s3,-dx,dy), float4x4(0.057462122291327,-0.043661113828421,0.178916305303574,-0.077011398971081,-0.054414965212345,-0.017484856769443,-0.030769856646657,-0.091773964464664,-0.088700979948044,-0.214950129389763,0.087259873747826,-0.039945561438799,-0.041080065071583,-0.081526413559914,-0.063378565013409,0.113919600844383));
res += mul(Get(s3,0,-dy), float4x4(0.002381470287219,-0.203575149178505,-0.079699411988258,-0.057379733771086,-0.083091281354427,-0.258848786354065,0.200319483876228,-0.160066813230515,0.057902898639441,0.145157679915428,0.013760061003268,-0.068282045423985,0.212123736739159,0.114108383655548,0.067132487893105,0.034778352826834));
res += mul(Get(s3,0,0), float4x4(0.284731030464172,0.106192268431187,-0.067711383104324,-0.051038358360529,0.105782844126225,-0.208478033542633,-0.116160541772842,-0.116561032831669,0.093130573630333,-0.005579369142652,0.060308795422316,0.063227340579033,0.145912557840347,-0.104468539357185,-0.060239400714636,0.226755976676941));
res += mul(Get(s3,0,dy), float4x4(-0.061780210584402,0.098545208573341,-0.075124017894268,0.021932298317552,0.075296528637409,-0.038247119635344,-0.015023456886411,-0.188879981637001,0.172493800520897,-0.005278569180518,-0.042124509811401,0.143036380410194,0.163917019963264,-0.103025309741497,0.010563270188868,-0.020768182352185));
res += mul(Get(s3,dx,-dy), float4x4(-0.129017353057861,-0.096596017479897,0.256137847900391,-0.044628076255322,-0.019149027764797,0.035441204905510,-0.165275782346725,0.218833953142166,0.044849861413240,-0.116542689502239,0.185462668538094,-0.000204147843760,-0.074302509427071,0.092306129634380,-0.017236003652215,0.099515229463577));
res += mul(Get(s3,dx,0), float4x4(-0.097810029983521,-0.008271751925349,0.136391922831535,-0.013651021756232,0.081977784633636,0.008305083028972,0.005645311437547,0.106427617371082,0.067554786801338,0.019228285178542,-0.013591703027487,0.241953596472740,0.016355633735657,0.169201299548149,0.141218945384026,0.262538045644760));
res += mul(Get(s3,dx,dy), float4x4(0.049321521073580,0.156142324209213,0.068100214004517,0.059921175241470,-0.055243313312531,0.153403937816620,0.004811523947865,-0.098499916493893,-0.220750600099564,0.057791363447905,-0.055719170719385,-0.245130330324173,-0.102031812071800,0.186658322811127,0.102363899350166,-0.257130831480026));
return max(float4(0,0,0,0), res);
}