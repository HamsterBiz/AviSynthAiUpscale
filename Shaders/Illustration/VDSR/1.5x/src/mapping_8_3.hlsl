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
res += mul(Get(s0,-dx,-dy), float4x4(-0.189055085182190,-0.053147461265326,0.020501321181655,0.034996654838324,0.046624589711428,-0.141057640314102,0.042870387434959,0.018840529024601,-0.054812718182802,-0.009506165049970,0.041964117437601,0.052688013762236,-0.108418136835098,-0.059093851596117,-0.072043970227242,-0.087085582315922));
res += mul(Get(s0,-dx,0), float4x4(-0.157460451126099,0.065688826143742,-0.070805765688419,0.097854211926460,0.024336207658052,0.053571090102196,-0.012981839478016,-0.041274666786194,-0.062470715492964,-0.095533877611160,-0.077596761286259,-0.087866201996803,-0.063104413449764,0.028569372370839,-0.038993075489998,-0.071738816797733));
res += mul(Get(s0,-dx,dy), float4x4(-0.022933537140489,-0.138885542750359,-0.007117958739400,-0.046928491443396,-0.022932866588235,0.079217858612537,0.041362330317497,0.053589634597301,-0.033184625208378,-0.146074473857880,0.132294818758965,0.022643761709332,-0.195243328809738,0.007241773419082,0.060133721679449,-0.027512202039361));
res += mul(Get(s0,0,-dy), float4x4(-0.115347191691399,-0.009159185923636,-0.043341618031263,-0.063793189823627,-0.012963552027941,0.041469339281321,0.026014180853963,0.001054762047715,-0.039821788668633,-0.065164469182491,-0.005100334994495,-0.079043000936508,-0.064922720193863,0.020523712038994,-0.035912610590458,0.027772987261415));
res += mul(Get(s0,0,0), float4x4(0.141686156392097,-0.068579107522964,-0.038743238896132,0.062260791659355,0.080624222755432,0.104594916105270,-0.028010521084070,0.096237957477570,0.040347758680582,-0.030633397400379,0.073373258113861,0.047995939850807,0.003954294603318,-0.072436921298504,0.009645325131714,-0.081048138439655));
res += mul(Get(s0,0,dy), float4x4(0.061338406056166,0.049659151583910,-0.064292594790459,-0.084216855466366,0.063659377396107,0.038414649665356,-0.031050540506840,-0.009104438126087,-0.045492921024561,0.036145515739918,0.189919129014015,-0.084136024117470,0.054504998028278,-0.024108929559588,-0.016485283151269,0.002673392416909));
res += mul(Get(s0,dx,-dy), float4x4(-0.028586063534021,-0.105358935892582,-0.066525459289551,-0.016546886414289,0.036796934902668,-0.127796366810799,0.045054759830236,-0.023793082684278,0.108134679496288,0.029254360124469,-0.042214184999466,-0.010420506820083,-0.091655433177948,-0.019863745197654,0.039388161152601,-0.067248903214931));
res += mul(Get(s0,dx,0), float4x4(-0.059070095419884,0.068337708711624,-0.014914990402758,-0.041686475276947,-0.086254723370075,-0.066785387694836,-0.149627894163132,0.012107438407838,-0.000376102456357,0.115245811641216,0.013201701454818,0.095610588788986,-0.094269275665283,0.006574394647032,0.165748089551926,-0.056829169392586));
res += mul(Get(s0,dx,dy), float4x4(0.043608553707600,0.021009178832173,0.005039644893259,-0.015396720729768,-0.169277742505074,0.087920278310776,0.076484598219395,0.035061117261648,0.017719579860568,0.079331986606121,-0.194778457283974,0.005362790543586,0.073526844382286,0.009084602817893,-0.010735413059592,-0.007959987968206));
res += mul(Get(s1,-dx,-dy), float4x4(0.021910917013884,-0.003014888614416,-0.062714129686356,-0.040448997169733,0.118211202323437,-0.056158140301704,0.048542357981205,0.004615209531039,-0.069816619157791,0.100510045886040,-0.103960752487183,-0.110073044896126,-0.059178374707699,-0.072910845279694,-0.053470600396395,0.087523542344570));
res += mul(Get(s1,-dx,0), float4x4(-0.076723501086235,-0.107643157243729,-0.036753449589014,0.006957689765841,-0.020564347505569,0.134687021374702,0.009097709320486,-0.112154863774776,-0.027582202106714,0.056325335055590,-0.079845085740089,0.122373610734940,-0.057824477553368,0.107778914272785,0.007702825125307,0.011199356988072));
res += mul(Get(s1,-dx,dy), float4x4(-0.055789276957512,-0.018699774518609,-0.032970130443573,0.029096441343427,-0.051405224949121,0.016831310465932,0.054595939815044,-0.091124169528484,-0.079647965729237,0.052274912595749,-0.064680196344852,-0.108507059514523,-0.070521831512451,0.011984946206212,0.021296627819538,0.065512806177139));
res += mul(Get(s1,0,-dy), float4x4(0.018126757815480,0.004621732980013,-0.060597386211157,-0.053866490721703,-0.009094107896090,0.039231866598129,0.004131675697863,-0.037790987640619,-0.126324370503426,-0.003545318730175,-0.048756904900074,-0.035518355667591,-0.022380631417036,-0.049678198993206,0.026991413906217,0.110327675938606));
res += mul(Get(s1,0,0), float4x4(0.039639171212912,0.029230212792754,0.130370989441872,-0.117282152175903,-0.056223414838314,0.038840025663376,-0.043252278119326,0.051067437976599,-0.067222386598587,0.080796130001545,-0.026483520865440,0.071535229682922,0.004011346492916,-0.025533840060234,0.085597366094589,-0.029099961742759));
res += mul(Get(s1,0,dy), float4x4(-0.007448189891875,0.007206235546619,-0.000221083391807,0.051024448126554,-0.031982295215130,0.003919533453882,0.094050258398056,0.003825263585895,-0.027199273929000,0.085873067378998,0.022066151723266,-0.062095053493977,0.101594746112823,-0.018993077799678,-0.078556776046753,-0.134700044989586));
res += mul(Get(s1,dx,-dy), float4x4(-0.037309233099222,0.061932481825352,-0.000481813913211,-0.027189631015062,-0.059623192995787,0.075104393064976,-0.006279433611780,-0.058350905776024,0.080161519348621,0.042040273547173,0.068103969097137,-0.062721572816372,0.171059042215347,-0.033824648708105,0.033942420035601,-0.028668450191617));
res += mul(Get(s1,dx,0), float4x4(0.023611346259713,0.059658277779818,-0.055137306451797,0.077642358839512,-0.043335355818272,0.013740670867264,0.149250596761703,-0.064823545515537,0.008133647032082,0.007767514325678,-0.014320922084153,0.070831961929798,0.106655970215797,-0.059478648006916,-0.095424875617027,-0.082047440111637));
res += mul(Get(s1,dx,dy), float4x4(0.005906902719289,-0.044366322457790,-0.036451097577810,0.000697909621522,-0.129076018929482,0.068935111165047,0.047605510801077,0.007884097285569,0.118299230933189,-0.086217179894447,-0.027263605967164,-0.004028274212033,0.030352521687746,0.047015693038702,0.071580439805984,-0.059437852352858));
res += mul(Get(s2,-dx,-dy), float4x4(0.054251521825790,-0.028469165787101,0.171469479799271,0.046093057841063,0.014910832978785,0.077889494597912,0.068118542432785,0.068553984165192,0.084905199706554,-0.104523628950119,-0.072577118873596,0.006464436184615,-0.080052420496941,0.014187593013048,-0.127223521471024,-0.031342513859272));
res += mul(Get(s2,-dx,0), float4x4(0.003159424057230,-0.129965379834175,0.062616460025311,-0.056630063802004,0.015847323462367,0.100041903555393,0.022598391398787,-0.004113532137126,0.060446444898844,-0.012584078125656,-0.068971917033195,-0.053749814629555,0.081006407737732,0.050783332437277,-0.041201330721378,0.150569722056389));
res += mul(Get(s2,-dx,dy), float4x4(-0.003946148790419,0.087096504867077,-0.083077430725098,0.067987538874149,0.032112482935190,-0.033960752189159,-0.161990091204643,0.092660486698151,0.070205241441727,0.017034385353327,0.032632738351822,-0.027381040155888,0.002785862656310,-0.089766152203083,-0.088236965239048,0.130905449390411));
res += mul(Get(s2,0,-dy), float4x4(-0.041973032057285,0.017203727737069,0.009636276401579,0.029290411621332,-0.049481477588415,-0.126829072833061,0.074066586792469,0.052419152110815,-0.033825319260359,0.018649412319064,0.001477977028117,-0.021553358063102,-0.012125171720982,0.055623114109039,0.067818380892277,0.013243833556771));
res += mul(Get(s2,0,0), float4x4(0.039342496544123,-0.001540326047689,-0.025809762999415,-0.061411656439304,-0.047118600457907,-0.110234260559082,0.060478001832962,0.007877046242356,-0.016136696562171,-0.014522540383041,-0.043437048792839,0.013537377119064,0.017187511548400,0.084103785455227,0.021691221743822,0.057613376528025));
res += mul(Get(s2,0,dy), float4x4(0.023116072639823,-0.048528902232647,-0.087099306285381,-0.001599783776328,0.098754271864891,-0.020629890263081,-0.076097719371319,-0.034076955169439,0.143089324235916,0.081002466380596,-0.077918402850628,-0.005681008566171,-0.007961440831423,0.028937799856067,-0.068349421024323,-0.043253086507320));
res += mul(Get(s2,dx,-dy), float4x4(-0.083057202398777,0.038954291492701,-0.059427257627249,0.073486238718033,0.021185498684645,0.130501925945282,-0.049838881939650,-0.103986211121082,0.040780302137136,-0.000676227849908,-0.023245727643371,0.014301215298474,-0.085510320961475,0.056777808815241,-0.057952612638474,0.034330517053604));
res += mul(Get(s2,dx,0), float4x4(0.018753761425614,0.116440862417221,-0.127994149923325,0.012746800668538,0.059745822101831,-0.023005533963442,0.018351912498474,0.064009189605713,-0.059647031128407,-0.069903492927551,-0.065508037805557,-0.000890730065294,-0.040864218026400,0.048828709870577,-0.006534394808114,0.047046180814505));
res += mul(Get(s2,dx,dy), float4x4(0.066586628556252,-0.041588906198740,-0.042956676334143,-0.043622694909573,-0.047834027558565,-0.006406832020730,-0.089774176478386,0.099242672324181,0.026156263425946,-0.009614416398108,0.081916160881519,0.031494982540607,-0.079421892762184,0.004684442654252,-0.010162532329559,-0.044071469455957));
res += mul(Get(s3,-dx,-dy), float4x4(-0.001206597429700,-0.086505539715290,-0.181386843323708,0.038238652050495,0.034991987049580,0.030545216053724,0.004750674124807,0.024050559848547,-0.011828020215034,0.053150679916143,-0.082046762108803,0.039436094462872,0.060174606740475,-0.016971744596958,0.063016444444656,0.093771971762180));
res += mul(Get(s3,-dx,0), float4x4(0.121101848781109,0.078768178820610,-0.132080182433128,0.050136573612690,-0.013503638096154,0.041976749897003,-0.028729498386383,-0.054189786314964,-0.051367588341236,0.064873665571213,0.087362684309483,0.118764810264111,0.036715455353260,0.158607408404350,0.022796723991632,-0.003827105509117));
res += mul(Get(s3,-dx,dy), float4x4(0.003457312704995,0.018069384619594,-0.030985269695520,0.073377914726734,0.052536796778440,0.026000563055277,-0.009961470961571,-0.082724198698997,-0.022311585023999,0.100411862134933,-0.050428889691830,0.014939047396183,-0.050863943994045,0.045728135854006,-0.004713335540146,0.020366305485368));
res += mul(Get(s3,0,-dy), float4x4(-0.109393425285816,0.059982579201460,0.074088975787163,0.033100280910730,-0.092672422528267,0.049747306853533,-0.057632301002741,-0.093312375247478,-0.012911445461214,0.026171922683716,0.007889371365309,0.070433609187603,0.001452606404200,-0.066213645040989,0.101692728698254,0.000770017271861));
res += mul(Get(s3,0,0), float4x4(0.013279000297189,0.071949258446693,0.027443699538708,-0.070825815200806,-0.060634400695562,0.054747495800257,0.010050819255412,0.028154637664557,0.050549350678921,0.085600621998310,-0.073525823652744,0.037757955491543,-0.041709497570992,-0.073976993560791,0.077142260968685,0.119000837206841));
res += mul(Get(s3,0,dy), float4x4(-0.025329064577818,-0.002110220724717,-0.070826992392540,-0.044511929154396,-0.002250730292872,0.028058599680662,-0.039413381367922,0.028214950114489,0.025376629084349,-0.123874671757221,0.127064526081085,0.007174018770456,-0.017335135489702,0.021229498088360,0.008735144510865,0.047191325575113));
res += mul(Get(s3,dx,-dy), float4x4(0.069477081298828,0.001189694856293,0.019510401412845,-0.023019555956125,0.033125165849924,-0.056312549859285,-0.070911906659603,-0.004889807663858,0.057458352297544,0.004700209014118,0.126017436385155,0.143533378839493,-0.040574405342340,-0.024991340935230,0.021482167765498,-0.016556143760681));
res += mul(Get(s3,dx,0), float4x4(0.020162144675851,-0.049311816692352,-0.062594056129456,-0.022831469774246,0.070546768605709,-0.099881485104561,0.059059467166662,0.045844048261642,-0.040414910763502,-0.166966259479523,-0.005517289973795,-0.113047562539577,0.044911578297615,0.022976770997047,-0.009795795194805,-0.012695258483291));
res += mul(Get(s3,dx,dy), float4x4(-0.003048306796700,-0.013930955901742,-0.097342200577259,-0.032294090837240,0.060601189732552,-0.090414516627789,-0.001605169731192,0.026755241677165,0.041125573217869,0.042002230882645,-0.049033105373383,-0.038295790553093,-0.134114131331444,0.014171319082379,0.015867624431849,-0.054552264511585));
return max(float4(0,0,0,0), res);
}