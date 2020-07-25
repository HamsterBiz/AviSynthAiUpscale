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
res += mul(Get(s0,-dx,-dy), float4x4(-0.009727010503411,0.108908586204052,0.041928704828024,-0.066584557294846,-0.057294692844152,-0.181052520871162,-0.132230639457703,-0.016565512865782,0.164175450801849,0.051075696945190,-0.222926065325737,-0.046437337994576,0.041193589568138,0.025023279711604,0.058683112263680,-0.025000432506204));
res += mul(Get(s0,-dx,0), float4x4(-0.034705940634012,0.179858952760696,-0.096721246838570,-0.036739435046911,-0.059754978865385,0.034110520035028,0.105964183807373,0.129668563604355,0.185185357928276,0.046215813606977,-0.112881250679493,-0.103922046720982,-0.034577343612909,0.091862417757511,0.055180676281452,-0.058656554669142));
res += mul(Get(s0,-dx,dy), float4x4(0.011077377945185,0.013127111829817,-0.129043251276016,-0.162665158510208,-0.018854161724448,0.166993796825409,-0.020382853224874,0.020026713609695,-0.013747410848737,0.070957019925117,0.112815640866756,0.022456545382738,-0.104743927717209,0.014743949286640,0.058032091706991,-0.039761494845152));
res += mul(Get(s0,0,-dy), float4x4(0.049770060926676,0.159441858530045,-0.010929643176496,-0.034889530390501,0.135658830404282,-0.099988773465157,-0.059290297329426,0.022033777087927,0.007347897160798,0.032468125224113,-0.187910065054893,0.018860299140215,-0.005954039748758,0.040010716766119,-0.062929145991802,0.132049351930618));
res += mul(Get(s0,0,0), float4x4(-0.018228176981211,-0.139768391847610,0.038777668029070,-0.008746911771595,-0.006836562417448,0.118249058723450,-0.013386388309300,0.059751860797405,0.134279742836952,-0.027182858437300,-0.066671907901764,0.018726078793406,0.053912866860628,0.050143964588642,-0.072611011564732,0.118780151009560));
res += mul(Get(s0,0,dy), float4x4(-0.189182758331299,0.081092074513435,0.139069691300392,-0.007438537199050,-0.008877042680979,0.050312705338001,0.020324314013124,0.179314881563187,0.037565216422081,-0.112462542951107,0.079171992838383,-0.002169726649299,0.054804217070341,-0.017931196838617,-0.078453466296196,-0.074234358966351));
res += mul(Get(s0,dx,-dy), float4x4(0.090005129575729,0.175906270742416,-0.113585568964481,0.112582817673683,0.004848738666624,0.043475709855556,0.003620947711170,0.002829815261066,0.043797593563795,0.041852518916130,-0.054837152361870,-0.109828628599644,0.107059367001057,0.020657218992710,-0.151110336184502,-0.007147855125368));
res += mul(Get(s0,dx,0), float4x4(0.024315204471350,0.122249051928520,0.064941965043545,-0.000886750756763,0.003127112751827,-0.052343171089888,0.029426449909806,0.028227694332600,-0.005495463963598,0.067593745887280,-0.203416481614113,0.010632844641805,-0.050615265965462,-0.121457219123840,0.098168604075909,-0.025105856359005));
res += mul(Get(s0,dx,dy), float4x4(0.045877777040005,0.033164039254189,0.013283973559737,0.017020540311933,0.022651668637991,0.027979616075754,0.113229312002659,-0.045652121305466,-0.071534089744091,0.027404384687543,-0.076753340661526,0.104403778910637,-0.037671040743589,0.049817591905594,0.037911627441645,-0.032478846609592));
res += mul(Get(s1,-dx,-dy), float4x4(0.038332629948854,0.111189156770706,-0.127365514636040,0.041179805994034,-0.007971499115229,0.054548226296902,0.081138864159584,-0.050799630582333,0.004794855602086,0.036049943417311,-0.172670394182205,0.075340367853642,-0.150274425745010,0.212521269917488,0.099219866096973,-0.189704820513725));
res += mul(Get(s1,-dx,0), float4x4(0.016601024195552,0.074178010225296,0.037591084837914,0.039179269224405,0.038465723395348,-0.108551450073719,0.110092110931873,0.152003407478333,-0.059071101248264,0.073443800210953,0.046286549419165,0.003965597134084,-0.054707482457161,0.010703895241022,-0.037830255925655,0.053395457565784));
res += mul(Get(s1,-dx,dy), float4x4(0.052678015083075,-0.002713253488764,0.078063637018204,-0.010013815946877,0.066040515899658,0.028738897293806,0.065984122455120,0.038092236965895,0.019635131582618,-0.077318258583546,0.115078724920750,-0.024169312790036,0.084809586405754,0.072997696697712,0.035617228597403,0.075976930558681));
res += mul(Get(s1,0,-dy), float4x4(0.136754751205444,-0.021164834499359,-0.050559233874083,0.177395179867744,0.025436187162995,0.032325286418200,-0.089418865740299,0.027767397463322,-0.044010516256094,-0.048612773418427,0.113369002938271,-0.045773033052683,-0.097381353378296,-0.000062796869315,0.013423890806735,-0.048040673136711));
res += mul(Get(s1,0,0), float4x4(0.060611248016357,-0.002010630676523,-0.090672284364700,-0.012207848951221,0.062361191958189,-0.028702342882752,0.069624938070774,0.107349909842014,0.033022977411747,0.100666776299477,0.051141433417797,0.010188879445195,0.037137966603041,-0.088102862238884,0.051235020160675,-0.090907730162144));
res += mul(Get(s1,0,dy), float4x4(0.037130184471607,-0.007131693884730,0.104284711182117,-0.037228304892778,-0.092620782554150,0.040629416704178,0.106431029736996,0.093422807753086,-0.003458447288722,-0.026958385482430,0.019282359629869,-0.028684256598353,-0.027226306498051,-0.022124798968434,-0.046465944498777,-0.019679408520460));
res += mul(Get(s1,dx,-dy), float4x4(-0.046061523258686,-0.085344910621643,-0.129456087946892,0.061007983982563,0.247823029756546,0.000339295103913,-0.082902483642101,0.064263366162777,0.159613490104675,0.101560778915882,0.023279927670956,-0.126319706439972,0.040332645177841,-0.132005944848061,-0.088789723813534,-0.039969775825739));
res += mul(Get(s1,dx,0), float4x4(-0.022266365587711,0.183794289827347,-0.171840712428093,0.186139494180679,0.126506894826889,0.035937316715717,0.096520848572254,0.132557079195976,-0.112404070794582,0.076618216931820,0.074125267565250,0.149240016937256,-0.046707093715668,0.011071175336838,0.134449318051338,-0.052724745124578));
res += mul(Get(s1,dx,dy), float4x4(-0.035026870667934,0.015383682213724,0.065592870116234,-0.076166570186615,0.063265636563301,0.020491948351264,-0.114126533269882,0.062694430351257,-0.037298791110516,0.091557167470455,0.052249066531658,-0.128196641802788,0.047849688678980,0.136833012104034,0.011143726296723,0.071016177535057));
res += mul(Get(s2,-dx,-dy), float4x4(0.031678225845098,0.016210528090596,0.227138727903366,0.067339025437832,-0.039275433868170,-0.104083858430386,-0.049271050840616,0.118441425263882,0.067256741225719,0.003181254258379,0.034571483731270,0.001869295258075,-0.003980587702245,0.111160233616829,0.199969321489334,0.029728390276432));
res += mul(Get(s2,-dx,0), float4x4(-0.075557827949524,0.006272462196648,-0.005315558984876,0.059336923062801,0.077240444719791,-0.056527171283960,-0.052536081522703,0.005301615223289,0.059021800756454,0.116944409906864,0.060271557420492,0.093968115746975,0.004684058483690,0.046864140778780,0.006892747245729,0.036324266344309));
res += mul(Get(s2,-dx,dy), float4x4(-0.064913026988506,-0.098256886005402,0.052807535976171,0.169182077050209,-0.127013429999352,-0.057968612760305,0.065987505018711,-0.056796748191118,-0.017917003482580,0.060319364070892,-0.007952453568578,-0.058469586074352,-0.014231706969440,0.041056007146835,-0.067066363990307,0.015922218561172));
res += mul(Get(s2,0,-dy), float4x4(-0.158453315496445,-0.008956114761531,-0.027882307767868,0.028155231848359,0.070377737283707,-0.003983922302723,0.062652871012688,0.096947409212589,0.155344590544701,0.020618269219995,0.088388577103615,0.000065381173044,0.011537767015398,0.029981678351760,0.031529758125544,0.012281260453165));
res += mul(Get(s2,0,0), float4x4(-0.009200877510011,0.131163373589516,0.010382964275777,0.138391911983490,0.072530589997768,0.044023837894201,-0.109911382198334,0.009523613378406,0.118694052100182,-0.006793988868594,-0.097341485321522,-0.024260438978672,-0.091954760253429,-0.028468692675233,0.031383384019136,0.118417613208294));
res += mul(Get(s2,0,dy), float4x4(-0.015413677319884,0.023270385339856,-0.110508643090725,0.161705926060677,-0.081523820757866,-0.056095980107784,0.003785218577832,0.058752860873938,0.171242326498032,0.087939091026783,-0.083583466708660,0.003056956687942,0.016452461481094,-0.121177561581135,-0.014766276814044,0.032707951962948));
res += mul(Get(s2,dx,-dy), float4x4(-0.012389672920108,-0.003393250983208,-0.136185765266418,0.145570084452629,0.004272970836610,-0.102961145341396,-0.071069456636906,-0.033854875713587,0.064200140535831,-0.031683288514614,-0.115326449275017,0.056840643286705,-0.090963095426559,0.010682804509997,-0.014045232906938,-0.111590132117271));
res += mul(Get(s2,dx,0), float4x4(0.045911435037851,0.114000380039215,-0.090830162167549,-0.220548644661903,-0.013123860582709,-0.027823727577925,0.094891019165516,-0.057267755270004,0.030413391068578,-0.102366335690022,0.022346885874867,0.019351087510586,-0.158309698104858,0.089795075356960,-0.121642678976059,0.014633626677096));
res += mul(Get(s2,dx,dy), float4x4(-0.071559868752956,0.011593231000006,0.019104858860373,0.049773618578911,-0.000071791269875,-0.089633964002132,-0.009735968895257,0.067335754632950,-0.020257217809558,-0.036917120218277,-0.032754655927420,0.016822181642056,-0.093577161431313,-0.086342908442020,0.063263840973377,-0.100166626274586));
res += mul(Get(s3,-dx,-dy), float4x4(0.069534085690975,-0.004554215818644,-0.051676891744137,-0.001575427246280,-0.155210524797440,0.179481610655785,0.087324358522892,-0.115459024906158,-0.070945739746094,-0.037154112011194,-0.050907250493765,-0.023047637194395,0.066282726824284,0.069440826773643,-0.003390532685444,-0.089906945824623));
res += mul(Get(s3,-dx,0), float4x4(0.020026793703437,-0.038390003144741,-0.048566848039627,-0.048596605658531,0.086704783141613,0.005017543677241,-0.079221099615097,-0.119190573692322,-0.019980508834124,0.100721135735512,0.053243149071932,-0.128765776753426,-0.092564329504967,-0.015395052731037,0.174110218882561,-0.134487390518188));
res += mul(Get(s3,-dx,dy), float4x4(0.144606009125710,-0.086714811623096,0.140409365296364,0.002331220312044,0.127122834324837,0.026348682120442,-0.076966561377048,-0.078414298593998,0.008184467442334,-0.096134826540947,-0.011748132295907,-0.071845412254333,0.068818189203739,-0.069856025278568,-0.175278246402740,0.039715632796288));
res += mul(Get(s3,0,-dy), float4x4(0.064822092652321,-0.041092585772276,-0.071202024817467,-0.145722061395645,-0.023732040077448,0.086073070764542,0.154025211930275,0.051674362272024,-0.010745270177722,-0.045129273086786,0.096745155751705,-0.028195032849908,0.116614311933517,-0.089134097099304,0.029379501938820,-0.060754682868719));
res += mul(Get(s3,0,0), float4x4(-0.002663472201675,-0.090937413275242,-0.067636139690876,0.128480479121208,-0.080312095582485,-0.004038088954985,0.092160776257515,0.107198789715767,0.094263531267643,-0.088704779744148,-0.099770791828632,0.000897830061149,-0.076635979115963,0.010440828278661,0.099547334015369,-0.027899818494916));
res += mul(Get(s3,0,dy), float4x4(-0.129058450460434,-0.025219822302461,0.117394603788853,0.100776053965092,-0.041433304548264,-0.118843190371990,0.018094213679433,-0.003486927133054,-0.097289487719536,-0.146504148840904,0.080671109259129,-0.032384227961302,0.038752622902393,-0.183529913425446,0.017338203266263,0.065798059105873));
res += mul(Get(s3,dx,-dy), float4x4(-0.114162802696228,0.108780808746815,-0.070127412676811,-0.030323559418321,0.057239271700382,-0.097452513873577,0.028168961405754,0.053085397928953,-0.025511678308249,0.041852265596390,-0.131969884037971,0.004379368852824,-0.015676168724895,-0.133417084813118,-0.181122899055481,-0.006115398835391));
res += mul(Get(s3,dx,0), float4x4(-0.153560757637024,-0.036487638950348,0.002384131541476,0.286454498767853,-0.046349957585335,-0.002823211485520,-0.018205244094133,-0.064483597874641,0.169010430574417,-0.019551482051611,-0.101157732307911,-0.071573026478291,-0.112412631511688,-0.007326333783567,0.056880142539740,0.062045361846685));
res += mul(Get(s3,dx,dy), float4x4(-0.016136476770043,0.042568102478981,0.044171817600727,0.080295793712139,-0.086125336587429,0.121552191674709,-0.177695095539093,-0.023863568902016,-0.024830617010593,-0.000464371521957,0.037806149572134,0.122602522373199,-0.019371295347810,0.016117272898555,0.034311871975660,0.113689489662647));
return max(float4(0,0,0,0), res);
}