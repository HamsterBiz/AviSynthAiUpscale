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
res += mul(Get(s0,-dx,-dy), float4x4(-0.011608092114329,0.132245808839798,-0.027548797428608,-0.120891451835632,-0.008329913951457,0.062597066164017,0.068225197494030,-0.134066671133041,-0.017184566706419,-0.028135279193521,0.045388903468847,0.050093013793230,0.066593006253242,-0.011738835833967,-0.004055435303599,-0.048640638589859));
res += mul(Get(s0,-dx,0), float4x4(-0.144107460975647,-0.038954552263021,0.022345833480358,-0.073148988187313,-0.055282201617956,-0.102048933506012,-0.066691532731056,0.130279392004013,-0.040199507027864,0.040322788059711,-0.043106541037560,0.009395778179169,0.034130595624447,0.077859625220299,0.173855185508728,0.012144513428211));
res += mul(Get(s0,-dx,dy), float4x4(0.068299748003483,-0.003927160985768,-0.054019626230001,0.014501101337373,-0.013753555715084,-0.038181908428669,0.047289542853832,-0.015354454517365,-0.029138065874577,-0.034303478896618,-0.114280879497528,-0.031157378107309,-0.046512614935637,0.149639487266541,0.029004365205765,-0.122233711183071));
res += mul(Get(s0,0,-dy), float4x4(-0.012330153025687,0.137747451663017,0.116156570613384,-0.049241419881582,-0.058953654021025,-0.047584280371666,-0.044274844229221,0.054694648832083,0.094655416905880,-0.122572220861912,-0.041271526366472,0.080595768988132,0.099524490535259,-0.151987850666046,-0.094372160732746,-0.120115451514721));
res += mul(Get(s0,0,0), float4x4(-0.098729200661182,0.103286005556583,-0.023760544136167,0.016531085595489,0.011883773840964,-0.055574987083673,-0.025067610666156,0.176568746566772,-0.050430499017239,-0.117298632860184,0.167987346649170,-0.113418050110340,0.028863988816738,-0.013575143180788,-0.068921640515327,0.050551868975163));
res += mul(Get(s0,0,dy), float4x4(-0.106134422123432,-0.125835090875626,0.074795976281166,-0.069297909736633,0.125307217240334,0.016675269231200,-0.050116796046495,0.001161878113635,0.014907936565578,0.056289862841368,-0.019042782485485,-0.099407039582729,-0.035698968917131,0.017531067132950,-0.086303055286407,-0.082726724445820));
res += mul(Get(s0,dx,-dy), float4x4(-0.082553379237652,-0.008650892414153,-0.160557821393013,0.003631532657892,0.067963011562824,-0.103302307426929,-0.141114786267281,0.135277584195137,0.047720339149237,0.057673726230860,-0.056729998439550,0.118416681885719,-0.039035707712173,-0.097218215465546,0.118811443448067,0.010164218023419));
res += mul(Get(s0,dx,0), float4x4(-0.070900179445744,0.051700282841921,0.091529347002506,-0.030343413352966,-0.044570267200470,-0.185006842017174,0.025002373382449,-0.016438497230411,-0.094104655086994,-0.005704448558390,-0.054417606443167,0.007642261683941,-0.045064743608236,-0.010987551882863,0.169112905859947,-0.133193001151085));
res += mul(Get(s0,dx,dy), float4x4(-0.010064332745969,0.110225088894367,-0.059574823826551,0.043261092156172,-0.001262228353880,-0.052191320806742,0.129409566521645,0.065033376216888,-0.135824427008629,0.062910623848438,-0.067424535751343,0.028698060661554,-0.097405910491943,0.070983819663525,0.119137987494469,-0.025513151660562));
res += mul(Get(s1,-dx,-dy), float4x4(0.236190184950829,-0.058630276471376,-0.020792627707124,-0.085208132863045,0.031514912843704,0.062810622155666,0.007359346840531,0.076811291277409,-0.013534940779209,-0.007006793748587,0.101253673434258,0.035728480666876,-0.081499509513378,-0.033284842967987,0.082662582397461,-0.112111769616604));
res += mul(Get(s1,-dx,0), float4x4(-0.199075385928154,-0.160942882299423,0.096929423511028,0.047059208154678,0.133338943123817,-0.216661393642426,-0.074117086827755,-0.056735910475254,-0.055526886135340,0.167702659964561,0.232056006789207,-0.031116841360927,-0.138047575950623,0.060619153082371,-0.038723658770323,0.089060261845589));
res += mul(Get(s1,-dx,dy), float4x4(0.023131426423788,-0.073479026556015,-0.007223777007312,0.005770963151008,-0.032250314950943,0.089441761374474,0.123052477836609,-0.104779198765755,-0.051355477422476,0.083568699657917,0.099621102213860,-0.039374276995659,-0.023329492658377,0.028006022796035,-0.062913566827774,0.083310723304749));
res += mul(Get(s1,0,-dy), float4x4(0.000976481649559,0.029970383271575,-0.003474825760350,0.014384405687451,-0.068563893437386,0.040977384895086,-0.142460212111473,0.150481000542641,-0.110741652548313,-0.041731704026461,-0.116219326853752,0.028105586767197,0.051275569945574,-0.014029201120138,-0.068880014121532,0.076587401330471));
res += mul(Get(s1,0,0), float4x4(-0.111982330679893,-0.051997646689415,-0.101364001631737,-0.095648765563965,-0.141797393560410,-0.024301700294018,0.038243640214205,0.065844923257828,0.047206509858370,-0.025692574679852,0.017259240150452,-0.030919861048460,0.086651295423508,-0.181608915328979,0.036287598311901,-0.135484397411346));
res += mul(Get(s1,0,dy), float4x4(-0.012601638212800,0.077414333820343,-0.022556316107512,-0.090539902448654,0.051829040050507,-0.148688465356827,-0.012455776333809,-0.114498898386955,-0.040692910552025,-0.037557132542133,0.176715001463890,0.040531080216169,0.103918157517910,-0.126221075654030,0.042364768683910,0.036339297890663));
res += mul(Get(s1,dx,-dy), float4x4(0.033620439469814,-0.035123217850924,-0.064510539174080,-0.116607442498207,-0.062588296830654,0.027646152302623,-0.063026539981365,0.180215775966644,0.050925415009260,0.076079539954662,0.032563917338848,-0.021876549348235,-0.036148190498352,0.116296544671059,-0.038799669593573,-0.086410440504551));
res += mul(Get(s1,dx,0), float4x4(0.088248863816261,0.031838167458773,-0.030955407768488,0.096837006509304,0.104834005236626,0.020117515698075,-0.144483312964439,-0.135507285594940,-0.154651746153831,-0.210026964545250,-0.065435744822025,0.057007722556591,-0.086554117500782,0.020026348531246,-0.131774798035622,0.076050177216530));
res += mul(Get(s1,dx,dy), float4x4(0.008600567467511,-0.051525842398405,-0.051071990281343,0.062444206327200,-0.014581834897399,-0.085542701184750,-0.012416427023709,0.012060597538948,0.023522354662418,-0.058811970055103,0.073963955044746,-0.047591689974070,0.260460913181305,0.001419265754521,0.010532423853874,0.080957561731339));
res += mul(Get(s2,-dx,-dy), float4x4(-0.049117121845484,-0.027904151007533,-0.022889114916325,0.086587719619274,0.011687473393977,0.024939516559243,-0.110913328826427,0.006205113604665,-0.014681760221720,-0.093601614236832,-0.046150378882885,0.121538653969765,0.011147837154567,-0.138911411166191,-0.053733009845018,-0.015411655418575));
res += mul(Get(s2,-dx,0), float4x4(-0.061601154506207,0.250145196914673,0.005048272665590,0.155527085065842,-0.066800132393837,-0.046256437897682,-0.013544376008213,0.102205418050289,-0.177739307284355,-0.142815038561821,-0.169600486755371,0.010285538621247,0.033023092895746,0.147802144289017,0.108654364943504,-0.120076477527618));
res += mul(Get(s2,-dx,dy), float4x4(0.040879037231207,-0.058044005185366,0.121517024934292,-0.124548114836216,-0.038185000419617,0.106980249285698,-0.013663122430444,-0.094589389860630,0.018276415765285,0.178198859095573,-0.206840023398399,0.029085556045175,0.028422176837921,0.267046302556992,0.006986526306719,-0.122903205454350));
res += mul(Get(s2,0,-dy), float4x4(-0.094234704971313,-0.008555614389479,0.024810012429953,0.032240033149719,-0.052494842559099,0.075842790305614,0.223864451050758,-0.080227091908455,0.083134822547436,0.032565474510193,0.052000589668751,-0.072369307279587,0.033695086836815,-0.010145287960768,0.017093282192945,-0.115240767598152));
res += mul(Get(s2,0,0), float4x4(-0.058379385620356,0.050591249018908,-0.072785653173923,0.134786114096642,0.008243116550148,0.205793380737305,0.125682264566422,0.016460685059428,0.109872967004776,0.054064188152552,0.033158428966999,-0.143639996647835,0.057614386081696,0.025422414764762,-0.063859216868877,-0.189325854182243));
res += mul(Get(s2,0,dy), float4x4(-0.133076131343842,0.119483843445778,0.182828560471535,0.000809149525594,-0.063552334904671,0.020795650780201,0.050116918981075,0.015238052234054,0.020917125046253,0.045449193567038,-0.048868831247091,-0.195626854896545,0.074321478605270,0.013788743875921,0.013985177502036,0.093276262283325));
res += mul(Get(s2,dx,-dy), float4x4(-0.018401453271508,-0.007032111287117,-0.062372278422117,0.001252107904293,0.014538572169840,0.000409401982324,-0.067976385354996,-0.080837368965149,0.127582311630249,0.112403385341167,0.073553837835789,0.170626282691956,-0.096060059964657,-0.030025199055672,0.036258008331060,-0.088324412703514));
res += mul(Get(s2,dx,0), float4x4(-0.098334237933159,0.087300375103951,-0.045704200863838,-0.062894143164158,-0.083139792084694,-0.075312018394470,0.092548497021198,0.026194183155894,0.059792242944241,0.089965946972370,0.044193871319294,0.047493018209934,-0.128793776035309,-0.007490308955312,-0.098551429808140,0.016071634367108));
res += mul(Get(s2,dx,dy), float4x4(0.033174335956573,0.090943045914173,0.044809084385633,0.093489691615105,0.042996402829885,-0.131569027900696,-0.001986995339394,-0.036782093346119,0.180479824542999,-0.060798473656178,-0.103556841611862,0.128778457641602,0.094276942312717,0.127377137541771,0.084570504724979,0.024147348478436));
res += mul(Get(s3,-dx,-dy), float4x4(0.078552000224590,-0.011208969168365,0.017800638452172,-0.106460943818092,-0.031592123210430,0.157933652400970,0.051850952208042,-0.024717541411519,0.107774443924427,0.059772629290819,0.094910517334938,0.029184887185693,0.074188157916069,0.170233413577080,0.048579841852188,-0.145034521818161));
res += mul(Get(s3,-dx,0), float4x4(-0.075021088123322,0.027581891044974,0.026918418705463,0.072799347341061,0.067728482186794,-0.123413302004337,0.041313830763102,0.027334071695805,0.068650096654892,-0.091167241334915,0.035880722105503,-0.023625550791621,-0.146564453840256,0.282686650753021,-0.115086525678635,0.161953732371330));
res += mul(Get(s3,-dx,dy), float4x4(-0.003344495082274,-0.034861512482166,-0.127483338117599,0.020629212260246,-0.023545844480395,-0.168867871165276,0.056516293436289,0.130508080124855,0.002405448351055,-0.067416988313198,0.067502975463867,-0.181694194674492,-0.031839936971664,0.064946681261063,-0.051438778638840,0.103560306131840));
res += mul(Get(s3,0,-dy), float4x4(0.154892101883888,0.070745512843132,0.122657679021358,-0.189839631319046,0.089922279119492,0.121724203228951,0.007718991022557,0.076608739793301,-0.076829336583614,0.079373300075531,-0.058340616524220,0.003072929102927,-0.183656603097916,0.047465514391661,0.058853417634964,-0.157043963670731));
res += mul(Get(s3,0,0), float4x4(-0.102513886988163,0.043275684118271,0.050086643546820,-0.043517474085093,0.083290226757526,-0.064578175544739,-0.132283344864845,-0.012973882257938,-0.111164063215256,0.114641100168228,0.068279400467873,-0.107881195843220,0.026398653164506,0.037128333002329,-0.037476088851690,0.088934950530529));
res += mul(Get(s3,0,dy), float4x4(0.025516197085381,0.007307499647141,-0.083218388259411,0.010445048101246,-0.032602511346340,-0.208443611860275,0.034815285354853,0.127569228410721,0.095140613615513,0.096388228237629,-0.065274298191071,-0.053065821528435,-0.010106865316629,-0.070154249668121,0.163572534918785,0.206316813826561));
res += mul(Get(s3,dx,-dy), float4x4(-0.122861169278622,0.129839792847633,-0.028840124607086,-0.099038101732731,0.013995284214616,0.066663548350334,-0.105967208743095,-0.195059671998024,0.172988384962082,0.047911804169416,-0.032238576561213,0.071649096906185,0.017274284735322,0.009576003067195,0.091933928430080,-0.267839014530182));
res += mul(Get(s3,dx,0), float4x4(0.012507271021605,0.110945135354996,-0.077464096248150,0.000481149705593,0.009282352402806,0.204820066690445,0.030499827116728,-0.011669699102640,0.023528637364507,-0.088092446327209,-0.023509744554758,-0.073430180549622,-0.046733736991882,-0.039524823427200,0.131256923079491,-0.066552020609379));
res += mul(Get(s3,dx,dy), float4x4(0.024381840601563,-0.146513327956200,0.017500853165984,0.092531308531761,0.075636103749275,0.037393979728222,-0.116801179945469,0.047219939529896,-0.005923865828663,-0.016212748363614,0.044990178197622,0.072704583406448,-0.170617327094078,0.045486856251955,0.006612818688154,-0.147411555051804));
return max(float4(0,0,0,0), res);
}