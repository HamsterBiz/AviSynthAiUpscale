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
res += mul(Get(s0,-dx,-dy), float4x4(-0.000356604607077,0.001195898395963,0.121322907507420,0.029001163318753,0.227231696248055,0.052105467766523,-0.124797396361828,0.010164635255933,0.086936287581921,-0.079813450574875,0.070600494742393,-0.053858868777752,-0.091207593679428,-0.081128038465977,-0.003644972806796,-0.137928441166878));
res += mul(Get(s0,-dx,0), float4x4(-0.011718047782779,-0.055359970778227,0.154687315225601,-0.231942936778069,0.051185153424740,-0.016892245039344,-0.182196959853172,0.148629337549210,-0.051184568554163,0.091495513916016,-0.197957560420036,0.057307906448841,-0.130101963877678,0.139709070324898,0.032703761011362,-0.121675275266171));
res += mul(Get(s0,-dx,dy), float4x4(0.169761314988136,-0.170993134379387,-0.079059414565563,0.036266207695007,-0.060539893805981,0.004313340410590,0.023461433127522,-0.083770751953125,0.075708061456680,-0.060962881892920,-0.099057018756866,0.030091648921371,-0.007352498359978,0.016206756234169,-0.010144642554224,-0.032268688082695));
res += mul(Get(s0,0,-dy), float4x4(-0.156909972429276,0.122483320534229,-0.030288986861706,-0.058606754988432,0.034636169672012,-0.158683642745018,0.215826004743576,0.001946798874997,-0.059526588767767,-0.055844090878963,-0.117185577750206,-0.055285103619099,-0.146271482110023,-0.168656989932060,0.126002192497253,-0.081848539412022));
res += mul(Get(s0,0,0), float4x4(0.025395710021257,-0.059161029756069,-0.158399730920792,-0.140550896525383,-0.177538290619850,-0.102318257093430,-0.111230932176113,0.205332711338997,0.004983101040125,-0.082412682473660,-0.016115482896566,-0.075540207326412,0.044144954532385,-0.107595264911652,-0.071661338210106,0.035828292369843));
res += mul(Get(s0,0,dy), float4x4(-0.048148415982723,-0.174760907888412,0.087129972875118,-0.022446198388934,-0.054547816514969,0.064292170107365,0.000300890736980,0.031848452985287,-0.222824558615685,-0.132671371102333,0.068734377622604,0.079992279410362,-0.047659371048212,-0.079167634248734,-0.108092851936817,-0.118564955890179));
res += mul(Get(s0,dx,-dy), float4x4(0.046385854482651,-0.059426218271255,0.005198079627007,0.182464182376862,-0.210715502500534,0.147020518779755,0.014026476070285,-0.014628190547228,0.000902806292288,0.000223865528824,-0.057082459330559,0.057063248008490,-0.052496336400509,0.115162409842014,-0.245934277772903,0.023127947002649));
res += mul(Get(s0,dx,0), float4x4(-0.221499413251877,-0.062405478209257,-0.035956721752882,0.051790758967400,0.116507440805435,0.059458255767822,0.024306906387210,0.032658252865076,0.005939063616097,0.024236569181085,-0.018182955682278,-0.123962029814720,-0.066328234970570,-0.125561520457268,0.163957700133324,0.034091837704182));
res += mul(Get(s0,dx,dy), float4x4(0.009312129579484,-0.092412263154984,-0.062725409865379,0.231868788599968,-0.115786969661713,0.144728988409042,0.102804243564606,0.035120099782944,-0.125164255499840,-0.201379582285881,-0.082319714128971,-0.085466787219048,-0.204083696007729,0.065733045339584,-0.080684699118137,-0.037934526801109));
res += mul(Get(s1,-dx,-dy), float4x4(-0.059534214437008,0.151822522282600,0.183273032307625,0.065283305943012,-0.046820200979710,0.082454882562160,0.101604700088501,-0.094282567501068,0.079678438603878,-0.151012718677521,-0.134585484862328,-0.118566229939461,0.059949226677418,-0.117196962237358,0.145335391163826,-0.160242468118668));
res += mul(Get(s1,-dx,0), float4x4(0.157567277550697,-0.063167519867420,0.060370285063982,-0.110247939825058,-0.042792059481144,-0.047707851976156,-0.038702189922333,-0.128560334444046,-0.043814767152071,0.090790197253227,-0.054336193948984,-0.161510661244392,0.106881067156792,0.143276110291481,0.208682894706726,0.003309483872727));
res += mul(Get(s1,-dx,dy), float4x4(-0.035234607756138,-0.049354117363691,-0.030779734253883,-0.028765195980668,-0.302228987216949,0.049257785081863,-0.059847444295883,0.061257179826498,-0.082602702081203,0.087058119475842,0.048058751970530,-0.129156127572060,-0.060450971126556,0.084547735750675,-0.009642908349633,-0.110074460506439));
res += mul(Get(s1,0,-dy), float4x4(0.054017957299948,-0.097506150603294,-0.088411711156368,0.065160833299160,-0.168472707271576,0.040597964078188,0.118195369839668,-0.128843724727631,0.119987078011036,0.088699281215668,0.253369480371475,0.049937691539526,0.106950625777245,0.007511419244111,0.140501737594604,0.015009634196758));
res += mul(Get(s1,0,0), float4x4(0.113351084291935,0.025547703728080,0.007996569387615,0.038728512823582,0.142048239707947,0.053714998066425,-0.072277724742889,0.117107570171356,0.003940982744098,-0.132216721773148,0.047635577619076,0.092590086162090,0.014886429533362,-0.150912985205650,-0.186121836304665,-0.145900011062622));
res += mul(Get(s1,0,dy), float4x4(-0.062367379665375,-0.254574686288834,0.039571564644575,0.058234304189682,-0.257562875747681,-0.021729357540607,0.068962089717388,0.054136857390404,-0.026257837191224,-0.225480213761330,-0.107104882597923,0.189601168036461,-0.064997456967831,-0.120187625288963,0.004177994560450,-0.125791311264038));
res += mul(Get(s1,dx,-dy), float4x4(0.128456220030785,0.044642869383097,-0.122145548462868,-0.047768831253052,0.043416749686003,0.056770861148834,-0.165292441844940,-0.135155230760574,-0.107401557266712,0.009172754362226,0.121855430305004,-0.082476332783699,0.211971521377563,0.090411171317101,0.052526168525219,0.208039820194244));
res += mul(Get(s1,dx,0), float4x4(-0.078688301146030,0.168315142393112,0.060934901237488,0.149316981434822,-0.019190814346075,-0.161075994372368,-0.144375860691071,-0.234587132930756,0.194978758692741,0.059283707290888,0.189307063817978,0.152762204408646,-0.121049739420414,0.206310436129570,-0.202677905559540,-0.122021429240704));
res += mul(Get(s1,dx,dy), float4x4(-0.016564704477787,0.080705292522907,0.272693276405334,0.014993232674897,0.150478407740593,-0.105778187513351,0.078538849949837,-0.107995010912418,-0.107650004327297,-0.096270106732845,-0.108180604875088,-0.144702821969986,-0.054785083979368,0.183520093560219,-0.021839085966349,0.053479753434658));
res += mul(Get(s2,-dx,-dy), float4x4(-0.308964788913727,-0.035009335726500,-0.010022017173469,-0.040502987802029,-0.081925362348557,0.140059977769852,-0.087978795170784,-0.123870931565762,-0.094611130654812,-0.105633258819580,0.116842389106750,0.001152383279987,-0.108301654458046,0.188410580158234,-0.166403293609619,-0.131864741444588));
res += mul(Get(s2,-dx,0), float4x4(0.006290066055954,-0.019426079466939,-0.014120921492577,0.064746722579002,-0.017098972573876,-0.075910829007626,-0.111147433519363,-0.084746770560741,-0.129757717251778,-0.037980020046234,0.000012916032574,-0.108023792505264,0.109260685741901,0.006602342706174,0.182301938533783,-0.034184928983450));
res += mul(Get(s2,-dx,dy), float4x4(-0.045963156968355,0.023548979312181,-0.108261458575726,0.071166448295116,-0.084169194102287,-0.016827113926411,0.032534681260586,-0.070796631276608,0.076021119952202,0.089870110154152,0.111901201307774,0.014749205671251,0.033532511442900,0.020615886896849,-0.107921019196510,0.034442603588104));
res += mul(Get(s2,0,-dy), float4x4(-0.247637093067169,0.193375214934349,-0.010879045352340,-0.100264661014080,-0.054626896977425,0.065984390676022,0.041407678276300,0.011447982862592,0.021249011158943,-0.127067402005196,0.069657035171986,0.015814317390323,0.101952314376831,-0.082426927983761,0.163932487368584,0.114949852228165));
res += mul(Get(s2,0,0), float4x4(0.092954657971859,0.034203380346298,0.036041680723429,0.021423354744911,-0.145473986864090,-0.142445683479309,0.086695022881031,0.056585900485516,0.049190733581781,0.029748803004622,0.130745366215706,-0.002706684870645,0.107675835490227,-0.058610573410988,-0.003920049406588,0.024169616401196));
res += mul(Get(s2,0,dy), float4x4(0.034846033900976,-0.071477189660072,-0.175245016813278,0.235065743327141,0.098449274897575,0.064075022935867,0.390953242778778,0.017013775184751,-0.016979008913040,0.064280688762665,0.215267106890678,-0.155697584152222,0.097786270081997,0.025078780949116,-0.008029081858695,-0.072213247418404));
res += mul(Get(s2,dx,-dy), float4x4(-0.060971423983574,-0.064217701554298,0.038349416106939,0.022616637870669,-0.059466511011124,-0.037582132965326,-0.012213030830026,-0.127457752823830,-0.047517322003841,0.076775602996349,0.115639857947826,0.214021399617195,-0.180852994322777,0.067308485507965,-0.103124462068081,-0.097926087677479));
res += mul(Get(s2,dx,0), float4x4(-0.110920727252960,0.339793652296066,0.056519407778978,0.122696965932846,0.044071499258280,0.233629465103149,0.090658403933048,0.009943278506398,0.037389229983091,-0.100655272603035,0.095976576209068,0.045215480029583,0.089545667171478,0.022913018241525,0.233268782496452,0.065971776843071));
res += mul(Get(s2,dx,dy), float4x4(0.060991145670414,-0.078092083334923,-0.055245082825422,-0.012386779300869,-0.057663060724735,-0.132130876183510,0.036539670079947,0.045569691807032,0.053517933934927,0.049515087157488,0.121077455580235,0.069418124854565,0.085692755877972,0.153028190135956,0.043241612613201,-0.025526607409120));
res += mul(Get(s3,-dx,-dy), float4x4(-0.047884654253721,-0.014609227888286,-0.136083513498306,0.208612561225891,-0.016193360090256,0.059863843023777,0.170597866177559,-0.263818770647049,-0.135028809309006,-0.089191697537899,0.125771090388298,-0.164872407913208,-0.239596173167229,0.007877541705966,-0.068408451974392,-0.089883871376514));
res += mul(Get(s3,-dx,0), float4x4(0.137925192713737,-0.212486043572426,0.035212770104408,-0.057707779109478,0.018479399383068,-0.016200220212340,-0.071692727506161,0.172347098588943,-0.020005566999316,0.090047165751457,0.028550481423736,-0.097339101135731,-0.074458241462708,0.031093453988433,-0.131033018231392,0.089964702725410));
res += mul(Get(s3,-dx,dy), float4x4(-0.221196755766869,-0.110347263514996,-0.133067548274994,0.109460532665253,-0.103532694280148,-0.018720407038927,0.016259593889117,0.228614300489426,0.069073572754860,0.015003032051027,-0.015891376882792,0.036697212606668,-0.001828569918871,0.115980356931686,0.054749090224504,-0.071127079427242));
res += mul(Get(s3,0,-dy), float4x4(-0.135817974805832,0.119367279112339,0.042658206075430,-0.088694751262665,0.021294021978974,0.075828142464161,0.014277691021562,-0.094497211277485,-0.063036352396011,0.086606450378895,-0.019855175167322,-0.044640950858593,-0.029659887775779,0.104471527040005,0.190684825181961,0.026645397767425));
res += mul(Get(s3,0,0), float4x4(-0.039822667837143,0.060154583305120,-0.042224936187267,0.119395948946476,-0.078555382788181,-0.080905206501484,-0.063237063586712,0.084523402154446,0.021467365324497,0.100491322577000,-0.097129955887794,0.129209607839584,0.066858910024166,0.071179591119289,-0.040844287723303,0.083931393921375));
res += mul(Get(s3,0,dy), float4x4(0.037095509469509,-0.125928863883018,0.118808172643185,-0.094249166548252,-0.055364701896906,0.219248384237289,0.023291565477848,-0.118094712495804,-0.043298430740833,-0.008417226374149,-0.067133195698261,-0.143379405140877,0.044258616864681,-0.197863191366196,-0.148627594113350,0.158696010708809));
res += mul(Get(s3,dx,-dy), float4x4(0.241312757134438,-0.203781351447105,0.001839957432821,-0.067447245121002,-0.063640408217907,-0.141719162464142,-0.147070124745369,0.033941961824894,0.108662396669388,-0.039406545460224,0.048537068068981,-0.034204408526421,-0.041294023394585,0.027731705456972,0.047382514923811,-0.028771236538887));
res += mul(Get(s3,dx,0), float4x4(0.041317634284496,-0.015944175422192,-0.051696155220270,0.136510804295540,-0.002667533699423,0.140293896198273,-0.226231068372726,0.017274038866162,0.224557414650917,0.060526028275490,0.005857678595930,0.023677185177803,0.191375538706779,0.061089597642422,-0.179926767945290,-0.054834455251694));
res += mul(Get(s3,dx,dy), float4x4(-0.255704969167709,0.145983785390854,0.136847019195557,0.043215528130531,0.072459101676941,0.178140938282013,0.132898882031441,0.128526568412781,0.046108316630125,0.163327872753143,-0.126818448305130,0.031318783760071,-0.068714953958988,0.309300601482391,-0.085770197212696,0.344029277563095));
return max(float4(0,0,0,0), res);
}