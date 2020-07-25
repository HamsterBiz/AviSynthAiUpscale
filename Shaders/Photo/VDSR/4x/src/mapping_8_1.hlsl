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
res += mul(Get(s0,-dx,-dy), float4x4(0.118462070822716,-0.021118972450495,-0.047194413840771,0.016907865181565,-0.023612100630999,-0.127787396311760,0.011217685416341,-0.225439667701721,0.161130845546722,-0.053146727383137,-0.118277296423912,-0.091907158493996,0.083115957677364,0.136756017804146,-0.125303745269775,0.054145697504282));
res += mul(Get(s0,-dx,0), float4x4(-0.030722748488188,-0.247535616159439,0.031301695853472,0.102864883840084,-0.025321356952190,-0.041244313120842,-0.146989330649376,-0.016658434644341,-0.027237065136433,-0.003072161227465,0.018690396100283,0.054016713052988,0.005179386585951,0.191433459520340,0.084044173359871,0.036164134740829));
res += mul(Get(s0,-dx,dy), float4x4(-0.089773982763290,-0.008217237889767,-0.103605993092060,0.004431957378983,0.009585306048393,-0.258473962545395,0.168402731418610,0.016221748664975,-0.073203556239605,-0.069447055459023,-0.044433314353228,-0.074547193944454,-0.086491256952286,-0.150809243321419,0.117109440267086,0.135642468929291));
res += mul(Get(s0,0,-dy), float4x4(0.068353094160557,-0.063429079949856,-0.013945792801678,-0.029622031375766,-0.272908061742783,0.011445605196059,0.073358230292797,-0.045681126415730,-0.146104350686073,0.141021594405174,0.187620252370834,-0.141210004687309,-0.056223195046186,-0.106419980525970,-0.067641995847225,0.004450980573893));
res += mul(Get(s0,0,0), float4x4(0.062867045402527,-0.133087545633316,-0.027416408061981,-0.074588097631931,-0.090253829956055,-0.143537268042564,-0.059115231037140,-0.081756606698036,0.004947826731950,0.001678200555034,-0.021041734144092,-0.020029542967677,0.143981337547302,-0.004400525707752,-0.031213715672493,-0.001693016849458));
res += mul(Get(s0,0,dy), float4x4(0.203054040670395,-0.090017512440681,0.015230563469231,0.136629655957222,-0.134517416357994,-0.029987724497914,0.216699853539467,0.140034005045891,-0.200110167264938,0.157456830143929,0.058015186339617,0.174060851335526,0.052716575562954,0.019535340368748,-0.031654518097639,-0.064205169677734));
res += mul(Get(s0,dx,-dy), float4x4(0.107062079012394,0.061789315193892,-0.057060994207859,-0.076761066913605,0.047859635204077,-0.058375295251608,0.102641500532627,0.083673156797886,0.007518412079662,-0.251334667205811,0.056986100971699,0.030288105830550,-0.014592299237847,0.142812982201576,-0.053312122821808,-0.095313556492329));
res += mul(Get(s0,dx,0), float4x4(0.023686161264777,0.130878522992134,-0.214338451623917,-0.085253670811653,-0.137936204671860,-0.108225382864475,-0.108474105596542,0.010437662713230,-0.062022265046835,0.126018464565277,0.095837458968163,-0.040464647114277,-0.090228967368603,-0.008305681869388,-0.111291840672493,0.183216795325279));
res += mul(Get(s0,dx,dy), float4x4(0.098590545356274,0.176644369959831,0.148038253188133,0.091147661209106,-0.179014846682549,0.177841380238533,-0.027089050039649,-0.169413536787033,0.034474980086088,0.145409047603607,0.044540766626596,-0.107433564960957,0.060683358460665,-0.109710633754730,-0.014178335666656,-0.010529208928347));
res += mul(Get(s1,-dx,-dy), float4x4(-0.026028167456388,-0.061817605048418,0.056101743131876,-0.103861548006535,-0.058369044214487,-0.233805224299431,0.087108269333839,-0.090141676366329,-0.024691108614206,0.066746965050697,-0.026171570643783,-0.021996526047587,-0.067383676767349,-0.137060612440109,0.034799009561539,-0.030385822057724));
res += mul(Get(s1,-dx,0), float4x4(-0.000933203496970,-0.108727313578129,0.168224856257439,0.070089615881443,-0.128979563713074,-0.035695459693670,-0.031015930697322,-0.141492933034897,-0.117458648979664,0.149775177240372,0.219251334667206,-0.073176391422749,0.029307633638382,-0.197393342852592,0.043147265911102,-0.177614107728004));
res += mul(Get(s1,-dx,dy), float4x4(-0.108554922044277,-0.046206668019295,0.179808884859085,-0.073166511952877,-0.021941551938653,-0.099799484014511,-0.155693262815475,0.004544694442302,0.021318264305592,0.104061856865883,0.048907238990068,0.026879634708166,-0.058326054364443,-0.245265886187553,0.037747364491224,0.062693990767002));
res += mul(Get(s1,0,-dy), float4x4(0.105214565992355,0.135075986385345,-0.021467233076692,0.127893671393394,0.236424729228020,-0.015215829946101,0.085805319249630,-0.089724518358707,0.040069229900837,-0.061077173799276,-0.147578135132790,0.082791358232498,0.156426504254341,-0.016956510022283,-0.110160022974014,-0.278235197067261));
res += mul(Get(s1,0,0), float4x4(-0.076917424798012,0.006366766523570,0.095396883785725,-0.026051791384816,-0.078271456062794,0.119614548981190,-0.026370795443654,0.200634434819221,0.047205153852701,0.196535959839821,0.105553828179836,0.194611251354218,0.036615591496229,0.161710008978844,0.039969041943550,0.003316298127174));
res += mul(Get(s1,0,dy), float4x4(-0.001684711198322,0.118623301386833,0.104483656585217,0.219948872923851,-0.092994295060635,0.089725784957409,-0.095792628824711,0.050583470612764,-0.004405151121318,0.142238065600395,0.046908918768167,0.042152114212513,0.209546223282814,-0.116427488625050,0.137886270880699,-0.058276336640120));
res += mul(Get(s1,dx,-dy), float4x4(0.065206617116928,-0.009610840119421,0.034600462764502,-0.033477149903774,0.248084738850594,-0.059549793601036,0.028085822239518,-0.001109590521082,0.050738267600536,0.056840740144253,-0.044525600969791,0.331283152103424,0.233386874198914,-0.014628414064646,-0.070104502141476,0.151436179876328));
res += mul(Get(s1,dx,0), float4x4(-0.001837996300310,-0.075478009879589,0.127977758646011,-0.089741334319115,0.175597190856934,-0.058934614062309,-0.098982743918896,-0.020648906007409,0.044990222901106,-0.140637844800949,0.134078755974770,-0.042751174420118,-0.013658812269568,0.078555949032307,0.083181105554104,-0.184706196188927));
res += mul(Get(s1,dx,dy), float4x4(-0.179551258683205,-0.042877331376076,0.224876150488853,-0.068125061690807,0.033001031726599,-0.005571901798248,-0.118780247867107,0.212226644158363,0.104536429047585,0.177772551774979,-0.061273165047169,0.106228381395340,-0.045790724456310,-0.207158640027046,0.103556081652641,0.168547138571739));
res += mul(Get(s2,-dx,-dy), float4x4(0.022058578208089,0.033612515777349,0.088683202862740,-0.045067604631186,-0.048760641366243,-0.140029013156891,-0.022460104897618,-0.090483032166958,-0.052917134016752,-0.066914603114128,0.094662703573704,0.113912835717201,-0.012360963039100,-0.048106055706739,-0.026974787935615,0.041344299912453));
res += mul(Get(s2,-dx,0), float4x4(0.062728285789490,0.087278403341770,0.118161141872406,0.160714924335480,-0.177304863929749,-0.084251835942268,-0.184381872415543,0.048002466559410,0.028723502531648,0.004794411361217,-0.039575520902872,-0.058260828256607,0.111713550984859,-0.087474659085274,-0.055830445140600,-0.107764415442944));
res += mul(Get(s2,-dx,dy), float4x4(-0.037944357842207,0.092344149947166,0.004473409615457,-0.213415101170540,-0.065781354904175,-0.128664448857307,-0.024556102231145,-0.028608560562134,-0.057215664535761,0.217272579669952,0.098358795046806,0.068825662136078,0.031468715518713,0.133377030491829,0.152492269873619,0.254832118749619));
res += mul(Get(s2,0,-dy), float4x4(0.136552333831787,-0.086048722267151,0.198495998978615,-0.122922092676163,-0.028835346922278,0.116658091545105,-0.095705144107342,-0.320917665958405,0.040353871881962,0.149022713303566,-0.000208839643165,-0.008256563916802,0.108094461262226,-0.057156082242727,-0.098501913249493,-0.159772887825966));
res += mul(Get(s2,0,0), float4x4(0.160303473472595,-0.074196755886078,-0.054733902215958,0.088578931987286,0.170618742704391,-0.169334977865219,-0.087695606052876,-0.092347018420696,-0.068664774298668,-0.042866013944149,-0.248074993491173,0.071064077317715,0.081600092351437,0.040221612900496,0.038304697722197,-0.080463245511055));
res += mul(Get(s2,0,dy), float4x4(-0.055112190544605,-0.043622229248285,-0.112426944077015,-0.082239337265491,-0.325434237718582,0.066376931965351,0.118793308734894,-0.026896027848125,0.060605663806200,-0.152516677975655,-0.034668277949095,0.092724114656448,-0.113499499857426,-0.049638722091913,0.049755726009607,0.044593498110771));
res += mul(Get(s2,dx,-dy), float4x4(0.059862170368433,-0.090951174497604,-0.060944415628910,-0.049493771046400,-0.173316180706024,0.179234221577644,-0.017006283625960,-0.141444787383080,-0.085619531571865,0.093040570616722,0.077177956700325,-0.042481023818254,0.025859426707029,0.036067821085453,-0.135925054550171,0.062925815582275));
res += mul(Get(s2,dx,0), float4x4(0.009842740371823,0.027236750349402,-0.028000719845295,-0.105785466730595,-0.206750407814980,0.076455071568489,-0.226645275950432,0.108465030789375,-0.022471189498901,-0.160938322544098,-0.286691844463348,-0.041593298316002,-0.114472314715385,0.020629279315472,-0.106886848807335,0.033908516168594));
res += mul(Get(s2,dx,dy), float4x4(-0.137768134474754,-0.137795165181160,0.257734417915344,0.125258594751358,0.036341063678265,0.005142736248672,0.034599680453539,0.038019850850105,-0.187178447842598,-0.080799601972103,-0.010965620167553,-0.034456633031368,0.142061576247215,0.030490798875690,0.118373453617096,0.185849711298943));
res += mul(Get(s3,-dx,-dy), float4x4(0.042139817029238,0.138757690787315,0.106041006743908,-0.091025300323963,0.093713670969009,-0.165611863136292,-0.010546456091106,0.124922320246696,-0.060474634170532,-0.040531612932682,0.173411667346954,-0.090750455856323,0.222272768616676,-0.069570757448673,-0.066792301833630,-0.017208267003298));
res += mul(Get(s3,-dx,0), float4x4(-0.143907740712166,0.093447878956795,0.034954916685820,0.036337129771709,-0.127704367041588,-0.008368474431336,-0.098074130713940,0.003709977259859,-0.009844458661973,0.034990020096302,0.177213713526726,-0.032495755702257,0.140461832284927,-0.197996303439140,-0.086982689797878,0.156653478741646));
res += mul(Get(s3,-dx,dy), float4x4(0.090711176395416,0.078828275203705,-0.167954340577126,0.096191190183163,-0.178845882415771,-0.081258513033390,0.166099786758423,0.076990589499474,-0.105081781744957,0.045572876930237,0.067517310380936,0.071725651621819,0.157191112637520,0.092474825680256,-0.005041145719588,-0.071999751031399));
res += mul(Get(s3,0,-dy), float4x4(-0.070509269833565,-0.079334124922752,-0.056748438626528,0.014127474278212,0.035975959151983,-0.070418819785118,-0.072587832808495,-0.016015991568565,0.171510726213455,-0.199887096881866,0.159098148345947,-0.125529184937477,-0.009603942744434,-0.089114144444466,-0.209933951497078,0.071566648781300));
res += mul(Get(s3,0,0), float4x4(-0.044828314334154,-0.038696870207787,-0.225066512823105,0.188569486141205,-0.074115961790085,-0.077515803277493,0.040567751973867,-0.102052599191666,-0.120921626687050,0.061004780232906,-0.117550656199455,-0.037663556635380,0.051194492727518,-0.131692737340927,0.147081792354584,-0.017274599522352));
res += mul(Get(s3,0,dy), float4x4(0.123362615704536,0.040807496756315,-0.054015062749386,0.109868429601192,-0.220956519246101,0.200158774852753,0.188855782151222,0.114897854626179,0.052836287766695,0.178700402379036,-0.050884678959846,-0.082980342209339,0.168971717357635,-0.204728588461876,0.139302462339401,-0.011466134339571));
res += mul(Get(s3,dx,-dy), float4x4(0.056064739823341,-0.194110497832298,-0.068174183368683,-0.028464853763580,-0.125690534710884,-0.029711030423641,-0.130385950207710,-0.045473333448172,0.126228436827660,0.137442320585251,-0.101563498377800,-0.083932466804981,0.134523078799248,-0.119350858032703,-0.127302959561348,-0.053172249346972));
res += mul(Get(s3,dx,0), float4x4(-0.117849536240101,0.098680064082146,0.040381141006947,-0.044807996600866,-0.079072132706642,0.009453715756536,-0.117043495178223,-0.078131861984730,0.087290517985821,0.158415257930756,-0.094919539988041,-0.204569771885872,-0.042238585650921,-0.255676776170731,-0.079075470566750,0.007666571531445));
res += mul(Get(s3,dx,dy), float4x4(0.132990062236786,-0.001070730504580,-0.089284867048264,-0.112767718732357,-0.175946831703186,-0.192870289087296,0.064589306712151,0.173339009284973,-0.014721217565238,-0.004314872901887,0.028284860774875,0.185479849576950,-0.141724511981010,0.139230832457542,0.223432749509811,0.112982541322708));
return max(float4(0,0,0,0), res);
}