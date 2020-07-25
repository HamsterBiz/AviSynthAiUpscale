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
res += mul(Get(s0,-dx,-dy), float4x4(0.126946225762367,-0.006544067524374,0.027301348745823,-0.099248312413692,0.023893825709820,0.129880964756012,-0.122842505574226,0.073665209114552,0.073564857244492,-0.190430313348770,0.147273853421211,-0.145347580313683,0.047839459031820,-0.090298116207123,-0.098652876913548,-0.089788205921650));
res += mul(Get(s0,-dx,0), float4x4(0.182426095008850,-0.163106039166451,-0.130321994423866,-0.073294557631016,0.157130107283592,-0.044644448906183,0.102769821882248,0.006605485919863,-0.042128555476665,0.012196773663163,0.214908763766289,-0.113463886082172,-0.091206468641758,-0.091800518333912,0.090767435729504,0.008368913084269));
res += mul(Get(s0,-dx,dy), float4x4(-0.008392711170018,0.123460106551647,-0.003291232511401,-0.067031361162663,-0.114519402384758,-0.049093898385763,-0.084833703935146,0.081228069961071,0.207337647676468,-0.031692739576101,0.096896082162857,-0.096413888037205,0.016224596649408,-0.192989155650139,-0.055188920348883,0.025968683883548));
res += mul(Get(s0,0,-dy), float4x4(-0.001541172852740,0.011183501221240,0.008262217044830,-0.063671246170998,0.123144142329693,0.018580114468932,0.024083448573947,0.006271741352975,-0.069165192544460,-0.075642801821232,0.011367415077984,-0.038434561342001,0.027710597962141,0.028298214077950,-0.129942744970322,0.032603655010462));
res += mul(Get(s0,0,0), float4x4(0.039978913962841,0.000077996985056,-0.030679289251566,0.203930303454399,-0.013894680887461,-0.065578699111938,0.026070266962051,-0.057934507727623,-0.033420715481043,-0.011151964776218,0.020539568737149,-0.001253336784430,-0.000338217505487,0.034833114594221,-0.030315976589918,0.135322675108910));
res += mul(Get(s0,0,dy), float4x4(-0.063688784837723,0.016313472762704,0.160873889923096,-0.011256511323154,-0.089960843324661,0.034659750759602,-0.015187405981123,0.151942104101181,0.087479859590530,-0.040656536817551,0.017247682437301,0.071669042110443,0.085701502859592,0.156263262033463,-0.059925392270088,-0.117896154522896));
res += mul(Get(s0,dx,-dy), float4x4(-0.010654456913471,-0.040786832571030,0.185548827052116,0.007244695443660,-0.112765863537788,-0.077852442860603,0.049873393028975,0.013065436854959,-0.218347430229187,0.132527932524681,0.097198888659477,0.147687658667564,-0.025713996961713,0.212414324283600,-0.081172630190849,0.050065230578184));
res += mul(Get(s0,dx,0), float4x4(0.164060965180397,0.031736899167299,-0.002148874569684,-0.088888451457024,0.054088320583105,-0.017948720604181,0.006990928668529,0.265395730733871,-0.105376116931438,-0.041387099772692,-0.027298305183649,0.019238280132413,0.029925210401416,0.128579869866371,-0.057681765407324,-0.141433626413345));
res += mul(Get(s0,dx,dy), float4x4(-0.085907019674778,0.082387708127499,0.027084654197097,-0.057628486305475,0.294234812259674,-0.148863717913628,0.216923281550407,0.108607240021229,0.016134638339281,0.118158116936684,0.030342848971486,0.007238584104925,-0.052612263709307,0.036325432360172,0.065230146050453,0.121004588901997));
res += mul(Get(s1,-dx,-dy), float4x4(-0.135269254446030,0.132155776023865,-0.024590063840151,0.236953303217888,-0.014222534373403,0.033894691616297,-0.006827859673649,0.044693708419800,-0.051841855049133,0.034299932420254,-0.164649531245232,-0.117123663425446,-0.030039688572288,-0.145439267158508,0.115019902586937,-0.204167962074280));
res += mul(Get(s1,-dx,0), float4x4(0.011438279412687,-0.001761741936207,-0.173725157976151,0.086276605725288,-0.110385738313198,-0.046231541782618,0.148466140031815,-0.004107340238988,-0.082236617803574,0.087495878338814,0.033994607627392,-0.108184620738029,0.057862829416990,0.031189601868391,0.076968081295490,-0.083404704928398));
res += mul(Get(s1,-dx,dy), float4x4(-0.411491811275482,-0.012455070391297,0.117122657597065,-0.127487897872925,0.137327238917351,0.074944607913494,-0.061861854046583,-0.251386821269989,0.191534444689751,0.127922698855400,0.024007797241211,0.037925638258457,0.024680888280272,-0.123797893524170,-0.170417353510857,-0.135273367166519));
res += mul(Get(s1,0,-dy), float4x4(-0.029947662726045,-0.011201886460185,0.011284465901554,-0.005666687153280,0.018899573013186,-0.095668129622936,-0.209227964282036,0.072236426174641,-0.040308449417353,-0.079481579363346,0.020362667739391,-0.007094462402165,0.085990361869335,0.024300480261445,0.212930500507355,0.102303043007851));
res += mul(Get(s1,0,0), float4x4(-0.032236125320196,0.066293425858021,0.052787497639656,-0.062842480838299,-0.093764573335648,-0.140887364745140,-0.203401878476143,0.043528355658054,0.208334371447563,0.008058190345764,-0.073415361344814,-0.074455909430981,0.075051650404930,0.058645054697990,0.110552407801151,0.048751544207335));
res += mul(Get(s1,0,dy), float4x4(0.054915484040976,0.007640369236469,-0.128232419490814,-0.139999851584435,0.159061908721924,0.131267428398132,-0.006820212583989,-0.132081553339958,-0.026507975533605,0.267468333244324,0.206097692251205,-0.121775917708874,-0.044322960078716,-0.022553713992238,0.025765871629119,-0.090023383498192));
res += mul(Get(s1,dx,-dy), float4x4(0.062359947711229,-0.064726039767265,0.013806857168674,-0.093783989548683,-0.117828711867332,0.086960338056087,0.139366135001183,-0.082064732909203,-0.011924636550248,-0.022172324359417,-0.050125349313021,-0.070584379136562,-0.023257790133357,-0.117024086415768,0.026450790464878,-0.052159145474434));
res += mul(Get(s1,dx,0), float4x4(0.159683957695961,0.105562664568424,0.130821585655212,-0.199103832244873,-0.045573774725199,0.122300460934639,-0.050644189119339,0.011420126073062,-0.049155861139297,-0.161414101719856,-0.145367369055748,-0.136850252747536,0.225573942065239,-0.050408739596605,0.012076844461262,0.054113980382681));
res += mul(Get(s1,dx,dy), float4x4(-0.014702644199133,0.094459049403667,-0.097416386008263,-0.071575276553631,-0.055438004434109,-0.037353500723839,-0.050949871540070,-0.141735002398491,0.121048413217068,-0.021120389923453,0.044350452721119,0.123948529362679,0.149420797824860,-0.136298999190331,-0.019834574311972,0.022140845656395));
res += mul(Get(s2,-dx,-dy), float4x4(-0.038401838392019,-0.055374350398779,-0.105717860162258,-0.272886991500854,0.028427619487047,0.113724529743195,0.145488053560257,-0.002459595911205,0.003459937404841,-0.076859787106514,0.088022232055664,-0.131957367062569,-0.041664358228445,0.068973861634731,-0.076639346778393,0.088921226561069));
res += mul(Get(s2,-dx,0), float4x4(-0.030716927722096,0.193451613187790,0.111374929547310,-0.199418246746063,-0.019293790683150,-0.005778600461781,0.125894173979759,-0.059740222990513,0.169493481516838,-0.098686315119267,0.102041654288769,0.124766945838928,-0.001563167432323,0.058178432285786,0.092918671667576,0.031032396480441));
res += mul(Get(s2,-dx,dy), float4x4(0.052020549774170,0.024060938507318,-0.014593782834709,-0.052354805171490,-0.175906091928482,0.155908778309822,0.052095755934715,-0.017242804169655,-0.047656409442425,-0.011664424091578,0.150269359350204,-0.080651581287384,0.064904384315014,-0.043634574860334,0.094041511416435,-0.009156613610685));
res += mul(Get(s2,0,-dy), float4x4(-0.088363282382488,-0.149623572826385,0.090615607798100,0.117708265781403,0.078068390488625,-0.013867559842765,0.038978029042482,-0.100753828883171,-0.067569166421890,-0.052774757146835,0.062028504908085,0.004427846055478,-0.019148936495185,0.047739434987307,-0.054734338074923,0.151470169425011));
res += mul(Get(s2,0,0), float4x4(-0.024233188480139,0.065323852002621,0.053378857672215,0.043494157493114,-0.078153327107430,0.000756907451432,-0.010536501184106,-0.016216261312366,-0.168919011950493,0.073649816215038,0.139682039618492,-0.117484621703625,-0.184307768940926,-0.044066369533539,-0.083087049424648,0.108749017119408));
res += mul(Get(s2,0,dy), float4x4(-0.109693832695484,-0.038508065044880,0.003433428239077,-0.103649772703648,-0.122074782848358,0.024159306660295,-0.095845244824886,-0.076873622834682,0.106908820569515,0.005536887794733,-0.181277185678482,0.189280837774277,-0.056631550192833,0.024408578872681,-0.006669031456113,0.013518582098186));
res += mul(Get(s2,dx,-dy), float4x4(-0.184157788753510,0.088455967605114,0.037021227180958,0.058553803712130,0.145676344633102,-0.037163615226746,-0.055875476449728,-0.111985117197037,0.052155576646328,0.080697208642960,0.019434144720435,0.188861355185509,0.058284722268581,-0.052702087908983,-0.006569361779839,0.058846380561590));
res += mul(Get(s2,dx,0), float4x4(-0.041046869009733,-0.040024440735579,-0.095940403640270,-0.069773301482201,0.054311215877533,0.060667224228382,-0.076817378401756,0.094148091971874,0.042833831161261,-0.065182134509087,-0.243066042661667,-0.004157322458923,0.001937617897056,0.139014229178429,0.050160221755505,-0.006340695079416));
res += mul(Get(s2,dx,dy), float4x4(-0.011483522132039,0.002745138248429,0.046261474490166,-0.118448510766029,0.021093068644404,0.054793719202280,-0.032814800739288,-0.005516740493476,-0.108933523297310,0.044523544609547,0.114016324281693,-0.074366182088852,0.190371766686440,-0.150326907634735,0.000967828731518,0.035467334091663));
res += mul(Get(s3,-dx,-dy), float4x4(-0.171902656555176,0.013823938556015,0.049077939242125,0.078175999224186,0.075484186410904,-0.208313941955566,0.037633106112480,0.023705551400781,-0.077102191746235,-0.020023485645652,0.063861154019833,0.110685415565968,-0.183287844061852,-0.060250304639339,-0.103317007422447,-0.069516666233540));
res += mul(Get(s3,-dx,0), float4x4(-0.147508740425110,-0.019323274493217,-0.109022550284863,0.113419540226460,0.053600750863552,0.042707279324532,-0.056905470788479,-0.075744949281216,-0.059587057679892,-0.106943227350712,-0.110569432377815,-0.109977088868618,-0.079642280936241,0.019772553816438,-0.059394467622042,-0.060264226049185));
res += mul(Get(s3,-dx,dy), float4x4(0.026280168443918,-0.103067971765995,-0.012040743604302,-0.088517464697361,-0.011249879375100,0.087648719549179,0.040223348885775,0.078595072031021,-0.011418486014009,-0.218373715877533,0.201776266098022,0.054083760827780,-0.243203908205032,0.035619124770164,0.089275367558002,0.004394859075546));
res += mul(Get(s3,0,-dy), float4x4(-0.128417313098907,0.011597187258303,-0.028013845905662,0.009514792822301,0.003635048633441,0.077607482671738,0.044783394783735,0.012076308019459,-0.070332810282707,-0.118790373206139,0.000996601302177,-0.135526746511459,-0.031330801546574,0.065104819834232,-0.032521367073059,0.051435966044664));
res += mul(Get(s3,0,0), float4x4(0.103186495602131,-0.045141138136387,-0.014685422182083,0.065262667834759,0.164808556437492,0.145824477076530,-0.033996623009443,0.150667175650597,0.066394738852978,-0.055166803300381,0.125093266367912,0.068087011575699,0.088097341358662,-0.130618736147881,0.027153890579939,-0.075309306383133));
res += mul(Get(s3,0,dy), float4x4(0.056579686701298,0.105166204273701,-0.062110625207424,-0.132448926568031,0.124217249453068,0.046654406934977,-0.036240067332983,-0.009777748957276,-0.066212601959705,0.062475461512804,0.293933123350143,-0.115816615521908,0.155658766627312,-0.089242137968540,-0.018796389922500,0.041994564235210));
res += mul(Get(s3,dx,-dy), float4x4(-0.018885554745793,-0.192887514829636,-0.047800797969103,-0.012535304762423,0.055171661078930,-0.194968923926353,0.087270125746727,-0.035053379833698,0.162612482905388,0.055247977375984,-0.070754192769527,0.000901849824004,-0.159682452678680,-0.058830544352531,0.101888254284859,-0.072646476328373));
res += mul(Get(s3,dx,0), float4x4(-0.134121358394623,0.020040592178702,0.012523280456662,-0.066471233963966,-0.122648641467094,-0.110615104436874,-0.213793948292732,0.020371528342366,-0.011033802293241,0.161412075161934,0.015108610503376,0.155801773071289,-0.203696012496948,-0.032144192606211,0.302445024251938,0.000994851929136));
res += mul(Get(s3,dx,dy), float4x4(0.007551055401564,0.050618123263121,0.028931841254234,-0.029872765764594,-0.256296098232269,0.111978508532047,0.129302397370338,0.054252572357655,0.011466530151665,0.093690514564514,-0.300655037164688,0.018515640869737,0.034517586231232,0.160804152488708,0.009376646019518,0.025695608928800));
res = max(float4(0,0,0,0), res);
return res;
}