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
res += mul(Get(s0,-dx,-dy), float4x4(-0.046789187937975,0.059752412140369,0.027212202548981,0.104820400476456,-0.026112910360098,0.044034194201231,0.004125073086470,0.081674829125404,0.047737114131451,-0.001189840491861,0.057979650795460,0.000017694193957,-0.063549123704433,-0.172545492649078,-0.046967007219791,-0.006737135816365));
res += mul(Get(s0,-dx,0), float4x4(0.012121708132327,0.015428131446242,-0.154762521386147,-0.010860645212233,0.068632476031780,0.164016455411911,0.091928817331791,0.061407227069139,0.115229249000549,0.051834922283888,-0.015606069937348,-0.025815039873123,0.077809654176235,-0.010777320712805,0.050203099846840,0.002539644250646));
res += mul(Get(s0,-dx,dy), float4x4(-0.078106805682182,0.002077041892335,-0.102130196988583,0.113055087625980,0.001139068161137,0.103961333632469,0.009495981968939,0.086219698190689,0.085484728217125,-0.057881262153387,-0.004185397177935,-0.105903908610344,0.039976250380278,0.052053242921829,-0.049059696495533,-0.090785704553127));
res += mul(Get(s0,0,-dy), float4x4(-0.213619798421860,0.182025671005249,-0.049878258258104,0.136859878897667,0.049865920096636,0.161706700921059,0.177098616957664,-0.067245475947857,0.043387435376644,0.018378252163529,0.081138379871845,0.126222074031830,-0.095703206956387,-0.065803296864033,0.113736443221569,-0.060098182410002));
res += mul(Get(s0,0,0), float4x4(-0.018076274544001,0.002002299996093,-0.037604480981827,-0.000515947234817,-0.036688081920147,-0.035330213606358,-0.255514144897461,0.103845715522766,-0.072870701551437,0.150175571441650,0.067436628043652,0.051667015999556,-0.046017918735743,0.084511928260326,-0.063340872526169,0.010956033132970));
res += mul(Get(s0,0,dy), float4x4(0.155253425240517,0.006065431982279,0.004175204783678,0.237558469176292,0.099737085402012,0.029305590316653,-0.009493054822087,-0.141510263085365,0.011910374276340,0.224269941449165,0.020875563845038,0.137604355812073,0.161110922694206,0.080691963434219,0.069750897586346,-0.011903287842870));
res += mul(Get(s0,dx,-dy), float4x4(-0.092940129339695,-0.014725605025887,-0.007498477585614,0.037340741604567,0.091660618782043,-0.079083576798439,0.072318933904171,0.052336949855089,0.042355872690678,0.012156018055975,0.059380646795034,-0.082522690296173,-0.019736122339964,-0.085595659911633,-0.050258927047253,-0.154408782720566));
res += mul(Get(s0,dx,0), float4x4(0.256506264209747,0.019167859107256,-0.012785788625479,0.028356909751892,-0.013741395436227,-0.154968425631523,0.005067724734545,0.044069681316614,0.192367538809776,0.049229510128498,-0.128350585699081,-0.226537987589836,0.126782178878784,-0.120923012495041,-0.178665846586227,-0.316412031650543));
res += mul(Get(s0,dx,dy), float4x4(-0.154024824500084,0.049335923045874,-0.041042685508728,-0.039348375052214,0.180855005979538,0.056792847812176,0.013759837485850,0.124445512890816,0.145017638802528,-0.057304862886667,0.081196084618568,-0.065455913543701,-0.083741910755634,-0.009606496430933,-0.035550944507122,-0.009108612313867));
res += mul(Get(s1,-dx,-dy), float4x4(0.005506192333996,-0.004950870294124,-0.092049136757851,-0.105325043201447,-0.019559124484658,0.008353490382433,-0.022551283240318,0.038491640239954,-0.054336521774530,0.058356009423733,-0.038044188171625,0.187149003148079,-0.309137970209122,-0.083155997097492,-0.152681395411491,-0.201793104410172));
res += mul(Get(s1,-dx,0), float4x4(-0.104619018733501,0.010911098681390,-0.225117757916451,0.070975609123707,-0.046320237219334,0.076604627072811,0.161393240094185,0.121144525706768,0.165963903069496,-0.043113633990288,0.198476016521454,-0.047176353633404,-0.013020520098507,-0.106830716133118,-0.020128155127168,-0.106736078858376));
res += mul(Get(s1,-dx,dy), float4x4(0.117712847888470,0.037459284067154,-0.059240709990263,0.121569268405437,-0.032624941319227,-0.058527685701847,0.112494543194771,0.073838368058205,-0.106023430824280,0.010376670397818,0.129070609807968,0.109242647886276,0.019705850630999,0.047272656112909,0.023821566253901,-0.038024269044399));
res += mul(Get(s1,0,-dy), float4x4(0.125410705804825,0.179717168211937,-0.043094433844090,0.133667275309563,-0.003068819409236,0.050909552723169,-0.028959104791284,0.014130800031126,-0.032840833067894,0.034339319914579,-0.079128019511700,0.221275940537453,-0.183674797415733,-0.079077176749706,-0.020587598904967,0.064627684652805));
res += mul(Get(s1,0,0), float4x4(-0.231681749224663,0.007549526635557,-0.052585259079933,0.182977467775345,-0.083647787570953,-0.120447821915150,0.029094900935888,0.064700916409492,-0.150685012340546,0.049059785902500,-0.163124188780785,0.104396954178810,-0.069635778665543,-0.101829566061497,0.141463100910187,0.149710550904274));
res += mul(Get(s1,0,dy), float4x4(-0.000002879505018,0.032065466046333,-0.058936048299074,-0.072080329060555,0.099714092910290,0.010664605535567,0.030928796157241,0.202665880322456,-0.040765654295683,-0.143671378493309,-0.003493171650916,-0.044253904372454,0.079796105623245,0.071982540190220,0.152399703860283,-0.145486190915108));
res += mul(Get(s1,dx,-dy), float4x4(0.053677231073380,0.051125105470419,-0.039056014269590,0.038986422121525,-0.103237032890320,-0.151564449071884,0.000882275926415,0.173061922192574,-0.150149762630463,-0.065727904438972,-0.070719622075558,-0.076595827937126,0.135757580399513,0.146418079733849,-0.027911359444261,0.033136509358883));
res += mul(Get(s1,dx,0), float4x4(0.050008617341518,0.040531139820814,0.049593161791563,-0.018810486420989,0.020798826590180,0.143406420946121,-0.187178909778595,0.298657357692719,0.065344169735909,0.058444336056709,0.103431805968285,-0.046145081520081,0.054198775440454,-0.066519409418106,-0.105604507029057,0.083953127264977));
res += mul(Get(s1,dx,dy), float4x4(-0.033907823264599,-0.088079251348972,-0.035872962325811,-0.081317700445652,0.012133961543441,0.017083685845137,0.076980635523796,0.134291931986809,0.162243396043777,0.046488419175148,-0.077106870710850,0.042809840291739,0.002735717454925,0.094778686761856,0.100205190479755,0.035534754395485));
res += mul(Get(s2,-dx,-dy), float4x4(0.002504454692826,0.025725167244673,0.016012366861105,0.010741746984422,0.079743117094040,0.133430212736130,0.059736654162407,0.004709583707154,-0.086147747933865,-0.088210828602314,0.173795089125633,-0.027237253263593,-0.084479101002216,0.043694928288460,-0.034335117787123,0.011040234938264));
res += mul(Get(s2,-dx,0), float4x4(-0.085249431431293,0.009352462366223,0.209393948316574,0.015548423863947,0.078777164220810,0.144555285573006,0.022495381534100,0.209346488118172,0.198970004916191,0.150434523820877,-0.036980062723160,-0.024860989302397,-0.043019652366638,0.143561363220215,-0.037494320422411,0.121955871582031));
res += mul(Get(s2,-dx,dy), float4x4(0.153232604265213,0.046049084514380,0.043453771620989,-0.189474403858185,0.160088837146759,-0.044015455991030,-0.078230261802673,0.080916248261929,-0.048612538725138,-0.057335648685694,-0.006110002286732,-0.069184131920338,0.178848341107368,0.086571142077446,0.064390130341053,0.122910812497139));
res += mul(Get(s2,0,-dy), float4x4(-0.130369782447815,0.039775751531124,-0.051763460040092,-0.000617106154095,0.027597075328231,-0.037813741713762,-0.098927907645702,0.238382562994957,-0.011324410326779,0.221477344632149,0.135352298617363,0.104538857936859,-0.109275497496128,-0.061059016734362,0.190470069646835,-0.001489103073254));
res += mul(Get(s2,0,0), float4x4(-0.092899806797504,-0.065185613930225,0.057369433343410,0.256429940462112,-0.053492806851864,0.209123775362968,0.156119093298912,0.041688371449709,-0.205456629395485,0.099545806646347,-0.017554322257638,-0.099611178040504,-0.012114052660763,-0.041687835007906,-0.107578121125698,0.025764405727386));
res += mul(Get(s2,0,dy), float4x4(0.016680728644133,0.267927348613739,-0.086653165519238,0.022738402709365,0.021427232772112,-0.020658316090703,-0.019496250897646,-0.015986576676369,-0.167350068688393,-0.218808993697166,-0.132631585001945,-0.095074124634266,-0.066171593964100,0.076124928891659,-0.074435584247112,0.186589717864990));
res += mul(Get(s2,dx,-dy), float4x4(-0.031598992645741,-0.069313369691372,-0.022855486720800,-0.014942787587643,-0.023944329470396,0.024444263428450,-0.094499036669731,-0.096080698072910,-0.012811834923923,-0.012416514568031,-0.142828360199928,0.021631935611367,0.068996824324131,0.037156380712986,0.012822119519114,-0.190998882055283));
res += mul(Get(s2,dx,0), float4x4(0.119521334767342,-0.108273260295391,0.133028477430344,-0.032991647720337,0.003290256019682,0.037721943110228,0.000600311846938,-0.121169619262218,0.044278956949711,-0.161970451474190,-0.011790649965405,0.083863176405430,0.034399017691612,0.174417763948441,0.174016922712326,0.024192426353693));
res += mul(Get(s2,dx,dy), float4x4(0.129810333251953,0.228944525122643,-0.090693213045597,0.030787155032158,0.046156473457813,0.087114185094833,-0.099741436541080,-0.124249018728733,-0.040910374373198,-0.060691487044096,0.027181757614017,-0.110553339123726,0.032911829650402,0.034703180193901,-0.082150802016258,0.015371301211417));
res += mul(Get(s3,-dx,-dy), float4x4(-0.019541742280126,-0.037908490747213,0.086165398359299,-0.211930066347122,0.120087496936321,-0.045763708651066,-0.037333134561777,0.187462165951729,0.133905634284019,-0.082774557173252,-0.152052715420723,0.014623437076807,0.075926035642624,0.129447966814041,0.012461079284549,0.042266391217709));
res += mul(Get(s3,-dx,0), float4x4(-0.026557018980384,0.093667998909950,-0.158245071768761,0.097288891673088,0.101141169667244,-0.042539976537228,-0.314794003963470,-0.146914824843407,-0.049890462309122,-0.041658576577902,-0.222408339381218,-0.058605067431927,0.038124144077301,0.109374746680260,-0.114002823829651,-0.052844699472189));
res += mul(Get(s3,-dx,dy), float4x4(0.202954605221748,0.239454820752144,0.011074069887400,0.051452036947012,-0.046213369816542,-0.078248582780361,0.076199948787689,0.014832218177617,0.199758037924767,0.086151562631130,-0.023339197039604,0.189281150698662,-0.305179476737976,-0.000626070308499,0.093857802450657,-0.055475383996964));
res += mul(Get(s3,0,-dy), float4x4(0.041125629097223,0.129865333437920,-0.120487645268440,-0.181283429265022,-0.051861573010683,-0.045151919126511,-0.011675462126732,-0.117774620652199,0.215681299567223,-0.119138464331627,0.017137801274657,-0.024317361414433,0.005755321122706,0.030132735148072,-0.153531387448311,-0.078088782727718));
res += mul(Get(s3,0,0), float4x4(-0.169977068901062,-0.026819460093975,0.176626518368721,-0.081765912473202,0.085352167487144,-0.070840626955032,0.166415497660637,-0.055794216692448,0.047532018274069,-0.018837409093976,-0.114776529371738,0.055903512984514,0.138038873672485,0.176727056503296,0.016800209879875,-0.052829790860415));
res += mul(Get(s3,0,dy), float4x4(-0.019225960597396,0.196466565132141,-0.089992500841618,-0.051661547273397,0.150462567806244,-0.080835677683353,0.068473041057587,-0.113119557499886,0.054798770695925,0.019027838483453,0.103838108479977,-0.148474261164665,-0.103108748793602,0.070982269942760,0.057715427130461,-0.057709462940693));
res += mul(Get(s3,dx,-dy), float4x4(-0.029189778491855,-0.297147899866104,0.042732067406178,-0.118154607713223,0.094711512327194,-0.043310560286045,-0.036053784191608,0.025921132415533,0.066436298191547,-0.079486474394798,0.120098397135735,-0.049898307770491,0.027300430461764,-0.120623148977757,-0.220730900764465,0.054299842566252));
res += mul(Get(s3,dx,0), float4x4(-0.076578609645367,-0.066718049347401,0.251672387123108,0.235896974802017,-0.008658104576170,0.196324244141579,-0.128552079200745,-0.184074088931084,0.100269943475723,0.096082665026188,0.019032578915358,0.165330871939659,-0.033355202525854,0.032788243144751,-0.208985731005669,0.115390993654728));
res += mul(Get(s3,dx,dy), float4x4(-0.102876253426075,-0.008078685961664,0.014602771028876,0.076189830899239,0.124408096075058,-0.108074523508549,-0.004852849990129,-0.002839216263965,-0.097359031438828,-0.009206485003233,0.092533126473427,-0.089219622313976,-0.089713543653488,0.041682206094265,-0.226003974676132,-0.079312749207020));
return max(float4(0,0,0,0), res);
}