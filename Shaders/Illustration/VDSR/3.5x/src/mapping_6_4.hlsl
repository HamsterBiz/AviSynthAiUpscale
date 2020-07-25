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
res += mul(Get(s0,-dx,-dy), float4x4(0.013947656378150,-0.033583778887987,0.119638793170452,0.235982969403267,-0.153913050889969,0.065407425165176,-0.226408824324608,0.070851385593414,-0.121158078312874,0.088185332715511,-0.372365951538086,-0.041270617395639,-0.199510678648949,-0.048889420926571,0.118943884968758,-0.200669124722481));
res += mul(Get(s0,-dx,0), float4x4(0.100411340594292,-0.043735988438129,-0.143827706575394,0.098404347896576,-0.060249995440245,0.015958245843649,0.034053731709719,0.190287500619888,0.095699131488800,-0.005545222200453,-0.110946036875248,0.242344707250595,0.010917894542217,0.090374350547791,0.049753144383430,0.001552847330458));
res += mul(Get(s0,-dx,dy), float4x4(-0.114374384284019,0.014485478401184,-0.056236702948809,0.084506638348103,-0.140915974974632,0.096435628831387,0.108101621270180,0.002816162537783,-0.059447098523378,0.204725682735443,-0.077211670577526,0.081960871815681,0.055713314563036,-0.298722177743912,0.284386128187180,0.030054967850447));
res += mul(Get(s0,0,-dy), float4x4(-0.065930731594563,0.109046004712582,-0.016510097309947,-0.122408822178841,0.113770164549351,0.027758749201894,-0.029050899669528,-0.042719285935163,-0.049966346472502,-0.125269487500191,0.150479987263680,-0.055392086505890,-0.033234365284443,-0.013401249423623,-0.113869607448578,0.005271707195789));
res += mul(Get(s0,0,0), float4x4(0.117940798401833,0.055688548833132,-0.160523906350136,-0.154505491256714,-0.036120582371950,-0.196339935064316,0.011844285763800,-0.010711329057813,-0.094097390770912,0.071870602667332,-0.041211627423763,0.183686912059784,-0.040171213448048,-0.240901872515678,0.045071180909872,-0.156145393848419));
res += mul(Get(s0,0,dy), float4x4(-0.041532080620527,0.016859730705619,-0.084234863519669,-0.233257189393044,-0.150607377290726,-0.031869791448116,-0.106721930205822,-0.084532022476196,0.143456190824509,-0.002440325217322,0.140791043639183,0.082359358668327,0.020587498322129,-0.041518270969391,0.088498346507549,-0.218450501561165));
res += mul(Get(s0,dx,-dy), float4x4(0.209785908460617,0.010022111237049,-0.004854219499975,0.126063585281372,-0.072777673602104,0.027663566172123,0.164056614041328,-0.164985269308090,0.026397168636322,-0.147124141454697,0.070002697408199,-0.105684690177441,0.178199246525764,-0.208062216639519,0.028467245399952,-0.079026997089386));
res += mul(Get(s0,dx,0), float4x4(-0.065508939325809,0.104757755994797,0.072070941329002,-0.170309022068977,-0.145933419466019,0.089524514973164,-0.002222307492048,0.129980012774467,0.185388207435608,0.044749841094017,0.087713286280632,0.021253224462271,-0.191721737384796,-0.146614491939545,0.129376605153084,-0.059970393776894));
res += mul(Get(s0,dx,dy), float4x4(0.064493082463741,-0.011255796998739,-0.158482804894447,-0.165813803672791,-0.147582724690437,0.126257076859474,0.094508372247219,0.121631488204002,0.076676853001118,-0.099133431911469,0.083954483270645,0.134327113628387,-0.007668397855014,-0.026503138244152,0.106379248201847,-0.251326680183411));
res += mul(Get(s1,-dx,-dy), float4x4(-0.226361900568008,-0.013238992542028,0.225408285856247,-0.185379281640053,0.071920931339264,-0.050022281706333,-0.105130992829800,0.047751776874065,-0.007817472331226,0.116773895919323,0.027107205241919,0.037936408072710,-0.039474956691265,0.001206823857501,0.164308607578278,0.093599975109100));
res += mul(Get(s1,-dx,0), float4x4(-0.048731535673141,0.094881758093834,0.224616214632988,-0.012224675156176,-0.109376937150955,-0.095398627221584,0.118669733405113,-0.014415585435927,-0.133880674839020,-0.097035288810730,0.259797155857086,0.129632785916328,-0.040088023990393,-0.176399931311607,0.112608440220356,-0.285438746213913));
res += mul(Get(s1,-dx,dy), float4x4(-0.003051542211324,0.206201151013374,0.008385433815420,-0.060404520481825,0.182450070977211,-0.024137694388628,-0.022409418597817,0.089796319603920,-0.133665770292282,0.137620195746422,0.000861583335791,0.022872092202306,-0.079266488552094,0.037156533449888,-0.055714614689350,-0.021692126989365));
res += mul(Get(s1,0,-dy), float4x4(-0.083565086126328,-0.022485226392746,0.006341974250972,-0.046395551413298,0.058706615120173,-0.059228006750345,0.183301255106926,0.049264900386333,0.106711715459824,-0.006810165476054,0.053200621157885,0.031561791896820,0.117401659488678,-0.032581184059381,0.028362758457661,-0.342386335134506));
res += mul(Get(s1,0,0), float4x4(-0.026344122365117,0.095601283013821,-0.152173191308975,0.006683106999844,-0.048307474702597,0.047071725130081,0.085630267858505,-0.035807911306620,0.123640023171902,0.040040589869022,-0.071296162903309,0.026073461398482,-0.026642810553312,0.167029425501823,-0.039344966411591,-0.160272374749184));
res += mul(Get(s1,0,dy), float4x4(-0.077733196318150,0.033379994332790,-0.110768713057041,0.309985607862473,-0.058999374508858,-0.289765417575836,0.220207989215851,-0.049825366586447,-0.022680338472128,-0.156261488795280,-0.000824689166620,0.038782998919487,0.140576079487801,-0.096929505467415,0.000750190520193,0.008429710753262));
res += mul(Get(s1,dx,-dy), float4x4(0.240463078022003,0.006580693181604,-0.136458382010460,0.031463619321585,0.034172832965851,0.108639948070049,-0.041788920760155,-0.058654673397541,-0.134636744856834,0.018787294626236,-0.028598070144653,0.015583235770464,0.192835390567780,0.290680110454559,0.107979200780392,0.016436964273453));
res += mul(Get(s1,dx,0), float4x4(0.079914532601833,0.009542845189571,-0.173473104834557,-0.119154877960682,-0.010827653110027,0.027471931651235,-0.106045454740524,-0.055195651948452,0.263639926910400,0.068241789937019,-0.306782037019730,0.048270821571350,-0.011966595426202,-0.013839218765497,0.012555225752294,-0.226145848631859));
res += mul(Get(s1,dx,dy), float4x4(-0.056801926344633,0.147814884781837,0.015683673322201,-0.063711293041706,-0.035656690597534,-0.004420919809490,0.091740429401398,-0.022853152826428,-0.208221212029457,0.078822113573551,-0.211009815335274,-0.134417369961739,0.115176148712635,-0.156356468796730,-0.156616359949112,0.041153617203236));
res += mul(Get(s2,-dx,-dy), float4x4(-0.121717162430286,0.170246496796608,-0.134254693984985,0.021893968805671,0.010173339396715,0.108794085681438,-0.008783101104200,0.166551575064659,-0.135014325380325,-0.065682068467140,0.056956056505442,0.174994066357613,0.161154910922050,-0.232670992612839,-0.002301889471710,-0.081010997295380));
res += mul(Get(s2,-dx,0), float4x4(-0.016066147014499,-0.046936135739088,0.084426276385784,-0.019580066204071,-0.006985755171627,0.007620765827596,0.086474411189556,0.062759295105934,0.147916108369827,-0.297317922115326,0.019651411101222,0.083622969686985,0.069419220089912,0.053659018129110,0.067119292914867,-0.046243827790022));
res += mul(Get(s2,-dx,dy), float4x4(-0.051367491483688,0.099492460489273,0.054536934942007,0.097294762730598,-0.083333857357502,0.002433389890939,-0.197985738515854,-0.010327800177038,-0.028554961085320,0.102218315005302,0.075268603861332,-0.022106101736426,-0.007919462397695,0.064616166055202,0.116006672382355,0.066816546022892));
res += mul(Get(s2,0,-dy), float4x4(0.142193540930748,-0.066610060632229,-0.049613580107689,-0.105194836854935,-0.006491726264358,0.071114830672741,0.191154778003693,0.065890632569790,-0.089768886566162,-0.110325992107391,0.074406951665878,0.078370988368988,-0.180020451545715,-0.173382610082626,-0.005655872169882,0.198470935225487));
res += mul(Get(s2,0,0), float4x4(0.022209074348211,-0.015357581898570,-0.090529710054398,-0.024259697645903,-0.057141255587339,0.076226808130741,-0.059449762105942,0.050510026514530,-0.101508527994156,-0.033472534269094,-0.087059803307056,0.101509176194668,-0.213353514671326,0.099419347941875,-0.017017452046275,-0.108046472072601));
res += mul(Get(s2,0,dy), float4x4(0.207028850913048,-0.061160065233707,-0.084715083241463,-0.111181467771530,0.125151574611664,-0.023337930440903,-0.010160294361413,0.033436637371778,-0.228937506675720,0.106479711830616,0.014308563433588,0.009324364364147,-0.109188377857208,0.028297092765570,0.170696780085564,0.166131690144539));
res += mul(Get(s2,dx,-dy), float4x4(-0.014763748273253,0.122112959623337,-0.014589690603316,0.000197401124751,0.030477426946163,0.064014449715614,-0.135250553488731,-0.020455807447433,0.054460983723402,0.002880293177441,0.047488585114479,0.005855214782059,-0.144050255417824,0.110209539532661,-0.100326091051102,0.051434937864542));
res += mul(Get(s2,dx,0), float4x4(0.111629500985146,0.111511416733265,-0.010416416451335,-0.085115917026997,-0.106310777366161,-0.063771918416023,-0.129410713911057,-0.181654289364815,-0.107508771121502,-0.005319274961948,0.058307349681854,0.075356915593147,-0.008815904147923,0.023785175755620,-0.063911519944668,0.122064597904682));
res += mul(Get(s2,dx,dy), float4x4(-0.078980341553688,0.120984345674515,0.074830718338490,0.022630019113421,0.039023213088512,-0.126022472977638,0.217048078775406,-0.088111661374569,0.031593926250935,-0.002670542337000,-0.093317911028862,0.140553414821625,-0.088284492492676,0.039617426693439,0.029726814478636,0.042538993060589));
res += mul(Get(s3,-dx,-dy), float4x4(-0.114856265485287,-0.074840389192104,0.178514033555984,-0.176191687583923,0.095611341297626,0.145728081464767,-0.070710934698582,0.078772291541100,0.145887866616249,-0.153438463807106,-0.081832632422447,0.101768322288990,-0.067771628499031,0.141312405467033,0.006721271667629,-0.102810531854630));
res += mul(Get(s3,-dx,0), float4x4(0.090950563549995,0.030595172196627,0.046423919498920,0.146346926689148,0.057996686547995,-0.127649113535881,-0.034139711409807,0.124977052211761,-0.044576134532690,-0.200706943869591,0.115734174847603,0.124897047877312,-0.048529062420130,-0.009983330033720,-0.029513655230403,0.091156452894211));
res += mul(Get(s3,-dx,dy), float4x4(0.109691992402077,-0.068034745752811,0.131892651319504,0.005196418147534,0.228832572698593,0.144564256072044,0.167661383748055,-0.119086757302284,-0.075350806117058,-0.217635586857796,0.035994097590446,0.022325769066811,-0.232075750827789,-0.015966141596437,-0.029856063425541,0.047013174742460));
res += mul(Get(s3,0,-dy), float4x4(0.113034449517727,-0.107977584004402,-0.030711503699422,0.122668690979481,-0.047791048884392,-0.111730068922043,-0.151306256651878,-0.017219595611095,-0.020142711699009,-0.015777740627527,-0.174263313412666,0.040310841053724,-0.046274993568659,0.044745739549398,-0.154803737998009,-0.038735616952181));
res += mul(Get(s3,0,0), float4x4(0.035377860069275,0.078682214021683,-0.003421559929848,-0.134343296289444,0.086975418031216,-0.139224648475647,0.045209284871817,-0.081046193838120,-0.048345036804676,-0.076495602726936,-0.074933469295502,-0.260743618011475,-0.218230396509171,0.013514476828277,0.125539824366570,0.014937799423933));
res += mul(Get(s3,0,dy), float4x4(-0.246306598186493,0.160237088799477,-0.032480042427778,0.076900444924831,-0.124375216662884,-0.004044822417200,0.097727596759796,-0.112403117120266,-0.122102312743664,-0.235435262322426,-0.004274960141629,0.070141665637493,0.185038745403290,-0.079507507383823,0.010927841998637,0.200099766254425));
res += mul(Get(s3,dx,-dy), float4x4(0.134685441851616,0.094621635973454,-0.129247814416885,-0.019310230389237,0.015760658308864,-0.045162010937929,-0.061454340815544,-0.096369132399559,0.089561060070992,0.031923856586218,-0.019527109339833,-0.027974229305983,0.126360252499580,0.027836512774229,-0.005161567591131,-0.010781221091747));
res += mul(Get(s3,dx,0), float4x4(-0.046319402754307,0.124775022268295,0.187308147549629,-0.155294016003609,0.094661675393581,-0.049119479954243,-0.185938343405724,0.047345314174891,0.211613193154335,-0.133170187473297,0.113273695111275,-0.088934630155563,-0.016428807750344,0.044693551957607,0.035591468214989,-0.073699884116650));
res += mul(Get(s3,dx,dy), float4x4(-0.015090593136847,-0.116391666233540,0.031493775546551,-0.081799849867821,0.068133503198624,-0.153181374073029,-0.111013099551201,-0.057304024696350,0.003093274077401,0.106290586292744,0.037732470780611,-0.019427170976996,-0.194949120283127,0.004023297224194,0.053138192743063,0.028447162359953));
return max(float4(0,0,0,0), res);
}