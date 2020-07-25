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
res += mul(Get(s0,-dx,-dy), float4x4(0.025172905996442,0.002889572642744,0.002587585244328,-0.013583329506218,-0.050214659422636,-0.078160136938095,-0.006115420255810,-0.056364767253399,0.155844077467918,-0.069297097623348,-0.007841045036912,0.211503013968468,-0.009706053882837,0.092736534774303,-0.013655273243785,-0.009538650512695));
res += mul(Get(s0,-dx,0), float4x4(-0.000735012406949,-0.000308154412778,0.020874908193946,0.008692144416273,-0.022663179785013,-0.028874181210995,0.001006033853628,-0.071110419929028,-0.066998571157455,-0.052838586270809,-0.018308974802494,0.063338913023472,0.024498714134097,0.092570528388023,-0.003751045092940,-0.020076200366020));
res += mul(Get(s0,-dx,dy), float4x4(-0.003813191317022,0.001604649820365,0.004771668929607,0.026363443583250,0.004248389508575,0.075298324227333,0.001150700612925,-0.079859256744385,0.068226434290409,-0.073458217084408,-0.007919508032501,-0.201661154627800,-0.021659392863512,0.087851665914059,-0.018960867077112,0.005554415285587));
res += mul(Get(s0,0,-dy), float4x4(0.010763270780444,-0.003837464842945,-0.001952604507096,0.019713167101145,0.038986418396235,-0.101188406348228,0.007371505256742,-0.111945889890194,-0.252260357141495,-0.101325660943985,-0.000147650614963,0.302820235490799,-0.111609406769276,0.024977924302220,-0.012998112477362,0.014789490960538));
res += mul(Get(s0,0,0), float4x4(-0.008933628909290,0.007465893402696,-0.014624846167862,0.003310433588922,0.043832488358021,-0.009040022268891,-0.002922798739746,-0.048621971160173,-0.098537325859070,-0.059856612235308,-0.004519723821431,0.091559551656246,-0.084765180945396,0.017708834260702,-0.001350135309622,-0.071310527622700));
res += mul(Get(s0,0,dy), float4x4(0.011021601967514,0.025819197297096,-0.009222126565874,0.012933191843331,-0.030616601929069,0.159481137990952,-0.005503387656063,-0.085228808224201,0.402919501066208,-0.016264185309410,0.009945753030479,-0.234131082892418,-0.016473816707730,0.027602799236774,0.011624136008322,-0.066274322569370));
res += mul(Get(s0,dx,-dy), float4x4(-0.001599556067958,-0.005585445091128,-0.007189887110144,0.065690681338310,-0.023785181343555,-0.067533187568188,-0.015672352164984,-0.106960661709309,0.090591125190258,-0.114548645913601,-0.001411992940120,0.076842628419399,-0.012571146711707,-0.012966116890311,0.004668890032917,-0.008374461904168));
res += mul(Get(s0,dx,0), float4x4(0.018596226349473,0.003364167641848,-0.011473794467747,0.014284207485616,0.003201851155609,0.032126802951097,0.004558487329632,0.004111938644201,0.173574060201645,-0.031076939776540,-0.008337561972439,-0.014424090273678,-0.019465286284685,-0.000618380727246,-0.010261742398143,-0.029619378969073));
res += mul(Get(s0,dx,dy), float4x4(-0.010712355375290,0.017876435071230,0.012340733781457,0.003431010292843,0.042936485260725,0.137041777372360,-0.009379679337144,-0.074323847889900,-0.240871146321297,-0.024431519210339,-0.010933255776763,-0.108715601265430,0.007788356859237,0.017101349309087,0.026979807764292,-0.038194879889488));
res += mul(Get(s1,-dx,-dy), float4x4(0.009258191101253,0.007489499635994,0.003207004163414,-0.005512995645404,0.073724232614040,-0.045281454920769,-0.026850273832679,0.208798170089722,-0.021138599142432,0.147981300950050,-0.023363739252090,0.030232403427362,-0.005180981941521,0.000235573388636,-0.009553809650242,0.008864562027156));
res += mul(Get(s1,-dx,0), float4x4(-0.001906080404297,-0.014678141102195,-0.016803793609142,-0.001762934611179,-0.078386515378952,-0.031440764665604,-0.012527126818895,0.005580129567534,0.090252757072449,0.132178500294685,-0.010681208223104,-0.036974590271711,0.011291873641312,0.005093850661069,0.002112991642207,0.010814425535500));
res += mul(Get(s1,-dx,dy), float4x4(-0.007347723469138,-0.017051808536053,0.000785820768215,0.001349941128865,-0.007627612445503,-0.025045137852430,-0.001857114490122,-0.121749058365822,0.056214235723019,0.121975496411324,-0.013420542702079,-0.073622725903988,0.011035234667361,-0.013708960264921,-0.015103968791664,0.017024604603648));
res += mul(Get(s1,0,-dy), float4x4(-0.013633688911796,-0.002302905544639,0.007823089137673,0.002206943230703,-0.112914033234119,-0.082042068243027,0.000163718781550,0.244052946567535,-0.016756117343903,0.037117995321751,0.010740316472948,0.156765446066856,0.024362344294786,-0.006401904392987,0.033431846648455,-0.007089862599969));
res += mul(Get(s1,0,0), float4x4(0.014830169267952,0.010158995166421,-0.008168886415660,0.010254900902510,0.051971089094877,-0.041607081890106,-0.004470091778785,-0.008888592943549,0.004950654692948,0.005404591560364,0.007271334528923,0.016514820978045,-0.002687046537176,0.011080202646554,-0.003798320423812,-0.001403305446729));
res += mul(Get(s1,0,dy), float4x4(0.013307457789779,0.006665951572359,-0.016410775482655,0.008426500484347,0.257832378149033,-0.037216365337372,-0.010463259182870,-0.185300230979919,0.025031059980392,0.022387105971575,0.000362287857570,-0.144543632864952,0.021459596231580,0.014321000315249,-0.011330831795931,0.014472262933850));
res += mul(Get(s1,dx,-dy), float4x4(0.003693299368024,0.003365137847140,0.011721201241016,-0.012142481282353,-0.012848374433815,-0.078847512602806,-0.014790875837207,0.129409328103065,-0.009962270036340,-0.074550889432430,0.009653319604695,0.177525907754898,0.028195412829518,-0.001505402964540,0.008892240002751,0.002474945038557));
res += mul(Get(s1,dx,0), float4x4(0.012694823555648,0.003435429651290,-0.013878345489502,-0.014461860060692,0.149616956710815,-0.048539601266384,-0.003201328450814,-0.046699609607458,-0.029625792056322,-0.123797729611397,-0.012839525938034,0.071757733821869,0.027003997936845,0.001943461480550,0.008702551014721,-0.008555958047509));
res += mul(Get(s1,dx,dy), float4x4(0.011662951670587,0.011630619876087,-0.004660170525312,0.015217155218124,-0.146453708410263,-0.007664709817618,-0.001871751621366,-0.101983189582825,0.016563510522246,-0.073792554438114,0.004120346158743,-0.154419466853142,-0.034690115600824,0.009615715593100,-0.009619007818401,0.014386697672307));
res += mul(Get(s2,-dx,-dy), float4x4(-0.036754500120878,0.003179301042110,0.005615742411464,0.033887255936861,-0.001572745386511,0.042240992188454,-0.004312768112868,0.006062953732908,0.084115624427795,0.092931099236012,-0.007632928434759,0.030812505632639,-0.054512035101652,-0.028862427920103,-0.015701200813055,0.103815138339996));
res += mul(Get(s2,-dx,0), float4x4(-0.020916799083352,-0.025155782699585,-0.002101375488564,-0.023838182911277,0.035269562155008,0.040605232119560,0.020991420373321,0.007377415429801,0.037017587572336,-0.008039717562497,-0.009766146540642,-0.077138327062130,-0.001834332244471,-0.021919185295701,0.004489508457482,0.027343438938260));
res += mul(Get(s2,-dx,dy), float4x4(0.008095355704427,0.004303355235606,-0.006078918464482,-0.058629360049963,0.001025296282023,0.000087678185082,0.000312192889396,-0.000567082024645,-0.072304986417294,-0.063261307775974,-0.015965459868312,0.061543032526970,0.086169771850109,-0.045981965959072,0.003765146480873,-0.105139233171940));
res += mul(Get(s2,0,-dy), float4x4(0.004816471133381,0.026753513142467,0.018523840233684,0.051028884947300,-0.021449021995068,0.007336190436035,0.003733828198165,-0.022930566221476,0.138763383030891,0.090483561158180,0.015126587823033,0.035451348870993,-0.064916223287582,-0.019154669716954,-0.014924922026694,0.072059005498886));
res += mul(Get(s2,0,0), float4x4(0.023902900516987,-0.005789232905954,-0.010002716444433,-0.035254187881947,-0.027504844591022,0.009866424836218,0.006826899014413,-0.028818411752582,-0.004530532751232,-0.003103673923761,-0.003540888195857,-0.052450153976679,-0.038493145257235,-0.001824440783821,-0.015311211347580,0.048100259155035));
res += mul(Get(s2,0,dy), float4x4(0.048134770244360,0.019141014665365,-0.008405405096710,-0.053515572100878,-0.056673765182495,0.027791496366262,0.023234270513058,-0.027186632156372,-0.139652132987976,-0.067672513425350,0.005058132112026,0.125363692641258,0.042448841035366,-0.011088715866208,0.006357782986015,-0.078533716499805));
res += mul(Get(s2,dx,-dy), float4x4(-0.024999760091305,0.081045322120190,-0.021783648058772,0.071226328611374,-0.026421720162034,-0.006990118883550,-0.010276189073920,0.013602402992547,0.005070912186056,0.078852161765099,-0.000512498954777,0.058170314878225,0.145842045545578,-0.014967240393162,0.001661585411057,0.011445079930127));
res += mul(Get(s2,dx,0), float4x4(-0.004037176724523,0.046313937753439,-0.002407296095043,-0.027363348752260,-0.012430656701326,-0.026248207315803,-0.002028048969805,0.005123550537974,0.012898865155876,-0.018492037430406,-0.014206157997251,-0.011861778795719,0.027917088940740,0.001043963246047,-0.021544221788645,0.027081092819571));
res += mul(Get(s2,dx,dy), float4x4(0.012621632777154,0.018026392906904,-0.002409943612292,-0.000365038984455,0.000273904443020,0.005589425098151,-0.000368652865291,-0.010597839951515,-0.049116782844067,-0.039888281375170,0.020262515172362,0.161509200930595,-0.095867276191711,-0.010632655583322,-0.007490377407521,-0.057470493018627));
res += mul(Get(s3,-dx,-dy), float4x4(0.025242483243346,-0.002882621949539,-0.015741614624858,0.007672950159758,0.018450168892741,-0.008440130390227,-0.024854091927409,-0.007627048064023,0.000751574756578,0.019393926486373,-0.006923790089786,0.018431041389704,-0.011213297024369,0.021033503115177,-0.003657827852294,0.004091023001820));
res += mul(Get(s3,-dx,0), float4x4(-0.035286437720060,-0.008800575509667,0.018109036609530,0.000005457632597,-0.008501224219799,0.005219270009547,0.003914996050298,0.010649537667632,-0.016368670389056,-0.002791278064251,0.009728431701660,0.020266611129045,0.000019944636733,0.048867017030716,-0.008158895187080,-0.023279469460249));
res += mul(Get(s3,-dx,dy), float4x4(0.012879713438451,-0.003593215253204,-0.017102202400565,0.007062796037644,0.011559173464775,-0.000463720672997,0.028691248968244,-0.005151460878551,-0.009667853824794,0.013006607070565,-0.003868215950206,0.000624106382020,-0.014113577082753,0.104885779321194,0.011590706184506,-0.006214181426913));
res += mul(Get(s3,0,-dy), float4x4(0.008145286701620,-0.008289478719234,-0.007532876450568,-0.001704910537228,0.004381130449474,0.024260725826025,-0.000632584327832,0.005851925350726,0.069051630795002,0.010822342708707,-0.008703644387424,0.038984816521406,-0.028774321079254,0.016332611441612,0.000242413836531,-0.026992192491889));
res += mul(Get(s3,0,0), float4x4(0.011954492889345,-0.000348483299604,0.021465351805091,-0.004298933781683,-0.008200268261135,0.047477588057518,-0.005168726202101,-0.023079801350832,0.068780623376369,0.005619963165373,-0.020186321809888,0.023185146972537,-0.024921836331487,0.033732764422894,0.016123468056321,-0.019038980826735));
res += mul(Get(s3,0,dy), float4x4(0.000124713726109,-0.005861067678779,0.016831684857607,-0.004616319667548,-0.035628516227007,-0.000711878237780,-0.012125847861171,0.007673851214349,0.059876948595047,0.013535179197788,-0.001911408617161,-0.009115205146372,-0.014256042428315,0.106828697025776,0.010093034245074,-0.009447123855352));
res += mul(Get(s3,dx,-dy), float4x4(-0.001576832844876,-0.008516116067767,-0.001368074328639,-0.010250298306346,0.021147871389985,0.063379578292370,0.021834742277861,-0.008984470739961,-0.004316772334278,0.009183279238641,0.003918350674212,-0.010961508378386,-0.028829328715801,-0.000284987152554,-0.004237119108438,0.018458902835846));
res += mul(Get(s3,dx,0), float4x4(-0.026335574686527,-0.014255587011576,0.004752657841891,0.005798131693155,-0.008923760615289,0.009045451879501,0.012270806357265,-0.016532192006707,-0.000787658558693,-0.001552392612211,0.010229739360511,0.007018319796771,-0.018745733425021,0.014950547367334,-0.007640859577805,-0.015509567223489));
res += mul(Get(s3,dx,dy), float4x4(0.015522459521890,0.004726734012365,-0.010518345981836,-0.001553442794830,-0.001404771464877,0.030496753752232,0.016037868335843,-0.023765726014972,0.002969698514789,-0.025321392342448,-0.001803880208172,-0.004409257788211,-0.075614526867867,0.066760860383511,0.001937477034517,-0.034295987337828));
res = max(float4(0,0,0,0), res);
return res;
}