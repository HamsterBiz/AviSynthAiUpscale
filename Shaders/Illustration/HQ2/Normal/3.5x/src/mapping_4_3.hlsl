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
res += mul(Get(s0,-dx,-dy), float4x4(0.042098931968212,-0.072734259068966,0.025377310812473,0.017053563147783,-0.009162584319711,-0.081685639917850,0.123808138072491,-0.019456017762423,0.037637099623680,-0.119105003774166,-0.009268955327570,-0.048288237303495,0.076600939035416,-0.046676639467478,-0.109086737036705,-0.030057502910495));
res += mul(Get(s0,-dx,0), float4x4(0.002478398848325,0.048196617513895,0.035995751619339,0.066716246306896,0.031276680529118,-0.005905178841203,0.052543401718140,0.020056888461113,0.011237164959311,-0.190294802188873,0.045276198536158,-0.088185399770737,-0.016095096245408,-0.060014963150024,-0.002923069056123,0.026949604973197));
res += mul(Get(s0,-dx,dy), float4x4(0.035992555320263,0.032861847430468,-0.096767134964466,0.016817081719637,-0.011121623218060,-0.060974664986134,-0.034475639462471,-0.094744630157948,0.092433027923107,-0.021153543144464,-0.062363237142563,-0.054419625550508,-0.017308495938778,-0.103460818529129,0.034387521445751,-0.035179756581783));
res += mul(Get(s0,0,-dy), float4x4(0.027744486927986,-0.013774232007563,0.019509976729751,-0.113697074353695,-0.042986117303371,0.039663597941399,0.017310148105025,0.002848879666999,0.112143158912659,-0.068865463137627,-0.058444388210773,-0.026450039818883,0.018263779580593,-0.073904134333134,-0.042685579508543,-0.078677222132683));
res += mul(Get(s0,0,0), float4x4(0.034618299454451,0.050456691533327,0.048971373587847,-0.061687789857388,-0.001550853950903,0.007343129254878,-0.020087607204914,0.059097200632095,0.063132748007774,0.038878384977579,-0.051703985780478,0.095435805618763,0.050549529492855,-0.100694425404072,0.008255096152425,-0.014878444373608));
res += mul(Get(s0,0,dy), float4x4(0.084579236805439,0.088321588933468,-0.077724657952785,0.001637370674871,0.006622673012316,-0.081680677831173,-0.050821673125029,0.004286861978471,0.007080180104822,0.002353549702093,-0.060511283576488,0.031124373897910,0.051958639174700,-0.017950495705009,0.012448477558792,0.039486210793257));
res += mul(Get(s0,dx,-dy), float4x4(-0.023811217397451,0.073871292173862,-0.045870263129473,-0.057077292352915,0.046610236167908,0.025688182562590,0.022540710866451,0.038695733994246,0.111407957971096,-0.091255657374859,-0.009087676182389,-0.032871659845114,0.013774061575532,-0.095435813069344,-0.027474626898766,-0.064482100307941));
res += mul(Get(s0,dx,0), float4x4(0.024437859654427,0.049768142402172,-0.040865223854780,-0.031441375613213,-0.043005153536797,0.020495828241110,-0.036781385540962,0.037527766078711,0.226021766662598,-0.042593382298946,-0.011662828736007,-0.018903460353613,-0.035737439990044,-0.084971524775028,-0.043735217303038,-0.059668112546206));
res += mul(Get(s0,dx,dy), float4x4(0.061834800988436,0.100469529628754,0.008352477103472,0.061999861150980,-0.070168294012547,-0.064488768577576,-0.126617476344109,-0.032719150185585,0.073596045374870,-0.037084784358740,-0.025177678093314,-0.033529862761497,0.063155420124531,-0.043833572417498,-0.000683139543980,-0.021308092400432));
res += mul(Get(s1,-dx,-dy), float4x4(0.041906662285328,0.009835400618613,-0.040939509868622,0.024443835020065,0.121386811137199,-0.086403965950012,-0.069134935736656,0.049296963959932,-0.073952004313469,0.059477917850018,-0.079484224319458,0.024541815742850,-0.099807232618332,0.029666360467672,0.110431857407093,-0.124925486743450));
res += mul(Get(s1,-dx,0), float4x4(0.031889572739601,0.030821995809674,-0.019264383241534,0.101957149803638,0.065036900341511,0.055864907801151,-0.014489333145320,-0.002622040454298,-0.130262538790703,-0.008824056014419,-0.043340243399143,0.023269686847925,0.064762234687805,-0.098453275859356,0.306068301200867,-0.064315333962440));
res += mul(Get(s1,-dx,dy), float4x4(0.007613555993885,0.003738821018487,-0.069842100143433,-0.047020856291056,-0.006118535995483,0.171216100454330,0.014768785797060,0.003295411355793,-0.013139604590833,0.016998378559947,-0.081860855221748,0.042483687400818,0.027386942878366,-0.232161268591881,0.034061502665281,0.007275103125721));
res += mul(Get(s1,0,-dy), float4x4(-0.007485939189792,-0.079716429114342,-0.039695855230093,-0.060625996440649,0.072723910212517,0.024413241073489,-0.002030591014773,0.104215607047081,-0.023425281047821,0.025318432599306,-0.069434829056263,-0.070169821381569,0.002876890590414,0.014280484057963,0.038874682039022,-0.120170764625072));
res += mul(Get(s1,0,0), float4x4(0.133054733276367,-0.007602857891470,-0.022578744217753,-0.041351333260536,0.032995559275150,0.158907324075699,-0.041966468095779,-0.010305610485375,-0.049209985882044,-0.060263924300671,-0.036039285361767,-0.155099689960480,0.056351259350777,-0.113605365157127,-0.008846130222082,0.001437846221961));
res += mul(Get(s1,0,dy), float4x4(-0.021091112866998,0.080540940165520,-0.043621439486742,-0.059740524739027,0.019475290551782,0.072697281837463,0.021438814699650,0.007578430231661,0.011749727651477,0.155502200126648,-0.040474187582731,0.045109268277884,0.048593841493130,-0.011777344159782,-0.015993403270841,0.036174193024635));
res += mul(Get(s1,dx,-dy), float4x4(0.035961214452982,-0.011202381923795,-0.029493035748601,0.010874027386308,0.080666035413742,-0.042590741068125,0.041873008012772,0.088709004223347,0.050557207316160,0.084998086094856,-0.067968443036079,0.070046439766884,0.071798458695412,-0.010150662623346,-0.006262697279453,-0.053985040634871));
res += mul(Get(s1,dx,0), float4x4(0.019074847921729,-0.045894742012024,-0.045790541917086,-0.005497699603438,0.112211704254150,0.033609554171562,-0.012882782146335,0.001591935753822,0.048942852765322,0.073843933641911,-0.009182929061353,0.082756683230400,-0.045340750366449,-0.032008297741413,-0.012961611151695,-0.024680992588401));
res += mul(Get(s1,dx,dy), float4x4(-0.019804645329714,0.022897219285369,-0.026952318847179,-0.014547151513398,0.031559959053993,0.006887554191053,0.032563325017691,-0.014360318891704,0.065418265759945,0.154812216758728,0.055551126599312,0.061720397323370,-0.071331247687340,0.000624580890872,-0.011474930681288,-0.031198767945170));
res += mul(Get(s2,-dx,-dy), float4x4(0.051132947206497,-0.012009295634925,-0.089800134301186,-0.091328516602516,0.072184100747108,-0.015780365094543,0.054414451122284,0.034626469016075,-0.067770503461361,-0.079036585986614,-0.044371340423822,-0.006573743652552,-0.064794220030308,-0.044743619859219,-0.102958753705025,0.047919183969498));
res += mul(Get(s2,-dx,0), float4x4(0.044413670897484,0.048980940133333,0.102946057915688,0.091208830475807,0.026778802275658,-0.029557393863797,-0.057490248233080,-0.048121757805347,-0.074816703796387,0.022939665243030,-0.040189418941736,-0.026390621438622,0.094438433647156,-0.121911190450191,-0.019467098638415,-0.002130154054612));
res += mul(Get(s2,-dx,dy), float4x4(-0.063927657902241,-0.026273956522346,0.120526351034641,0.172770664095879,0.053287487477064,0.026397423818707,0.052950456738472,-0.015067595988512,0.137973815202713,0.021938309073448,-0.093522138893604,-0.183039963245392,-0.004976715892553,-0.015966808423400,-0.005136325955391,-0.018903581425548));
res += mul(Get(s2,0,-dy), float4x4(0.109961353242397,0.102217420935631,-0.016880113631487,-0.033409353345633,0.035299919545650,0.008583932183683,0.032354850322008,-0.007770717144012,-0.146752581000328,0.053766150027514,-0.172961935400963,0.057048488408327,-0.048808518797159,0.065536722540855,-0.038667328655720,0.093170195817947));
res += mul(Get(s2,0,0), float4x4(-0.051942009478807,-0.040583826601505,0.236351966857910,0.041283279657364,0.098495833575726,-0.047915935516357,-0.052826691418886,-0.015326609835029,-0.138644590973854,0.084676407277584,-0.009093088097870,0.099889464676380,-0.011396519839764,0.007449362892658,0.043434374034405,-0.046976700425148));
res += mul(Get(s2,0,dy), float4x4(-0.082950979471207,-0.066144935786724,0.041668329387903,0.107804246246815,0.000475200300571,0.046752400696278,0.039101578295231,0.003161899512634,0.035499934107065,-0.030332952737808,-0.032873194664717,-0.155384749174118,-0.005399909801781,-0.007731809746474,-0.000280450301943,-0.133481726050377));
res += mul(Get(s2,dx,-dy), float4x4(0.075713820755482,0.038964845240116,-0.025373313575983,-0.057917483150959,-0.028567831963301,0.006770682986826,-0.008489063009620,0.042611010372639,-0.020755182951689,-0.039435394108295,-0.184824034571648,0.025100361555815,0.086790122091770,0.152359902858734,0.015963604673743,0.121414847671986));
res += mul(Get(s2,dx,0), float4x4(-0.061737176030874,-0.091832287609577,0.034183546900749,-0.067132070660591,0.086191572248936,0.061103448271751,-0.041708733886480,0.052583508193493,0.002470985054970,-0.080982618033886,0.006096879020333,0.077815443277359,0.047101560980082,0.034391611814499,0.022735664620996,0.061042524874210));
res += mul(Get(s2,dx,dy), float4x4(-0.174188703298569,0.050979562103748,-0.123094163835049,0.031183110550046,-0.027367245405912,-0.017849490046501,0.024789962917566,0.030811306089163,-0.028319649398327,-0.067401707172394,-0.073594592511654,-0.063015401363373,0.002272207057104,0.058927662670612,0.010457714088261,-0.005161792039871));
res += mul(Get(s3,-dx,-dy), float4x4(-0.026577334851027,0.031512573361397,0.013903450220823,-0.042938418686390,0.003968874458224,-0.014622329734266,0.103295639157295,-0.130540505051613,0.075918652117252,0.056943967938423,0.074311509728432,-0.006008592434227,0.088162474334240,0.037125568836927,-0.060768976807594,0.078844308853149));
res += mul(Get(s3,-dx,0), float4x4(0.043585781008005,0.045570064336061,0.128492534160614,-0.029604809358716,-0.094874389469624,-0.073416367173195,-0.070509053766727,-0.132600873708725,0.056798346340656,0.045674569904804,-0.001150786061771,0.092784777283669,-0.037291623651981,-0.036696292459965,0.132484048604965,0.163147866725922));
res += mul(Get(s3,-dx,dy), float4x4(-0.054316021502018,0.014689554460347,-0.050189111381769,0.088727995753288,-0.021745499223471,0.078056037425995,0.068052127957344,-0.068744093179703,-0.109499759972095,-0.021750228479505,0.011745518073440,0.107362121343613,-0.036615896970034,-0.084330923855305,0.029727922752500,-0.030429661273956));
res += mul(Get(s3,0,-dy), float4x4(-0.001164616900496,0.093869879841805,0.018257133662701,-0.038393586874008,-0.008282690308988,0.120978377759457,0.027712713927031,0.004839293658733,0.194754317402840,0.037243403494358,-0.041740991175175,0.010659025982022,-0.003070482052863,-0.070045731961727,0.014947919175029,-0.019042361527681));
res += mul(Get(s3,0,0), float4x4(-0.034230902791023,0.004168554674834,0.045131046324968,-0.056834541261196,-0.035807810723782,0.267406970262527,-0.140049725770950,0.228841528296471,0.022161398082972,-0.057248882949352,-0.035204563289881,0.080631002783775,0.085277989506721,-0.070118121802807,0.090105965733528,-0.085137918591499));
res += mul(Get(s3,0,dy), float4x4(-0.047676838934422,0.115254051983356,-0.007916983217001,0.068169578909874,-0.032282587140799,-0.038646966218948,0.040443588048220,0.005235963966697,-0.092575669288635,-0.094204626977444,0.097187265753746,0.016638763248920,0.046987559646368,0.156321808695793,-0.071275219321251,-0.024522930383682));
res += mul(Get(s3,dx,-dy), float4x4(-0.017931293696165,0.056242365390062,0.037239372730255,0.013414894230664,-0.068550050258636,-0.060940571129322,-0.042858216911554,-0.066884316504002,-0.039257973432541,-0.032110765576363,-0.074559517204762,-0.136211872100830,-0.096332564949989,-0.004369792994112,-0.146943464875221,-0.018090285360813));
res += mul(Get(s3,dx,0), float4x4(-0.226489737629890,0.007910247892141,0.020541327074170,0.062645547091961,0.092753246426582,0.006054228171706,0.016360480338335,-0.020254839211702,-0.044694405049086,-0.057973485440016,-0.054964702576399,-0.090665034949780,-0.113882601261139,-0.010076033882797,-0.090594172477722,0.051583457738161));
res += mul(Get(s3,dx,dy), float4x4(-0.079499438405037,-0.025832610204816,0.013764100149274,0.085955135524273,-0.012246005237103,0.014821218326688,-0.005557284690440,-0.221941411495209,-0.105109214782715,-0.015904601663351,-0.035303533077240,-0.047230046242476,0.000215974054299,0.074096269905567,-0.051262892782688,0.050716497004032));
return max(float4(0,0,0,0), res);
}