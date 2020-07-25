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
res += mul(Get(s0,-dx,-dy), float4x4(0.021343497559428,0.080712944269180,0.227914184331894,-0.145055964589119,-0.230898141860962,-0.040853638201952,0.134314000606537,-0.008495943620801,-0.030393905937672,-0.139900177717209,-0.013822968117893,0.077587611973286,-0.023161994293332,0.039376262575388,0.175826251506805,-0.001149348914623));
res += mul(Get(s0,-dx,0), float4x4(-0.084127694368362,0.035578124225140,-0.073435232043266,0.086266174912453,-0.085616804659367,-0.101375520229340,0.051001392304897,-0.035433784127235,-0.285911589860916,0.222382098436356,0.017146915197372,-0.016633417457342,0.068543910980225,-0.017874218523502,0.165683463215828,0.097215257585049));
res += mul(Get(s0,-dx,dy), float4x4(0.213035866618156,-0.158220201730728,0.089045606553555,0.046227701008320,0.205235064029694,-0.177390903234482,0.005216524004936,0.088483981788158,-0.048870921134949,0.090172067284584,-0.012375009246171,-0.073676645755768,0.026365963742137,-0.217532202601433,-0.032206527888775,0.225363716483116));
res += mul(Get(s0,0,-dy), float4x4(-0.135413885116577,0.012227198109031,0.092350952327251,-0.204977586865425,-0.013418881222606,0.066225230693817,-0.039279263466597,-0.103824853897095,0.016023969277740,-0.123833708465099,-0.054825808852911,0.126560315489769,-0.014764374122024,-0.110943637788296,0.127167150378227,0.038130894303322));
res += mul(Get(s0,0,0), float4x4(-0.121841005980968,0.049263261258602,-0.015229554846883,0.010470682755113,-0.024838885292411,0.045967355370522,-0.178363129496574,0.022610707208514,-0.177441298961639,0.191385298967361,-0.122945331037045,0.157841727137566,-0.141013532876968,0.035164158791304,0.135455504059792,-0.070039846003056));
res += mul(Get(s0,0,dy), float4x4(0.013699240051210,0.007510583847761,0.047210037708282,0.027689991518855,0.180060043931007,0.115171201527119,0.118597775697708,0.004399291239679,0.104421451687813,-0.150108888745308,0.104811355471611,-0.100822269916534,0.121107146143913,-0.000354366726242,0.067370869219303,0.177301526069641));
res += mul(Get(s0,dx,-dy), float4x4(0.047268994152546,0.038887847214937,0.010628124698997,-0.018475823104382,0.074746146798134,-0.240403234958649,-0.203748568892479,-0.092816583812237,-0.179694995284081,-0.001488461508416,-0.022567678242922,0.031304452568293,0.243342757225037,0.014063796959817,0.182942166924477,-0.067190855741501));
res += mul(Get(s0,dx,0), float4x4(0.019355105236173,-0.091440051794052,0.062802113592625,-0.044268019497395,-0.036335967481136,0.011058189906180,-0.064639195799828,-0.021021718159318,0.218727901577950,0.095185242593288,-0.064722731709480,-0.042647399008274,0.014082272537053,-0.070256352424622,0.070146888494492,0.084415622055531));
res += mul(Get(s0,dx,dy), float4x4(-0.101248063147068,0.132747918367386,0.059897419065237,0.080928497016430,0.039516441524029,-0.082478106021881,-0.025465948507190,-0.147057116031647,0.017369002103806,0.059158414602280,-0.131001174449921,-0.133448094129562,-0.115764133632183,0.088833525776863,0.054437853395939,0.085487224161625));
res += mul(Get(s1,-dx,-dy), float4x4(-0.017210558056831,-0.086757093667984,0.226948454976082,0.004053712356836,0.010763540863991,0.013592245988548,-0.058289293199778,0.093608878552914,-0.073409527540207,-0.153341591358185,0.022979931905866,0.101784385740757,0.115256607532501,-0.080596409738064,-0.105981074273586,0.212902337312698));
res += mul(Get(s1,-dx,0), float4x4(-0.044606979936361,0.114080712199211,0.050350580364466,0.135824382305145,-0.083045765757561,0.091384828090668,0.034003272652626,0.132439017295837,-0.132955089211464,0.087849169969559,0.011891116388142,-0.022368539124727,0.181621149182320,0.001596439047717,0.134857639670372,-0.010246299207211));
res += mul(Get(s1,-dx,dy), float4x4(0.070848271250725,-0.098947733640671,-0.031481392681599,-0.186556071043015,0.074070572853088,-0.116094008088112,-0.041378427296877,0.001514819450676,-0.004978655371815,-0.070196703076363,0.074606850743294,0.084121957421303,0.103181339800358,-0.061100184917450,0.105930753052235,0.079220339655876));
res += mul(Get(s1,0,-dy), float4x4(0.131050214171410,-0.075497470796108,-0.172094255685806,-0.100343137979507,-0.082791209220886,0.251273334026337,0.131917163729668,0.139772430062294,-0.012139008380473,0.036668371409178,0.015831593424082,0.055484548211098,-0.115781404078007,0.035757280886173,0.002705693244934,0.005281407386065));
res += mul(Get(s1,0,0), float4x4(-0.048329856246710,0.078571327030659,0.180856913328171,-0.135448038578033,-0.164672046899796,-0.189128905534744,0.013716403394938,-0.012983628548682,0.053514204919338,0.045559257268906,0.026786668226123,0.063089199364185,-0.065949887037277,-0.086461901664734,-0.062784239649773,-0.128279417753220));
res += mul(Get(s1,0,dy), float4x4(-0.066000759601593,-0.029289701953530,0.090943656861782,0.063085325062275,-0.031019205227494,-0.084447428584099,0.277918994426727,0.146360412240028,-0.051412191241980,-0.005999819375575,0.057885035872459,0.011878462508321,0.033271402120590,0.034247301518917,-0.010523321107030,-0.026774609461427));
res += mul(Get(s1,dx,-dy), float4x4(0.024076534435153,0.048559222370386,0.140599742531776,-0.002209714613855,-0.017443176358938,0.046611145138741,0.017038695514202,0.140222251415253,0.185764744877815,0.088058240711689,-0.029288077726960,0.132017716765404,-0.029383478686213,-0.164889901876450,-0.076610162854195,0.005290139466524));
res += mul(Get(s1,dx,0), float4x4(-0.077615246176720,0.029572922736406,-0.084846504032612,0.039643052965403,0.048165280371904,-0.235220834612846,0.167165130376816,-0.036509513854980,0.157179966568947,-0.014127915725112,0.063938982784748,-0.099225953221321,0.111772984266281,-0.019301490858197,0.085124596953392,-0.169088169932365));
res += mul(Get(s1,dx,dy), float4x4(-0.009012233465910,-0.102192789316177,-0.042900521308184,0.141697436571121,-0.082388922572136,0.024718416854739,-0.139115199446678,-0.103990666568279,0.027933131903410,0.093565322458744,-0.038336813449860,-0.018958391621709,0.051085483282804,-0.014947873540223,-0.007350384257734,-0.007270306348801));
res += mul(Get(s2,-dx,-dy), float4x4(0.262398600578308,0.093803174793720,0.058722373098135,-0.070620991289616,0.080024726688862,-0.062795586884022,-0.203336656093597,0.075720109045506,0.040961332619190,0.152691677212715,0.004088254179806,0.132492706179619,0.249475330114365,-0.121282495558262,0.038370266556740,0.049418143928051));
res += mul(Get(s2,-dx,0), float4x4(-0.039898894727230,-0.142335370182991,-0.194672226905823,-0.061935983598232,-0.109583050012589,0.087710380554199,0.079645931720734,-0.087403967976570,-0.007870311848819,0.201703190803528,0.019867645576596,-0.106432035565376,0.026940073817968,-0.002912009367719,-0.004945206921548,0.019130736589432));
res += mul(Get(s2,-dx,dy), float4x4(0.008737844415009,0.151057600975037,-0.052639406174421,0.072779901325703,-0.065349794924259,-0.120098032057285,0.111538589000702,-0.288294047117233,0.062073528766632,0.044615682214499,0.059651762247086,-0.031840406358242,-0.168400913476944,-0.036012619733810,0.042244128882885,-0.038199286907911));
res += mul(Get(s2,0,-dy), float4x4(0.156481459736824,0.046072557568550,0.195618197321892,0.002227355027571,-0.275839686393738,0.197971016168594,-0.129713296890259,0.033841330558062,-0.031173918396235,-0.097937747836113,0.065762378275394,-0.206988021731377,-0.022318447008729,0.010105965659022,0.173394352197647,-0.008564813993871));
res += mul(Get(s2,0,0), float4x4(-0.019146315753460,-0.130930870771408,0.017914371564984,0.160626873373985,-0.057924568653107,0.024015683680773,0.066750116646290,-0.081602521240711,0.020556790754199,0.098294652998447,-0.009596124291420,0.185798302292824,-0.121523305773735,-0.016799692064524,0.099000185728073,0.157659113407135));
res += mul(Get(s2,0,dy), float4x4(-0.163325116038322,0.010386298410594,-0.035340748727322,-0.021779870614409,-0.138330265879631,0.044832054525614,-0.102559022605419,0.014888945966959,-0.000219433568418,0.013499799184501,-0.147116422653198,0.056106571108103,0.071918532252312,0.060664825141430,0.198793873190880,-0.027943173423409));
res += mul(Get(s2,dx,-dy), float4x4(0.074627071619034,0.025990610942245,-0.249173864722252,-0.044220130890608,0.068929553031921,0.110411360859871,-0.054848924279213,-0.055793855339289,-0.224604114890099,-0.011483348906040,-0.253773599863052,-0.194181308150291,-0.234354987740517,0.124502949416637,0.018840214237571,-0.082299135625362));
res += mul(Get(s2,dx,0), float4x4(-0.030570151284337,0.131058588624001,0.079462930560112,-0.096999280154705,-0.284963816404343,0.120817691087723,0.230094030499458,-0.170913785696030,-0.119567908346653,0.043602019548416,0.074824117124081,-0.053080629557371,-0.026960931718349,0.185288637876511,-0.005599004682153,0.224449530243874));
res += mul(Get(s2,dx,dy), float4x4(-0.104955218732357,0.117103435099125,-0.152738362550735,-0.062928296625614,-0.098356530070305,-0.338206946849823,0.067345581948757,0.136765271425247,0.000510858604684,0.123522661626339,-0.060334891080856,0.058411810547113,-0.035163629800081,0.275538951158524,-0.235454216599464,-0.013806912116706));
res += mul(Get(s3,-dx,-dy), float4x4(-0.042655482888222,0.032035138458014,0.017617406323552,-0.014075933024287,0.016121795400977,0.010625655762851,0.037314448505640,0.032063581049442,0.289996296167374,-0.042197879403830,0.122104398906231,0.093998603522778,-0.031116500496864,0.165138512849808,0.022242305800319,0.009163354523480));
res += mul(Get(s3,-dx,0), float4x4(-0.091842941939831,-0.098833054304123,-0.214442744851112,-0.046142254024744,0.046066287904978,0.277526497840881,-0.066195815801620,-0.017308382317424,0.178319647908211,-0.136046752333641,0.032916001975536,0.203717887401581,-0.034327972680330,0.050976406782866,0.093090340495110,-0.099729619920254));
res += mul(Get(s3,-dx,dy), float4x4(-0.074124246835709,-0.192516356706619,0.097672447562218,-0.143682271242142,-0.139523923397064,0.070147231221199,0.038385611027479,-0.144474849104881,0.216667547821999,0.035490486770868,0.073135435581207,-0.042307943105698,0.060647331178188,0.000216786502278,0.034992862492800,0.149559527635574));
res += mul(Get(s3,0,-dy), float4x4(-0.168251439929008,0.052210047841072,-0.001051375875250,0.005169038660824,0.111028447747231,-0.101221248507500,0.004489827435464,-0.011967288330197,-0.092544324696064,0.014849025756121,-0.152528464794159,0.080517418682575,-0.002457562135532,0.029227416962385,-0.188281431794167,0.002342119812965));
res += mul(Get(s3,0,0), float4x4(-0.076764129102230,-0.040036994963884,0.181296363472939,-0.023562157526612,-0.021074993535876,0.198476135730743,0.190076932311058,-0.048029962927103,0.008124075829983,0.056437510997057,0.053742650896311,0.266609787940979,0.072507947683334,-0.134990617632866,0.020156392827630,0.075820982456207));
res += mul(Get(s3,0,dy), float4x4(-0.003504885360599,-0.263413906097412,-0.039984613656998,-0.246170997619629,-0.023887861520052,0.007693976629525,0.111617311835289,0.150788038969040,-0.082143940031528,0.167473196983337,0.169148892164230,0.163292050361633,0.108687311410904,0.140103980898857,0.043468683958054,0.091370157897472));
res += mul(Get(s3,dx,-dy), float4x4(0.126804873347282,-0.028953360393643,0.036305136978626,0.059718247503042,0.085128262639046,0.036147184669971,-0.016130464151502,-0.196257293224335,-0.058466054499149,-0.065553978085518,-0.086273312568665,-0.028967848047614,-0.044454041868448,-0.060696348547935,0.088375851511955,0.222295448184013));
res += mul(Get(s3,dx,0), float4x4(0.150530233979225,-0.021463850513101,0.037952415645123,-0.119798652827740,-0.001188130816445,-0.132490545511246,0.024123156443238,0.096922263503075,-0.113765351474285,-0.083506286144257,0.080661170184612,0.062094040215015,-0.081812016665936,0.170354977250099,0.003200661391020,-0.187991529703140));
res += mul(Get(s3,dx,dy), float4x4(0.042258895933628,0.019362920895219,0.048392791301012,-0.079198502004147,-0.065259903669357,-0.038708053529263,0.082561627030373,-0.050601165741682,-0.010873178020120,-0.214284405112267,0.164544001221657,-0.131466135382652,-0.017119230702519,-0.136892586946487,-0.080746732652187,0.082211218774319));
return max(float4(0,0,0,0), res);
}