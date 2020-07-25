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
res += mul(Get(s0,-dx,-dy), float4x4(0.026912070810795,-0.032659932971001,0.054791916161776,-0.022003792226315,-0.004529853817075,0.013966484926641,0.017335694283247,-0.000296697806334,-0.003168720519170,-0.003155019599944,0.073980085551739,0.010002783499658,0.101315349340439,-0.025710312649608,0.144376873970032,-0.031054669991136));
res += mul(Get(s0,-dx,0), float4x4(0.032787919044495,-0.000875618541613,-0.000932334631216,0.039909463375807,0.007889024913311,-0.016144629567862,0.036318741738796,0.024094581604004,0.032891042530537,0.036013290286064,0.009317054413259,0.020871927961707,0.033511020243168,0.059823002666235,0.047474578022957,0.035751283168793));
res += mul(Get(s0,-dx,dy), float4x4(0.029962375760078,0.167583063244820,-0.111846335232258,-0.123414203524590,-0.007661406882107,-0.024897513911128,0.023879600688815,-0.001675270847045,0.023645706474781,0.041860483586788,-0.058435339480639,-0.059772714972496,-0.044820204377174,0.031040243804455,-0.032607488334179,0.024375647306442));
res += mul(Get(s0,0,-dy), float4x4(-0.028424719348550,-0.103640757501125,0.151593416929245,-0.062745586037636,0.000677793752402,0.014231722801924,0.004353665746748,-0.003618564689532,-0.015229738317430,-0.023511350154877,0.014266415499151,-0.010377772152424,0.061260711401701,-0.004596717189997,0.122100889682770,-0.021472772583365));
res += mul(Get(s0,0,0), float4x4(-0.042203351855278,-0.075541503727436,0.058984976261854,0.072075232863426,-0.007215874269605,0.003658148692921,0.024372149258852,-0.018550997599959,0.007633859757334,0.013780718669295,-0.046136017888784,-0.004612311255187,-0.013366153463721,0.043599862605333,0.060853105038404,-0.000797344604507));
res += mul(Get(s0,0,dy), float4x4(-0.036949161440134,0.115080855786800,-0.161992341279984,-0.022276490926743,-0.020483652129769,-0.014343513175845,0.025276876986027,-0.019804822281003,0.037217408418655,0.018770853057504,-0.039707258343697,-0.070523537695408,-0.034979410469532,0.106842145323753,-0.031435713171959,-0.023581925779581));
res += mul(Get(s0,dx,-dy), float4x4(-0.105035521090031,-0.115671291947365,-0.003437195206061,-0.107343129813671,0.029120625928044,0.011083080433309,0.001920030801557,-0.004069238435477,0.010754203423858,0.045037407428026,-0.019155012443662,0.004702126607299,0.035798266530037,0.043589312583208,0.033478371798992,-0.083837993443012));
res += mul(Get(s0,dx,0), float4x4(-0.045456606894732,-0.073699496686459,0.004131718073040,0.026679217815399,0.013067004270852,0.035527650266886,0.007516953162849,-0.018061602488160,-0.016992295160890,-0.014848379418254,-0.063526861369610,0.007916079834104,-0.001437300350517,0.017291450873017,-0.008803501725197,-0.016687016934156));
res += mul(Get(s0,dx,dy), float4x4(-0.070716515183449,0.027240848168731,-0.142915889620781,0.033115096390247,0.011619001626968,0.023333270102739,0.009691021405160,-0.011318625882268,-0.017579263076186,-0.064228937029839,-0.056206677109003,-0.075448349118233,-0.016154043376446,0.029567902907729,-0.047374200075865,-0.038720645010471));
res += mul(Get(s1,-dx,-dy), float4x4(-0.038085289299488,-0.027871700003743,-0.030678881332278,-0.026713592931628,0.107739746570587,0.085254944860935,0.019200898706913,-0.087012536823750,-0.006545199081302,0.003438193351030,0.016360823065042,-0.008553421124816,-0.021102957427502,0.027955172583461,0.094885565340519,0.149745792150497));
res += mul(Get(s1,-dx,0), float4x4(-0.062671773135662,-0.088839881122112,0.018406054005027,-0.012790116481483,0.100092545151711,-0.008365823887289,-0.006110932677984,0.029747499153018,-0.013566342182457,0.027784274891019,0.042552698403597,-0.005804199725389,0.093734823167324,-0.012972438707948,-0.047253824770451,0.128901749849319));
res += mul(Get(s1,-dx,dy), float4x4(-0.032378237694502,-0.127607658505440,0.008776290342212,0.018158785998821,0.018375657498837,-0.063363343477249,0.059048127382994,0.019574441015720,0.021737745031714,0.028246408328414,0.049568660557270,-0.030994452536106,0.151074543595314,0.083578094840050,0.042689714580774,0.014842778444290));
res += mul(Get(s1,0,-dy), float4x4(0.009997204877436,0.047304790467024,0.004801255650818,0.056964337825775,0.040996260941029,0.019277403131127,0.034094717353582,-0.006536097731441,-0.001070639234968,0.002562505658716,-0.007418114226311,-0.061154864728451,-0.003879574825987,0.017389703541994,0.127256423234940,0.013912828639150));
res += mul(Get(s1,0,0), float4x4(0.019204497337341,0.030480351299047,-0.053929112851620,0.035823591053486,0.068209111690521,-0.013064627535641,-0.053389593958855,0.105165779590607,-0.004834768362343,0.036283254623413,0.013433651998639,-0.059556234627962,-0.108922585844994,-0.107400469481945,0.031731426715851,-0.079599075019360));
res += mul(Get(s1,0,dy), float4x4(0.045496415346861,0.022059563547373,-0.064276084303856,0.024643793702126,-0.040762241929770,-0.074558638036251,0.039735600352287,0.013106892816722,0.006971982307732,-0.003788728732616,0.020314389839768,-0.050556562840939,0.067162193357944,0.194665268063545,-0.053273871541023,-0.146276175975800));
res += mul(Get(s1,dx,-dy), float4x4(-0.028963819146156,-0.082381136715412,0.021925972774625,-0.072316005825996,-0.007187259383500,0.078531682491302,-0.039710585027933,0.002770536346361,0.015625026077032,0.000722345546819,-0.005400351714343,-0.052642345428467,-0.010328175500035,0.016208384186029,0.001739027211443,0.085846014320850));
res += mul(Get(s1,dx,0), float4x4(0.000748579041101,-0.069596521556377,-0.043850958347321,-0.089507587254047,-0.000648684275802,0.028588233515620,-0.104560576379299,0.059133414179087,0.013356833718717,0.023786541074514,0.010600924491882,-0.022394169121981,0.011077077127993,-0.195241138339043,-0.116983428597450,0.222406640648842));
res += mul(Get(s1,dx,dy), float4x4(0.063687965273857,0.006951224058867,-0.025032470002770,-0.053155768662691,-0.053445067256689,-0.054231368005276,0.021898545324802,0.032042693346739,0.005751523654908,0.062004569917917,0.026269648224115,-0.045494642108679,-0.034223079681396,-0.024829965084791,-0.203677847981453,0.082807928323746));
res += mul(Get(s2,-dx,-dy), float4x4(0.005382681731135,-0.071606501936913,0.057891845703125,0.034258883446455,0.007881903089583,0.009282167069614,0.054345067590475,-0.025138342753053,0.005843342747539,0.121760502457619,0.010263438336551,0.026190906763077,-0.003276286879554,-0.002462885575369,-0.004850675351918,0.010125094093382));
res += mul(Get(s2,-dx,0), float4x4(-0.014902660623193,-0.016789473593235,0.014432213269174,0.034844581037760,-0.040362916886806,-0.086195692420006,0.008962289430201,0.044830806553364,-0.003311544423923,0.031531088054180,0.028258731588721,-0.044149756431580,-0.010053884238005,-0.004440001677722,-0.013634236529469,0.003406610107049));
res += mul(Get(s2,-dx,dy), float4x4(-0.027061056345701,0.004686541389674,-0.050884429365396,-0.047597028315067,-0.056200109422207,-0.081863820552826,-0.107094489037991,-0.012853079475462,-0.012003603391349,0.003700519679114,-0.035476632416248,0.001432698220015,0.001191564835608,0.003153307829052,0.006475315429270,-0.006207129918039));
res += mul(Get(s2,0,-dy), float4x4(0.009562064893544,-0.061694424599409,-0.040873315185308,0.112781301140785,0.028184391558170,0.057251144200563,0.079507768154144,-0.002412585541606,0.016079382970929,0.143319413065910,0.018289785832167,0.000690930057317,0.003454882185906,-0.001196038094349,-0.006614570505917,-0.001590005937032));
res += mul(Get(s2,0,0), float4x4(-0.040302619338036,0.046924766153097,-0.011654677800834,0.042874824255705,0.042973082512617,0.033340748399496,0.119763933122158,0.049123480916023,0.011839595623314,0.014646531082690,0.037306845188141,-0.015624931082129,0.003019415307790,0.002869696356356,-0.001774658798240,-0.001623737392947));
res += mul(Get(s2,0,dy), float4x4(-0.041116792708635,0.024851966649294,-0.006892843171954,0.000541844288819,-0.004372376017272,-0.074273660778999,0.015352411195636,0.049805801361799,-0.007875531911850,0.002652295632288,-0.012727947905660,0.040369972586632,-0.005883554462343,-0.001905165961944,0.000218127068365,-0.004944000393152));
res += mul(Get(s2,dx,-dy), float4x4(-0.061886142939329,-0.033248148858547,-0.052161235362291,0.088714718818665,-0.083821877837181,-0.056313257664442,0.019346799701452,-0.008532454259694,0.015054052695632,0.130570366978645,-0.032951246947050,0.034662701189518,0.001881172065623,-0.003980062901974,0.006212845910341,0.004476927220821));
res += mul(Get(s2,dx,0), float4x4(-0.086294293403625,0.095939084887505,-0.005333513487130,0.064725592732430,-0.030152669176459,-0.014025313779712,-0.067909285426140,-0.058252584189177,-0.001242798403837,0.049435589462519,-0.007547737099230,0.041939739137888,-0.001721461769193,0.002662595827132,0.002565400907770,0.001272656721994));
res += mul(Get(s2,dx,dy), float4x4(-0.046445898711681,0.023079179227352,0.035647932440042,0.055878352373838,-0.054189708083868,-0.052868843078613,-0.132177039980888,-0.044620521366596,0.005622276570648,0.003561678575352,-0.010562081821263,0.054371584206820,0.002240832895041,0.004383260384202,0.002752176718786,-0.013217902742326));
res += mul(Get(s3,-dx,-dy), float4x4(0.033673718571663,0.021393619477749,-0.033154468983412,-0.068172834813595,0.035732168704271,-0.005357563961297,0.012352959252894,-0.056027170270681,-0.023837016895413,-0.016134716570377,0.110266752541065,-0.086260616779327,0.037203241139650,-0.013913488946855,0.094954900443554,-0.058328282088041));
res += mul(Get(s3,-dx,0), float4x4(0.061898399144411,0.097916431725025,-0.000604177068453,-0.048126950860023,0.008723535574973,-0.008452107198536,-0.033704020082951,-0.012784322723746,-0.060099866241217,0.058607965707779,0.019771521911025,-0.025990214198828,0.007427209522575,-0.023903217166662,-0.035497792065144,-0.040766820311546));
res += mul(Get(s3,-dx,dy), float4x4(0.064268320798874,0.025933010503650,0.043174415826797,-0.072520360350609,0.012414532713592,0.028677791357040,-0.022914804518223,-0.012580166570842,-0.062994226813316,0.066509425640106,0.013420331291854,-0.025401601567864,-0.007318922784179,0.173775091767311,-0.000603957218118,-0.006680310703814));
res += mul(Get(s3,0,-dy), float4x4(0.038613136857748,-0.053489152342081,-0.020989786833525,0.049102738499641,-0.011332494206727,-0.009535478428006,0.007693463470787,-0.086502388119698,-0.011422272771597,-0.091066777706146,0.096232816576958,0.010999165475368,-0.023678915575147,-0.067080684006214,0.038603898137808,-0.017683958634734));
res += mul(Get(s3,0,0), float4x4(0.029517091810703,-0.019665820524096,-0.038010686635971,0.107886649668217,-0.014308379031718,-0.011565127409995,-0.028291739523411,-0.047202929854393,-0.054421372711658,0.021924462169409,0.005131985992193,-0.024560471996665,-0.031660988926888,0.009624389000237,-0.016655702143908,-0.026706319302320));
res += mul(Get(s3,0,dy), float4x4(0.031901210546494,0.089318178594112,-0.028398631140590,0.037599038332701,-0.024171149358153,-0.018593160435557,-0.044080868363380,-0.048095669597387,-0.072834447026253,0.116270311176777,-0.028626861050725,-0.066076882183552,-0.014723418280482,0.113637626171112,0.020959476009011,-0.025136414915323));
res += mul(Get(s3,dx,-dy), float4x4(0.033066183328629,-0.061604045331478,-0.011210064403713,-0.021988678723574,0.001800890197046,0.010319759137928,-0.025522744283080,-0.067074455320835,-0.030038692057133,-0.077585488557816,0.055902898311615,0.008570255711675,-0.041176863014698,-0.080991260707378,-0.024074284359813,0.002699003322050));
res += mul(Get(s3,dx,0), float4x4(0.015663878992200,-0.061266500502825,-0.034451678395271,0.025368692353368,-0.004653984215111,-0.010517536662519,-0.029362324625254,-0.018484737724066,-0.057585157454014,-0.047985713928938,-0.045713782310486,-0.031461745500565,0.025934405624866,-0.012774904258549,-0.045235745608807,0.046862211078405));
res += mul(Get(s3,dx,dy), float4x4(-0.000613277254160,0.013804532587528,-0.027318783104420,-0.004991358146071,-0.017509572207928,-0.033864773809910,-0.064469210803509,0.016245204955339,-0.051226191222668,0.032774999737740,-0.090826347470284,-0.080045953392982,0.005981713067740,-0.041903838515282,0.003163279499859,-0.039345659315586));
res = max(float4(0,0,0,0), res);
return res;
}