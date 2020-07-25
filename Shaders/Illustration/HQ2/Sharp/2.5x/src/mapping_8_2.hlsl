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
res += mul(Get(s0,-dx,-dy), float4x4(0.015111370012164,-0.027046307921410,-0.067914418876171,0.141476497054100,-0.083538368344307,0.061761267483234,0.196815043687820,-0.064122468233109,-0.045832533389330,-0.041130047291517,0.122933834791183,0.019520241767168,0.042274676263332,0.051765147596598,-0.028925571590662,-0.091204553842545));
res += mul(Get(s0,-dx,0), float4x4(-0.018326096236706,-0.191082090139389,0.108521640300751,0.076404549181461,0.041616227477789,0.075383126735687,-0.040547378361225,-0.049653612077236,-0.033329959958792,-0.050593510270119,-0.083187006413937,-0.048229776322842,-0.069352738559246,-0.112258322536945,-0.003240271937102,0.049710627645254));
res += mul(Get(s0,-dx,dy), float4x4(-0.064790025353432,-0.088677868247032,0.128166869282722,0.020215379074216,-0.000593214994296,-0.015432523563504,-0.037274301052094,-0.107628248631954,0.082145161926746,-0.037755176424980,0.127835169434547,0.072349771857262,0.004537269007415,-0.137094184756279,-0.008641703985631,-0.112563684582710));
res += mul(Get(s0,0,-dy), float4x4(0.094264067709446,-0.154246419668198,-0.034597355872393,-0.172898337244987,-0.005235380027443,-0.016654929146171,0.069910161197186,0.111811943352222,-0.013068719767034,0.011478365398943,-0.076872348785400,-0.086800381541252,-0.092238381505013,-0.070312686264515,-0.024221040308475,0.112338609993458));
res += mul(Get(s0,0,0), float4x4(0.035692211240530,-0.029483184218407,-0.068987794220448,-0.067000448703766,0.030906328931451,-0.015480954200029,0.066303968429565,0.204471826553345,0.123758018016815,-0.051766823977232,0.107827275991440,0.027663270011544,0.009099975228310,0.178125768899918,0.003422282868996,0.016213746741414));
res += mul(Get(s0,0,dy), float4x4(-0.118824161589146,-0.077654667198658,-0.039633508771658,0.211883053183556,-0.094233840703964,0.049982551485300,0.214617207646370,0.098130315542221,0.059213671833277,0.070105411112309,-0.101359061896801,0.127929762005806,0.122527472674847,0.127830445766449,-0.111052125692368,0.048833802342415));
res += mul(Get(s0,dx,-dy), float4x4(0.030726877972484,-0.037031501531601,-0.134598776698112,0.009998085908592,0.018127655610442,0.007697035092860,0.022096684202552,-0.128120914101601,-0.022740213200450,-0.027815174311399,0.226757064461708,-0.087043352425098,-0.055996090173721,0.046564906835556,-0.067261181771755,-0.123911589384079));
res += mul(Get(s0,dx,0), float4x4(-0.088575124740601,0.022902023047209,0.000469561840873,0.095132797956467,0.158480197191238,-0.063399128615856,0.147242709994316,0.079612165689468,0.077949203550816,0.029962854459882,0.055279828608036,0.111505500972271,-0.020742099732161,-0.026924641802907,-0.003432786557823,-0.124716661870480));
res += mul(Get(s0,dx,dy), float4x4(0.209172382950783,-0.116021662950516,0.041046090424061,0.154207855463028,0.039748668670654,-0.066414922475815,0.052447594702244,-0.052016030997038,-0.128733649849892,-0.036334764212370,0.016377512365580,-0.115117430686951,-0.104343436658382,-0.049927614629269,-0.044557593762875,0.175502866506577));
res += mul(Get(s1,-dx,-dy), float4x4(-0.038706142455339,-0.027280950918794,-0.054077554494143,-0.025731803849339,-0.022207217290998,0.016738286241889,0.123630553483963,0.005275394767523,-0.178674414753914,-0.124242492020130,-0.016219049692154,0.132423281669617,-0.038012232631445,-0.091722860932350,-0.128888636827469,0.031672269105911));
res += mul(Get(s1,-dx,0), float4x4(0.043900359421968,0.013510669581592,0.051474552601576,-0.146179124712944,0.000304752727970,-0.115856185555458,-0.051031529903412,0.217788890004158,-0.083314687013626,-0.139635816216469,0.051676746457815,0.131456911563873,0.191099554300308,-0.048744171857834,-0.058911051601171,-0.163171336054802));
res += mul(Get(s1,-dx,dy), float4x4(0.056053839623928,0.118165284395218,0.066961191594601,-0.122050002217293,-0.013266462832689,0.032630335539579,0.120261825621128,-0.161503925919533,-0.065951369702816,0.106677524745464,-0.039066351950169,0.138816505670547,-0.052242930978537,0.099189430475235,-0.103981137275696,0.102434344589710));
res += mul(Get(s1,0,-dy), float4x4(0.050180401653051,0.051537297666073,-0.053497120738029,-0.154939264059067,0.128472864627838,-0.042588341981173,-0.090045072138309,-0.008863238617778,-0.019986489787698,-0.026017753407359,-0.043946895748377,-0.024768671020865,0.031392689794302,0.034584917128086,-0.043232988566160,-0.036518096923828));
res += mul(Get(s1,0,0), float4x4(0.105825573205948,0.117122873663902,-0.095203332602978,0.014766739681363,0.030474055558443,0.026642153039575,0.118145830929279,0.007968604564667,-0.096233688294888,0.005982208997011,0.004046489484608,0.100892484188080,0.244714826345444,-0.007641763892025,0.014734685420990,-0.010818022303283));
res += mul(Get(s1,0,dy), float4x4(0.137789577245712,-0.101257048547268,0.073739826679230,0.229531794786453,-0.019565474241972,-0.014786446467042,0.135569110512733,-0.040079914033413,-0.130509838461876,-0.056412093341351,-0.135341480374336,-0.221329987049103,-0.022589292377234,-0.091364823281765,0.129813730716705,-0.041142329573631));
res += mul(Get(s1,dx,-dy), float4x4(-0.028863172978163,-0.186002403497696,-0.036876235157251,-0.136908680200577,0.123326174914837,0.117237947881222,-0.020838884636760,0.094895005226135,-0.028704417869449,0.016611838713288,-0.093019522726536,0.026590120047331,0.107093170285225,0.001254681847058,0.095461547374725,-0.067458435893059));
res += mul(Get(s1,dx,0), float4x4(0.008094069547951,-0.031209573149681,-0.066363319754601,0.022503867745399,0.105224959552288,-0.091697812080383,-0.150110706686974,-0.021260552108288,-0.161626145243645,-0.031554605811834,-0.051512923091650,-0.006433736998588,0.047498848289251,-0.190016627311707,0.011985321529210,-0.042089674621820));
res += mul(Get(s1,dx,dy), float4x4(0.175912544131279,-0.105915650725365,0.133779168128967,0.097197078168392,0.011883708648384,-0.027769051492214,-0.066060133278370,0.026024255901575,0.027324801310897,-0.002489047357813,-0.139043837785721,-0.122901797294617,-0.160528346896172,0.066783219575882,-0.007001997437328,-0.072334595024586));
res += mul(Get(s2,-dx,-dy), float4x4(-0.043867036700249,-0.026169078424573,-0.061504784971476,0.058424886316061,-0.051059655845165,-0.035730756819248,-0.092623122036457,-0.070428073406219,0.046290427446365,-0.088251903653145,0.065098211169243,0.028615532442927,0.078758127987385,-0.001215840573423,0.074660487473011,0.022657824680209));
res += mul(Get(s2,-dx,0), float4x4(0.093503698706627,-0.001071665436029,-0.083317779004574,0.002433892339468,0.116825081408024,-0.022205768153071,0.092751003801823,-0.048349782824516,0.107862517237663,0.034960884600878,0.053274579346180,0.074803173542023,-0.068184927105904,-0.052917189896107,-0.026880716904998,0.157205283641815));
res += mul(Get(s2,-dx,dy), float4x4(-0.036744788289070,0.174580603837967,-0.054397668689489,0.096758581697941,-0.061199773102999,-0.157743275165558,-0.060912381857634,-0.062878608703613,-0.000458125578007,-0.012895099818707,0.096657127141953,-0.010171041823924,0.029784144833684,0.063896581530571,0.012549652718008,0.026124369353056));
res += mul(Get(s2,0,-dy), float4x4(0.123823881149292,0.046375568956137,0.095499657094479,-0.083365604281425,0.078441999852657,0.003700723638758,0.014507325366139,-0.060803208500147,-0.044961303472519,0.042753484100103,0.081809878349304,-0.170715630054474,-0.051384855061769,-0.102129161357880,-0.002556201769039,-0.057228390127420));
res += mul(Get(s2,0,0), float4x4(-0.050353210419416,0.091916799545288,0.081090644001961,0.070503331720829,-0.110069245100021,-0.012592251412570,0.005635032895952,0.237501814961433,0.152814418077469,0.061583772301674,-0.042100954800844,0.002986788982525,-0.069854773581028,-0.056936718523502,0.012456316500902,0.146313726902008));
res += mul(Get(s2,0,dy), float4x4(-0.031322326511145,0.079049892723560,0.071366555988789,0.018612250685692,-0.081349126994610,-0.133954718708992,0.103368833661079,0.032219957560301,-0.113838516175747,-0.091893881559372,0.091268032789230,-0.129481643438339,0.039265163242817,0.124208822846413,-0.065448068082333,-0.042134746909142));
res += mul(Get(s2,dx,-dy), float4x4(0.015564261004329,-0.029325556010008,-0.031132856383920,-0.014771513640881,-0.205823227763176,-0.049200303852558,-0.126412272453308,0.093473389744759,-0.058362901210785,-0.014249152503908,0.006956072989851,-0.044203568249941,0.060329321771860,0.064555123448372,0.003080976428464,0.096836701035500));
res += mul(Get(s2,dx,0), float4x4(0.072303332388401,-0.007033959962428,0.082661919295788,0.089741468429565,-0.039909094572067,-0.112926192581654,-0.012633809819818,0.092546716332436,0.112922623753548,-0.143440991640091,0.098072268068790,0.012887623161077,-0.134417891502380,-0.160249859094620,-0.003365748329088,0.235290557146072));
res += mul(Get(s2,dx,dy), float4x4(0.095201514661312,0.002131558023393,0.002651637885720,-0.127675265073776,-0.078769378364086,0.014860807918012,-0.036762788891792,-0.011175505816936,-0.043375018984079,-0.074588060379028,0.104740820825100,-0.087101392447948,0.109158135950565,-0.007823256775737,0.106618732213974,0.025851687416434));
res += mul(Get(s3,-dx,-dy), float4x4(-0.142058491706848,0.001432920806110,0.021824624389410,0.080662406980991,0.025477599352598,-0.086139678955078,0.059411842375994,0.072656795382500,-0.048603307455778,-0.011309944093227,0.135018080472946,0.127393156290054,-0.112374633550644,-0.125252068042755,0.015207074582577,0.038703735917807));
res += mul(Get(s3,-dx,0), float4x4(-0.043650530278683,-0.109664656221867,-0.145598977804184,-0.038494061678648,-0.041131448000669,-0.088479772210121,-0.047098912298679,0.219610810279846,0.072573013603687,-0.063976049423218,0.016829637810588,0.042573291808367,-0.094790384173393,-0.006023205816746,-0.087440595030785,-0.001786828506738));
res += mul(Get(s3,-dx,dy), float4x4(-0.036500696092844,0.147291854023933,-0.071982264518738,0.042570609599352,0.163045704364777,-0.030430201441050,-0.076683104038239,0.122231572866440,0.122937075793743,0.107988476753235,0.071170255541801,-0.077694825828075,0.007083918899298,-0.123846895992756,0.064148388803005,0.262195855379105));
res += mul(Get(s3,0,-dy), float4x4(0.075710296630859,-0.065323412418365,0.015617926605046,0.154831811785698,-0.052763689309359,-0.194865688681602,0.067793250083923,-0.026864141225815,0.006990871392190,-0.033621430397034,-0.049828812479973,0.137119129300117,0.024983190000057,0.005273994989693,0.026831898838282,0.127691552042961));
res += mul(Get(s3,0,0), float4x4(-0.094319000840187,0.052198767662048,-0.108622595667839,0.050935797393322,0.054996557533741,-0.038429267704487,0.083685189485550,0.032149601727724,0.055021405220032,0.022769307717681,-0.078884094953537,-0.034207120537758,0.025761138647795,0.040234468877316,-0.015142298303545,0.133073091506958));
res += mul(Get(s3,0,dy), float4x4(-0.021801887080073,0.070569634437561,-0.035620369017124,0.050977144390345,0.043884489685297,0.199982836842537,-0.145235940814018,-0.068504430353642,0.038002327084541,-0.077660717070103,-0.121822610497475,0.060204241424799,0.062166657298803,0.054921779781580,-0.085893891751766,0.000723994220607));
res += mul(Get(s3,dx,-dy), float4x4(0.126082092523575,0.037953238934278,0.132843151688576,0.101850666105747,0.015384881757200,0.025267604738474,0.101509153842926,0.156318604946136,0.188868090510368,-0.077380038797855,0.070980027318001,0.002090328605846,-0.066369190812111,0.077741205692291,-0.087701171636581,0.115929283201694));
res += mul(Get(s3,dx,0), float4x4(-0.048782035708427,0.006611954420805,0.077658072113991,-0.095529012382030,-0.014149102382362,0.020402483642101,-0.076537564396858,-0.201459690928459,-0.049328867346048,-0.052993565797806,-0.034145716577768,0.056735053658485,0.095973789691925,0.145417958498001,0.084203161299229,-0.027561197057366));
res += mul(Get(s3,dx,dy), float4x4(-0.133568048477173,0.037798695266247,-0.017928797751665,-0.064314328134060,-0.106920026242733,-0.019910620525479,0.065016642212868,0.054130420088768,-0.016562243923545,-0.057334464043379,0.088712036609650,0.029990745708346,-0.012181149795651,-0.074468590319157,0.058412931859493,0.069064736366272));
return max(float4(0,0,0,0), res);
}