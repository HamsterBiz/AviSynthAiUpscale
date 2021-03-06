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
res += mul(Get(s0,-dx,-dy), float4x4(0.000174534841790,0.032118916511536,0.024754161015153,0.018507281318307,0.032792206853628,-0.019629415124655,-0.022587664425373,0.025430228561163,0.050832897424698,0.029402261599898,0.040913518518209,0.030595179647207,-0.055872309952974,-0.007812852039933,0.038329247385263,-0.005039037205279));
res += mul(Get(s0,-dx,0), float4x4(-0.014607115648687,0.055776476860046,0.081159152090549,0.098278157413006,-0.005086169578135,-0.030289353802800,0.051356241106987,0.007204107474536,-0.028563337400556,-0.015516920015216,0.056635607033968,-0.031911324709654,-0.068240016698837,0.012448496185243,0.066950492560863,0.065818838775158));
res += mul(Get(s0,-dx,dy), float4x4(-0.049556396901608,0.024367243051529,0.067198783159256,0.028068268671632,-0.035445712506771,-0.031557124108076,0.040461000055075,0.018146719783545,0.040176238864660,0.005349960643798,0.008172231726348,-0.005371159408242,-0.020047109574080,0.001912621199153,-0.027102777734399,-0.012448056600988));
res += mul(Get(s0,0,-dy), float4x4(0.008569550700486,-0.018605174496770,0.001110027311370,-0.003596669295803,0.083587251603603,0.008248101919889,-0.067550398409367,0.044361013919115,0.037088442593813,-0.002863987348974,0.112977966666222,0.004232409410179,0.032084394246340,-0.037936396896839,0.005043209996074,-0.017300873994827));
res += mul(Get(s0,0,0), float4x4(-0.058244124054909,-0.038509994745255,0.184051930904388,-0.064118668437004,0.132275491952896,0.006919197272509,-0.095003992319107,0.067696511745453,0.048790939152241,0.011210575699806,-0.023748368024826,0.038598719984293,-0.066288359463215,-0.046915151178837,0.219696477055550,-0.063011325895786));
res += mul(Get(s0,0,dy), float4x4(-0.047517720609903,-0.021696006879210,0.033622205257416,0.004403602797538,0.021152766421437,-0.035544503480196,-0.018971614539623,0.034523691982031,0.112164832651615,0.005337368696928,-0.035271652042866,0.022894531488419,-0.066108338534832,0.018890134990215,0.055676139891148,0.032282851636410));
res += mul(Get(s0,dx,-dy), float4x4(-0.013179083354771,-0.038913965225220,0.011202818714082,-0.013112782500684,-0.018175927922130,0.079994305968285,0.004504439420998,0.031092645600438,-0.009696124121547,0.042795952409506,0.038984168320894,0.042907766997814,0.008929079398513,-0.000805736344773,0.011278448626399,0.016867509111762));
res += mul(Get(s0,dx,0), float4x4(-0.007422095164657,-0.042004264891148,0.007733498699963,-0.004575171042234,-0.020680796355009,0.063191294670105,0.083103261888027,0.023780094459653,-0.024204066023231,0.072409220039845,0.010505571961403,0.059492006897926,0.005681732669473,-0.035693336278200,0.046111140400171,-0.007358378730714));
res += mul(Get(s0,dx,dy), float4x4(-0.021047305315733,0.011495951563120,0.019781330600381,0.037442762404680,-0.033329959958792,0.037811301648617,0.044991102069616,0.025110311806202,0.013378228992224,0.053971514105797,-0.026023494079709,0.040748950093985,-0.050308149307966,-0.010806311853230,0.090116187930107,0.000987094710581));
res += mul(Get(s1,-dx,-dy), float4x4(0.032280467450619,-0.024806484580040,-0.003839243436232,-0.011444610543549,-0.005071022082120,0.000612029340118,-0.037178236991167,-0.029502809047699,-0.003988957963884,0.037199243903160,0.072002984583378,0.049653507769108,-0.026414470747113,0.034863304346800,-0.038727726787329,0.026586355641484));
res += mul(Get(s1,-dx,0), float4x4(0.084869444370270,0.019733000546694,-0.042027831077576,0.001323075499386,-0.054430756717920,-0.028169464319944,0.038044821470976,-0.031672984361649,-0.020507700741291,0.043492633849382,0.041149657219648,-0.013660387136042,0.062376625835896,0.072714149951935,-0.062463033944368,0.048618018627167));
res += mul(Get(s1,-dx,dy), float4x4(0.112303324043751,0.005752759985626,-0.071462787687778,0.034411430358887,-0.053363513201475,-0.006065073888749,-0.003412336809561,-0.028849424794316,0.000646262953524,-0.000172492320416,0.007627771701664,-0.057574063539505,-0.014355304650962,0.021389512345195,0.044838938862085,0.025087039917707));
res += mul(Get(s1,0,-dy), float4x4(-0.037267476320267,-0.000547711562831,0.039651978760958,0.006853176746517,0.019431211054325,-0.004558999091387,-0.005864686798304,-0.006513778120279,-0.004053730983287,0.009341497905552,0.140984266996384,-0.006761876400560,-0.025758879259229,0.053936116397381,0.018991986289620,0.049568146467209));
res += mul(Get(s1,0,0), float4x4(0.015324861742556,0.110097602009773,0.023578749969602,0.092709317803383,-0.003340086201206,-0.044155251234770,0.048059321939945,-0.015584588982165,0.034585330635309,0.067228123545647,0.008250098675489,-0.002902233041823,-0.015957547351718,0.058099791407585,0.076913170516491,0.035208731889725));
res += mul(Get(s1,0,dy), float4x4(0.065996021032333,0.102223612368107,-0.033936299383640,0.074562922120094,-0.017432538792491,-0.004806282930076,0.024866081774235,-0.012426173314452,0.056116607040167,0.015370314940810,-0.036882597953081,-0.018952170386910,-0.019294407218695,-0.018787257373333,0.048084892332554,0.045756142586470));
res += mul(Get(s1,dx,-dy), float4x4(-0.006608050316572,-0.027244549244642,-0.040189187973738,-0.004625507630408,0.026933671906590,0.048340335488319,-0.011843406595290,0.059492420405149,0.035319849848747,-0.052082378417253,0.027602622285485,-0.060142904520035,0.019643759354949,-0.020622134208679,0.013580484315753,-0.017392477020621));
res += mul(Get(s1,dx,0), float4x4(0.007786348927766,0.031826075166464,0.049907431006432,-0.022289432585239,0.041660867631435,0.032941292971373,-0.027766967192292,0.069092169404030,0.035489216446877,-0.037666518241167,0.062243532389402,-0.069871224462986,0.026945129036903,-0.056840363889933,0.058414831757545,-0.027886344119906));
res += mul(Get(s1,dx,dy), float4x4(0.058745544403791,0.050624970346689,-0.032360680401325,0.027294008061290,-0.001757688936777,0.014878375455737,-0.007778452709317,0.042139329016209,-0.016586517915130,-0.002795489737764,0.041233632713556,-0.093042343854904,0.019412633031607,-0.014720159582794,0.016344454139471,0.024715930223465));
res += mul(Get(s2,-dx,-dy), float4x4(-0.020781312137842,-0.014172608032823,0.007975305430591,-0.002964511979371,-0.039555549621582,-0.002717313589528,0.047323707491159,0.023368339985609,0.018696984276175,-0.018360508605838,-0.050611164420843,-0.058452256023884,0.003053610213101,0.024803880602121,-0.008496647700667,-0.017904214560986));
res += mul(Get(s2,-dx,0), float4x4(-0.011147865094244,0.016963627189398,0.004292267840356,0.012616014108062,-0.014388638548553,0.000797597691417,0.056862629950047,0.023773219436407,0.091679044067860,-0.011957610026002,-0.040673375129700,-0.057446531951427,0.044810362160206,0.035519775003195,-0.010774304158986,0.006005118601024));
res += mul(Get(s2,-dx,dy), float4x4(-0.011128151789308,0.038882270455360,0.001472436590120,0.023672826588154,0.002271621953696,0.010615827515721,-0.010371277108788,0.025486344471574,0.131865754723549,-0.015331654809415,-0.061129968613386,-0.032193597406149,-0.019450176507235,-0.003539091441780,0.003647011471912,0.002674441086128));
res += mul(Get(s2,0,-dy), float4x4(0.023994259536266,0.025145115330815,-0.037875119596720,0.058016195893288,-0.013649513013661,-0.038011297583580,0.024616971611977,-0.029443096369505,-0.038976207375526,0.006665735505521,0.075953729450703,-0.016760261729360,0.052433438599110,0.012030957266688,0.037115089595318,-0.024518577381968));
res += mul(Get(s2,0,0), float4x4(0.019737817347050,0.058897346258163,-0.014714980497956,0.071220204234123,0.023022197186947,-0.048035964369774,0.058230943977833,-0.034085154533386,0.155289277434349,0.128819689154625,-0.069891273975372,0.023112883791327,0.091139912605286,0.022601546719670,0.048316799104214,-0.009126188233495));
res += mul(Get(s2,0,dy), float4x4(-0.040084846317768,-0.002470300998539,0.059143945574760,0.020234201103449,0.076627872884274,0.026589268818498,-0.019554141908884,0.032335456460714,0.100371733307838,-0.009770445525646,0.021757625043392,-0.040820781141520,-0.067354068160057,-0.048905543982983,0.227659702301025,-0.035918835550547));
res += mul(Get(s2,dx,-dy), float4x4(-0.002018524101004,0.008048320189118,0.027643667533994,0.010649151168764,-0.024058638140559,-0.060548499226570,0.011864112690091,-0.006830825470388,-0.003236440010369,0.049675777554512,-0.006791241466999,0.041594386100769,-0.029818005859852,0.051105123013258,0.018299873918295,-0.018564922735095));
res += mul(Get(s2,dx,0), float4x4(-0.042780689895153,-0.048525549471378,0.119037523865700,-0.025569716468453,0.105418823659420,-0.038244802504778,-0.058383338153362,0.010717358440161,-0.004911782685667,0.129045233130455,0.039018366485834,0.062364842742682,0.035453394055367,0.034190043807030,-0.047961637377739,-0.005242703948170));
res += mul(Get(s2,dx,dy), float4x4(-0.031018164008856,-0.056251399219036,0.056819770485163,0.004053384065628,0.085487015545368,-0.021221449598670,-0.020900182425976,0.006155951879919,0.014488264918327,-0.007234307471663,-0.004110821988434,0.011922037228942,-0.053820990025997,-0.014632407575846,0.027713499963284,-0.031432125717402));
res += mul(Get(s3,-dx,-dy), float4x4(0.029822738841176,0.004505493212491,-0.038551438599825,-0.025168387219310,-0.019380791112781,0.062193222343922,0.069170586764812,-0.005942814517766,-0.003259842982516,-0.008519954979420,-0.012085861526430,0.006184602156281,-0.082457818090916,0.037115611135960,0.095950581133366,0.023681182414293));
res += mul(Get(s3,-dx,0), float4x4(0.055616520345211,-0.033507194370031,0.005749270319939,-0.049091320484877,-0.066016286611557,0.058384269475937,0.185412019491196,0.000960775243584,0.000939320831094,-0.018342085182667,-0.014553355984390,-0.021105008199811,-0.084689632058144,0.116121970117092,0.072900570929050,-0.045405298471451));
res += mul(Get(s3,-dx,dy), float4x4(-0.019873240962625,-0.048995550721884,0.019130665808916,0.004464450292289,0.057854082435369,0.039948884397745,0.018297992646694,-0.000849366246257,0.010264008305967,-0.008024177514017,-0.016862265765667,-0.004246345721185,-0.087847225368023,0.111386775970459,0.061571754515171,0.003718401072547));
res += mul(Get(s3,0,-dy), float4x4(0.000211701728404,0.018876548856497,0.018390182405710,0.014609778299928,0.066014334559441,0.047837439924479,-0.014100255444646,0.009489909745753,-0.034102037549019,0.017945731058717,0.032133612781763,0.055169280618429,-0.027007725089788,-0.034680299460888,0.114158339798450,-0.011249467730522));
res += mul(Get(s3,0,0), float4x4(0.222321629524231,0.091239839792252,-0.127613723278046,0.039550211280584,0.044524561613798,0.016877396032214,0.034179367125034,0.016743261367083,0.001342438859865,0.049474183470011,-0.035886388272047,0.046896286308765,0.001379957306199,0.009063612669706,0.000276104983641,-0.011349949985743));
res += mul(Get(s3,0,dy), float4x4(-0.022740878164768,-0.046421792358160,0.092452526092529,-0.023387331515551,0.100884966552258,0.048711545765400,-0.054157122969627,0.013045581988990,0.017007403075695,0.006557995919138,-0.005295120179653,0.015675023198128,0.005194083787501,0.034071467816830,0.035228859633207,-0.016048030927777));
res += mul(Get(s3,dx,-dy), float4x4(-0.004844733048230,-0.011007126420736,0.010028405115008,-0.017819501459599,-0.003584234043956,0.033629089593887,-0.033399689942598,-0.047690585255623,-0.018730636686087,-0.006404628511518,0.062329869717360,0.081608071923256,0.014584439806640,-0.123166874051094,-0.004232533741742,-0.040578581392765));
res += mul(Get(s3,dx,0), float4x4(0.016799382865429,0.087224535644054,0.041940398514271,-0.012577437795699,-0.023919358849525,0.046072859317064,0.021792409941554,-0.010381094180048,-0.056956816464663,0.081969298422337,0.020042439922690,0.088463142514229,0.056359220296144,-0.115387484431267,-0.016360078006983,-0.053023088723421));
res += mul(Get(s3,dx,dy), float4x4(-0.012939457781613,-0.002814703388140,0.013810974545777,-0.009187311865389,-0.036107774823904,0.016050308942795,0.011858521029353,-0.028678195551038,-0.004900495521724,0.030123202130198,-0.021365385502577,0.057271249592304,0.069300882518291,-0.077230922877789,-0.027872161939740,-0.059583745896816));
res = max(float4(0,0,0,0), res);
return res;
}
