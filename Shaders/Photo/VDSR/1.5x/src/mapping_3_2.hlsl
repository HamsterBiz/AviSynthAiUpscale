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
res += mul(Get(s0,-dx,-dy), float4x4(-0.156027033925056,-0.099478811025620,-0.069485045969486,-0.004171817563474,-0.075271405279636,0.056382723152637,0.059575565159321,0.119989067316055,-0.104841940104961,0.074843943119049,0.025020278990269,-0.042565397918224,-0.094199158251286,0.052558526396751,-0.037361383438110,0.055305901914835));
res += mul(Get(s0,-dx,0), float4x4(0.010614587925375,-0.092697151005268,0.008099382743239,0.035217508673668,0.023860868066549,-0.035469070076942,0.057679742574692,0.071666352450848,0.105797901749611,0.016588369384408,0.015877343714237,-0.024988114833832,0.029871489852667,0.137959823012352,-0.007385020144284,0.038696918636560));
res += mul(Get(s0,-dx,dy), float4x4(-0.025114139541984,0.159764036536217,0.008170874789357,0.130925402045250,-0.162524908781052,0.122928492724895,0.080346427857876,0.007306564133614,0.025038700550795,-0.036899246275425,0.101556070148945,-0.094219990074635,-0.016942335292697,0.182481348514557,-0.075840190052986,-0.097098700702190));
res += mul(Get(s0,0,-dy), float4x4(-0.074066497385502,-0.092858999967575,0.023197755217552,-0.266884177923203,0.099583745002747,0.062072508037090,-0.027208069339395,0.127912893891335,-0.044578917324543,-0.055085506290197,-0.014477172866464,-0.041416481137276,-0.041042547672987,-0.170539602637291,0.007402773480862,0.105263553559780));
res += mul(Get(s0,0,0), float4x4(-0.054713707417250,0.065822333097458,0.159643977880478,0.096197694540024,0.107156977057457,-0.058095451444387,-0.027856325730681,0.026791984215379,-0.069061033427715,-0.124985590577126,-0.035835627466440,-0.103242784738541,-0.010084170848131,-0.104598186910152,-0.081833399832249,0.223922640085220));
res += mul(Get(s0,0,dy), float4x4(0.108608692884445,0.029994145035744,0.012738100253046,0.008668336085975,-0.005286858882755,0.081426516175270,-0.107882328331470,0.086922615766525,-0.019425554201007,0.012377759441733,0.035866577178240,0.097387708723545,-0.074870318174362,0.017365872859955,-0.024563668295741,-0.054519504308701));
res += mul(Get(s0,dx,-dy), float4x4(0.086112447082996,-0.106180742383003,0.112309798598289,-0.117156744003296,0.006425416562706,-0.225891411304474,-0.004818384069949,0.198281928896904,-0.185810610651970,-0.183386012911797,-0.244092643260956,0.019956806674600,-0.101778507232666,0.034543141722679,-0.131890758872032,-0.132719397544861));
res += mul(Get(s0,dx,0), float4x4(0.070520214736462,-0.021821977570653,0.080562517046928,0.075596958398819,0.040566124022007,0.055136203765869,-0.035880427807570,0.097141534090042,0.022674601525068,-0.143042415380478,-0.137241348624229,0.195355489850044,0.174727976322174,0.071621000766754,-0.012230104766786,0.197668299078941));
res += mul(Get(s0,dx,dy), float4x4(0.012372932396829,-0.122163347899914,-0.039949558675289,0.106685757637024,0.027742143720388,0.023518927395344,-0.102169588208199,-0.019207863137126,0.033648647367954,-0.081283472478390,0.003866433631629,-0.081555835902691,-0.071523420512676,-0.052805177867413,-0.133436352014542,-0.015800612047315));
res += mul(Get(s1,-dx,-dy), float4x4(0.001197084435262,0.026353323832154,-0.151709973812103,0.013724738731980,-0.041065536439419,-0.017104789614677,-0.053241610527039,-0.052365832030773,0.170123830437660,0.004536675754935,-0.111257471144199,-0.040348626673222,-0.162267059087753,-0.102860234677792,0.017134552821517,0.072563260793686));
res += mul(Get(s1,-dx,0), float4x4(-0.163576453924179,-0.036025438457727,0.160071924328804,-0.124617598950863,-0.080703146755695,0.010320713743567,-0.018575841560960,-0.137495860457420,-0.237400382757187,-0.024260701611638,0.016954382881522,0.069345861673355,0.188289567828178,0.230840608477592,-0.271291404962540,-0.006339633371681));
res += mul(Get(s1,-dx,dy), float4x4(-0.035685643553734,-0.151626899838448,-0.108812868595123,0.060325834900141,-0.054978229105473,0.091306954622269,-0.000451634521596,0.111776322126389,-0.123280316591263,-0.007935062050819,0.054986115545034,0.020733859390020,0.070760853588581,0.057191707193851,-0.034061435610056,0.018633853644133));
res += mul(Get(s1,0,-dy), float4x4(0.215244054794312,0.088072650134563,-0.040372520685196,0.062552176415920,0.056741483509541,0.053854033350945,-0.009831660427153,0.026052201166749,0.049764461815357,0.125039547681808,0.097611561417580,-0.093520358204842,-0.037999622523785,-0.077489234507084,-0.319403499364853,0.054868761450052));
res += mul(Get(s1,0,0), float4x4(0.050729740411043,-0.073605045676231,0.095653079450130,-0.086723715066910,-0.257906377315521,0.052821040153503,0.071369223296642,-0.096604757010937,0.009397493675351,-0.020175287500024,-0.141851574182510,-0.347305893898010,0.078536711633205,-0.077217750251293,0.076277315616608,0.036265306174755));
res += mul(Get(s1,0,dy), float4x4(0.015890486538410,-0.026629749685526,-0.120050743222237,0.232838973402977,0.086578451097012,-0.005410540848970,-0.067623570561409,-0.053721167147160,-0.006053546909243,-0.042975131422281,0.090798214077950,0.035607159137726,0.034991934895515,-0.022604661062360,-0.017409034073353,-0.005907192360610));
res += mul(Get(s1,dx,-dy), float4x4(-0.143587738275528,-0.049215707927942,0.087194934487343,0.000436604546849,0.116886474192142,-0.081432871520519,0.191212058067322,-0.097761809825897,-0.098522916436195,-0.073694951832294,0.141201391816139,-0.103595115244389,0.030633777379990,-0.097356878221035,-0.165120601654053,0.031148225069046));
res += mul(Get(s1,dx,0), float4x4(-0.029514398425817,-0.040843483060598,-0.000491733313538,-0.092917352914810,-0.088261395692825,0.021725313737988,-0.140242666006088,-0.061249691992998,0.091472931206226,-0.007241548504680,0.023617131635547,0.053113885223866,0.159188553690910,-0.028694508597255,-0.101352460682392,0.048067007213831));
res += mul(Get(s1,dx,dy), float4x4(0.007694672793150,0.114757381379604,0.076018124818802,0.151609987020493,-0.123911723494530,0.112703979015350,0.007010682020336,-0.019170096144080,0.122621141374111,0.084012791514397,-0.024667315185070,0.004479818511754,-0.025103351101279,0.181337475776672,-0.068777829408646,0.086481831967831));
res += mul(Get(s2,-dx,-dy), float4x4(-0.027859512716532,0.131579041481018,-0.000147627579281,-0.058410994708538,-0.052054252475500,0.124878294765949,-0.218097805976868,0.060925353318453,-0.165585011243820,-0.122676305472851,0.000783923547715,-0.020660262554884,-0.059924460947514,-0.112066559493542,-0.122937753796577,0.040684565901756));
res += mul(Get(s2,-dx,0), float4x4(0.182956397533417,-0.031928192824125,0.021532896906137,0.003896231064573,-0.187073215842247,-0.084636934101582,-0.013547975569963,-0.179613575339317,-0.022318510338664,-0.002498067915440,-0.145061954855919,-0.055114645510912,0.090691134333611,-0.034104041755199,-0.050929293036461,0.036422170698643));
res += mul(Get(s2,-dx,dy), float4x4(0.070376105606556,0.101905666291714,-0.007430462166667,0.083878964185715,-0.005362404510379,-0.095723032951355,0.113709561526775,0.129837453365326,0.011500014923513,0.189657896757126,-0.027160096913576,0.141309559345245,0.094318337738514,-0.036649074405432,0.043263293802738,-0.039407048374414));
res += mul(Get(s2,0,-dy), float4x4(-0.152446568012238,0.002468675142154,-0.021649211645126,-0.110729455947876,0.078812189400196,-0.204042598605156,-0.300187140703201,-0.056497137993574,-0.066972032189369,0.005277292802930,-0.166647881269455,0.164633736014366,-0.032506685703993,-0.047235235571861,-0.100979939103127,-0.137071624398232));
res += mul(Get(s2,0,0), float4x4(-0.024130720645189,-0.026126757264137,0.116757273674011,0.042221002280712,0.017973886802793,-0.075751245021820,0.295831978321075,-0.007032310590148,-0.077510468661785,-0.023418152704835,0.005554825998843,-0.111873582005501,0.050119381397963,-0.144065171480179,-0.023254813626409,0.039146408438683));
res += mul(Get(s2,0,dy), float4x4(0.018773717805743,0.080125570297241,0.165952295064926,0.174921676516533,-0.003295948961750,-0.273830622434616,0.044131446629763,-0.086301535367966,0.016571566462517,-0.004158169496804,-0.070863641798496,-0.055299762636423,0.011836525984108,-0.027476930990815,0.052259106189013,-0.039071708917618));
res += mul(Get(s2,dx,-dy), float4x4(0.093223497271538,0.070375941693783,0.083620406687260,-0.050855923444033,0.080031007528305,0.113885909318924,0.099941886961460,0.076519511640072,-0.059252452105284,-0.116480186581612,-0.021108061075211,-0.025642216205597,-0.250734448432922,0.014889501966536,0.108378566801548,-0.007444621995091));
res += mul(Get(s2,dx,0), float4x4(0.064903832972050,0.040634676814079,0.024785755202174,0.087621465325356,0.010110089555383,-0.102186784148216,-0.033513516187668,-0.128790274262428,-0.025704160332680,0.027719248086214,0.166602581739426,-0.121757201850414,0.092563591897488,0.048416651785374,-0.021326439455152,-0.016227779909968));
res += mul(Get(s2,dx,dy), float4x4(0.099644027650356,0.206174612045288,-0.079790383577347,0.083405353128910,-0.059802670031786,-0.055009033530951,-0.087042763829231,0.104327648878098,0.023061186075211,0.068960785865784,0.134177654981613,0.067442104220390,-0.058088786900043,0.138934433460236,-0.087514281272888,0.067909024655819));
res += mul(Get(s3,-dx,-dy), float4x4(0.098145037889481,0.021818580105901,-0.057129956781864,-0.136332601308823,0.155241474509239,-0.010788402520120,-0.019878286868334,-0.079288832843304,-0.021767664700747,0.065226376056671,-0.019897656515241,-0.062226898968220,0.036738052964211,-0.002092342823744,-0.092602886259556,0.026731023564935));
res += mul(Get(s3,-dx,0), float4x4(-0.020087927579880,-0.065724536776543,-0.054743669927120,0.060729138553143,0.065446645021439,0.014217122457922,0.118643604218960,0.014083350077271,-0.046444814652205,-0.151671513915062,-0.135695770382881,-0.114304564893246,0.012085787951946,0.083179034292698,0.093434080481529,0.094503067433834));
res += mul(Get(s3,-dx,dy), float4x4(0.056904803961515,-0.075925499200821,0.134090140461922,0.127478092908859,0.102800197899342,-0.045771352946758,-0.119044512510300,0.114835083484650,-0.123073540627956,0.065390326082706,0.097520016133785,-0.011748193763196,0.024878757074475,0.057277876883745,0.215940788388252,-0.091700740158558));
res += mul(Get(s3,0,-dy), float4x4(-0.000812556769233,-0.042438801378012,-0.094001129269600,-0.019168306142092,0.053494501858950,-0.082033008337021,0.079135358333588,-0.103330545127392,-0.114650525152683,-0.084214158356190,-0.148791015148163,0.087227985262871,-0.051930751651525,-0.149988040328026,0.094577893614769,-0.019576905295253));
res += mul(Get(s3,0,0), float4x4(0.044095039367676,-0.154352024197578,-0.035438455641270,0.001285613747314,0.078714184463024,-0.021823592483997,0.060574684292078,0.136233791708946,-0.020559692755342,-0.084285639226437,-0.112244613468647,0.032333198934793,0.118937566876411,-0.005920462775975,0.199380293488503,-0.023585472255945));
res += mul(Get(s3,0,dy), float4x4(0.073777116835117,-0.144453182816505,-0.153521150350571,-0.047138940542936,0.095482662320137,0.065562181174755,0.063428394496441,-0.024349814280868,-0.033135689795017,0.031574867665768,0.315623670816422,-0.067366741597652,-0.043597545474768,-0.066988445818424,-0.118593260645866,0.112373545765877));
res += mul(Get(s3,dx,-dy), float4x4(-0.061020404100418,0.198693320155144,0.092027671635151,0.172392159700394,-0.076806843280792,0.107162803411484,-0.074927173554897,0.011365575715899,0.077079541981220,0.117145024240017,-0.178275078535080,0.137654691934586,0.004833249375224,0.044465251266956,-0.099665448069572,-0.158928900957108));
res += mul(Get(s3,dx,0), float4x4(-0.020218798890710,-0.012574777007103,0.009703909046948,-0.036746356636286,0.025895761325955,-0.041878513991833,0.096413485705853,-0.036671694368124,0.212808594107628,-0.097906619310379,0.077452823519707,-0.027691867202520,-0.074567236006260,-0.027021892368793,-0.035605911165476,-0.032943259924650));
res += mul(Get(s3,dx,dy), float4x4(-0.020842336118221,-0.077398627996445,-0.167203560471535,0.219785302877426,-0.004812064580619,0.055711396038532,-0.006771341897547,-0.089032821357250,0.053457301110029,-0.137178033590317,0.049149595201015,0.130391627550125,0.028749218210578,-0.045786231756210,-0.071846820414066,-0.027031261473894));
return max(float4(0,0,0,0), res);
}