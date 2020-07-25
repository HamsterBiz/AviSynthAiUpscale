sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float3 res = float3(0.0903415754437447,0.0907281041145325,0.0907344594597816);
res += mul(Get(s0,-dx,-dy), float4x3(-0.0013625790597871,0.0022072279825807,-0.0027074036188424,0.0036144431214780,-0.0058488030917943,-0.0054857633076608,-0.0004834487044718,0.0029808408580720,0.0021647601388395,0.0025713942013681,0.0052992277778685,0.0090519273653626));
res += mul(Get(s1,-dx,-dy), float4x3(-0.0062828441150486,-0.0038904622197151,0.0006077933358029,-0.0053481874056160,0.0016964371316135,-0.0009287833236158,0.0062323301099241,0.0055237724445760,0.0039518447592854,-0.0040991511195898,0.0017243160400540,0.0023606684990227));
res += mul(Get(s2,-dx,-dy), float4x3(0.0222742985934019,0.0231549888849258,0.0219082999974489,-0.0015993281267583,-0.0059054414741695,-0.0079918056726456,-0.0117921819910407,-0.0072470568120480,-0.0047915307804942,-0.0050053251907229,-0.0028163045644760,-0.0039220135658979));
res += mul(Get(s3,-dx,-dy), float4x3(0.0027684450615197,0.0012742609251291,-0.0016045873053372,0.0037828921340406,-0.0014700199244544,-0.0033810886088759,0.0116050876677036,0.0100392326712608,0.0097801163792610,0.0008759347256273,0.0036914921365678,0.0006180893979035));
res += mul(Get(s4,-dx,-dy), float4x3(0.0078127803280950,-0.0107984058558941,-0.0101868454366922,-0.0101767042651772,-0.0045577394776046,-0.0027602766640484,0.0232081301510334,0.0064147957600653,0.0005741017521359,0.0044517787173390,0.0024988516233861,0.0006454215617850));
res += mul(Get(s5,-dx,-dy), float4x3(0.0047818366438150,0.0116729177534580,0.0189816337078810,0.0038512484170496,0.0032889142166823,0.0033089418429881,-0.0010860270122066,-0.0034358766861260,-0.0026059395167977,-0.0068324571475387,-0.0059572472237051,-0.0063038561493158));
res += mul(Get(s0,-dx,0), float4x3(0.0068795043043792,0.0102817546576262,-0.0003432082594372,-0.0096138212829828,0.0015033013187349,0.0109928809106350,-0.0022008158266544,-0.0006425919127651,0.0162950474768877,0.0053220363333821,0.0029418263584375,0.0047358497977257));
res += mul(Get(s1,-dx,0), float4x3(-0.0059726578183472,-0.0091481041163206,-0.0147060668095946,-0.0265787448734045,-0.0391224175691605,-0.0283700805157423,-0.0101551460102201,-0.0002388279826846,-0.0012110926909372,0.0157176088541746,-0.0073829237371683,-0.0093742413446307));
res += mul(Get(s2,-dx,0), float4x3(0.0182640738785267,0.0197319164872169,0.0190842282027006,0.0023451207671314,0.0118668349459767,0.0085394335910678,-0.0119677018374205,-0.0169749334454536,-0.0169219505041838,-0.0176615249365568,-0.0150763057172298,-0.0043829921633005));
res += mul(Get(s3,-dx,0), float4x3(0.0026201114524156,-0.0001019205083139,-0.0002771953004412,0.0041860556229949,0.0126330126076937,0.0138108348473907,0.0128079457208514,0.0054250312969089,0.0120729971677065,-0.0024968339130282,-0.0062938206829131,0.0019198547815904));
res += mul(Get(s4,-dx,0), float4x3(0.0072744432836771,0.0017670316156000,0.0044750287197530,-0.0211117789149284,-0.0148866605013609,-0.0106092151254416,0.0470819473266602,0.0445751883089542,0.0426305234432220,-0.0093757510185242,0.0051156957633793,0.0006102326442488));
res += mul(Get(s5,-dx,0), float4x3(-0.0183814354240894,-0.0157188083976507,-0.0002034823119175,0.0120948869735003,0.0107551608234644,0.0136873191222548,-0.0086918361485004,-0.0048788813874125,0.0139695564284921,-0.0132367219775915,-0.0108790230005980,-0.0080986535176635));
res += mul(Get(s0,-dx,dy), float4x3(-0.0052153416909277,-0.0053985961712897,-0.0024830030743033,0.0148932868614793,0.0048858937807381,-0.0143110826611519,-0.0025290311314166,-0.0038592014461756,-0.0194020774215460,0.0008203698671423,0.0017392765730619,0.0038062524981797));
res += mul(Get(s1,-dx,dy), float4x3(0.0037113926373422,0.0022007077932358,0.0002989913627971,-0.0040116524323821,-0.0061151846311986,-0.0097253322601318,-0.0008176509290934,-0.0069060572423041,0.0016241933917627,-0.0047672376967967,-0.0017808480188251,0.0082390401512384));
res += mul(Get(s2,-dx,dy), float4x3(0.0292991958558559,0.0281666684895754,0.0266691949218512,-0.0068625924177468,-0.0018785997526720,-0.0022325555328280,0.0015314053744078,0.0021859749685973,-0.0045618945732713,0.0017389963613823,-0.0024487792979926,-0.0171728227287531));
res += mul(Get(s3,-dx,dy), float4x3(-0.0033598786685616,0.0026687954086810,0.0043250690214336,0.0014897959772497,0.0004936559125781,-0.0042469855397940,0.0024735156912357,0.0189197640866041,0.0044299950823188,-0.0010657709790394,-0.0009795041987672,-0.0081563182175159));
res += mul(Get(s4,-dx,dy), float4x3(0.0034282023552805,0.0071621397510171,0.0094710802659392,-0.0017756941961125,-0.0032719529699534,-0.0195546131581068,0.0012289563892409,0.0108442334458232,0.0275593586266041,-0.0093870768323541,-0.0100891217589378,-0.0067476355470717));
res += mul(Get(s5,-dx,dy), float4x3(0.0066610723733902,-0.0014201279263943,-0.0099355587735772,-0.0009853033116087,-0.0001608327438589,0.0058624185621738,-0.0022411032114178,-0.0008878000662662,-0.0046856664121151,-0.0056189126335084,-0.0060902149416506,-0.0109540810808539));
res += mul(Get(s0,0,-dy), float4x3(0.0286845844238997,0.0029417476616800,-0.0002869685413316,-0.0031725661829114,-0.0046631242148578,-0.0016394176054746,0.1259385347366333,-0.0087930895388126,-0.0345907993614674,-0.0633315369486809,0.0241059139370918,0.0332691520452499));
res += mul(Get(s1,0,-dy), float4x3(-0.0109375473111868,-0.0031802169978619,-0.0049220821820199,0.0475891567766666,-0.0408408306539059,-0.0290618054568768,-0.0576709955930710,0.0081166317686439,0.0068052317947149,0.0112849790602922,0.0091860201209784,0.0034564193338156));
res += mul(Get(s2,0,-dy), float4x3(-0.0770414322614670,-0.0615310892462730,-0.0498747453093529,0.0044359546154737,0.0101494444534183,0.0021439462434500,0.0053318664431572,0.0132975466549397,0.0162649676203728,0.0809312015771866,-0.0016348328208551,-0.0183242782950401));
res += mul(Get(s3,0,-dy), float4x3(-0.0281742308288813,-0.0122760916128755,-0.0011820722138509,0.0540562272071838,-0.0028039361350238,-0.0168776623904705,-0.0331268981099129,0.0373674184083939,0.0479383692145348,0.0658934116363525,-0.0084545509889722,-0.0218173936009407));
res += mul(Get(s4,0,-dy), float4x3(-0.0078618703410029,-0.0039818910881877,0.0024065508041531,0.0367187410593033,0.0215923916548491,0.0113423950970173,-0.0074233831837773,0.0049753240309656,0.0034635136835277,-0.0248377751559019,-0.0012176568852738,0.0042106094770133));
res += mul(Get(s5,0,-dy), float4x3(-0.0565415844321251,-0.0011181519366801,0.0028081682976335,-0.0251626893877983,-0.0031462709885091,0.0030001732520759,-0.0152535019442439,-0.0383720435202122,0.0177280474454165,0.0558429099619389,0.0256021004170179,0.0110685499384999));
res += mul(Get(s0,0,0), float4x3(-0.0548322387039661,-0.0653666704893112,0.0105111589655280,-0.0411069951951504,0.0333635918796062,0.0173617806285620,0.3125870525836945,0.4007413387298584,0.3649055361747742,0.0246830880641937,0.0319289192557335,-0.0265415590256453));
res += mul(Get(s1,0,0), float4x3(-0.0938474088907242,-0.0887719467282295,-0.0475252419710159,0.0227605104446411,0.1328575015068054,0.1517569124698639,-0.0094095189124346,0.1012685298919678,-0.0513472445309162,0.0948248729109764,-0.0340920835733414,-0.0589620843529701));
res += mul(Get(s2,0,0), float4x3(-0.0483669377863407,-0.0669745579361916,-0.0695203691720963,0.0381509661674500,-0.0374823175370693,-0.0360414907336235,0.0530463233590126,0.0422472134232521,0.0085289198905230,0.2329998314380646,0.3112494647502899,0.2417422533035278));
res += mul(Get(s3,0,0), float4x3(-0.0662434250116348,-0.0471951663494110,-0.0332418233156204,0.1398792862892151,0.1779056936502457,0.1410479396581650,0.0242601502686739,-0.0267422944307327,-0.0765212476253510,0.1582745909690857,0.2184751033782959,0.1919147521257401));
res += mul(Get(s4,0,0), float4x3(-0.0382658615708351,0.0624938122928143,0.0540547780692577,0.1918778419494629,0.1846106946468353,0.1031516790390015,0.0172159653156996,-0.0010013933060691,-0.0113156381994486,0.0295062251389027,0.0215945336967707,-0.0519039258360863));
res += mul(Get(s5,0,0), float4x3(0.0751359611749649,0.0020531837362796,-0.0975739732384682,-0.0379393771290779,-0.0688923969864845,-0.0531013794243336,-0.0515239462256432,-0.0543460287153721,0.1121179759502411,0.0968782231211662,0.1325387954711914,0.1062462329864502));
res += mul(Get(s0,0,dy), float4x3(0.0023203578311950,0.0194173082709312,0.0145153310149908,0.0160085316747427,0.0342546552419662,-0.0349488221108913,-0.0048412908799946,0.0207634773105383,0.1084403991699219,-0.0073197833262384,-0.0094947433099151,0.0009918877622113));
res += mul(Get(s1,0,dy), float4x3(-0.0016559815267101,-0.0098664462566376,-0.0454647392034531,0.0333578772842884,0.0282148718833923,-0.0129406256601214,0.0121893789619207,0.0027189874090254,-0.0410120859742165,0.0209827814251184,-0.0264704674482346,-0.0556172989308834));
res += mul(Get(s2,0,dy), float4x3(-0.0379170328378677,-0.0417531877756119,-0.0476432107388973,-0.0032151085324585,0.0076433205977082,0.0410115234553814,-0.0123348450288177,-0.0095524108037353,0.0238779969513416,-0.0278036780655384,-0.0173837002366781,0.0689968019723892));
res += mul(Get(s3,0,dy), float4x3(0.0013400067109615,-0.0156537368893623,-0.0457507632672787,-0.0219022389501333,-0.0146575858816504,0.0407405234873295,0.0305900238454342,0.0605272650718689,0.0545689985156059,-0.0109717594459653,0.0033782045356929,0.0467178598046303));
res += mul(Get(s4,0,dy), float4x3(0.0071909059770405,-0.0051776529289782,-0.0555230528116226,-0.0279501751065254,-0.0170450489968061,0.0775090381503105,-0.0024721031077206,0.0035602354910225,0.0095168389379978,0.0053808502852917,-0.0025530247949064,0.0023476807400584));
res += mul(Get(s5,0,dy), float4x3(-0.0054438007064164,-0.0078023988753557,0.0298866126686335,-0.0052988510578871,-0.0017966092564166,-0.0127936387434602,0.0051177302375436,0.0104996655136347,0.0192906931042671,0.0125859770923853,0.0168657470494509,0.0437011942267418));
res += mul(Get(s0,dx,-dy), float4x3(-0.0228296183049679,0.0060065654106438,0.0063671674579382,0.0052956468425691,-0.0053196069784462,-0.0063636843115091,0.0464822947978973,0.0046745263971388,-0.0174474585801363,-0.0584131963551044,0.0336921736598015,0.0316708348691463));
res += mul(Get(s1,dx,-dy), float4x3(0.0071340873837471,-0.0009338248055428,-0.0016867214580998,-0.0040963697247207,-0.0130368582904339,-0.0085303671658039,0.0126850148662925,-0.0039829919114709,-0.0008779484778643,-0.0026697241701186,0.0068405317142606,0.0053335488773882));
res += mul(Get(s2,dx,-dy), float4x3(0.0055913929827511,0.0101013984531164,0.0160588137805462,0.0076169958338141,0.0011680522002280,0.0013225161237642,-0.0092965774238110,0.0064680478535593,0.0080315284430981,0.0312626399099827,0.0044722589664161,-0.0082541303709149));
res += mul(Get(s3,dx,-dy), float4x3(-0.0002487185411155,0.0028356388211250,0.0034529152326286,0.0377908386290073,0.0021407601889223,-0.0081370640546083,-0.0490151606500149,0.0157336592674255,0.0355356372892857,0.0306303557008505,0.0018376845400780,-0.0114497113972902));
res += mul(Get(s4,dx,-dy), float4x3(0.0220871660858393,0.0060375551693141,-0.0011810658033937,0.0060679260641336,0.0070880153216422,0.0036019466351718,-0.0038960692472756,-0.0003651559236459,0.0000778776447987,0.0128689082339406,-0.0041987332515419,0.0014044117415324));
res += mul(Get(s5,dx,-dy), float4x3(0.0143058029934764,-0.0053341966122389,-0.0068604303523898,-0.0159183517098427,-0.0088430913165212,-0.0060762055218220,-0.0169533789157867,-0.0244813077151775,0.0093382392078638,0.0041531245224178,0.0017017341451719,-0.0001037871043081));
res += mul(Get(s0,dx,0), float4x3(0.0477900728583336,0.0091379703953862,-0.0447582937777042,-0.0281920339912176,0.0171282906085253,0.0203126985579729,0.1063007414340973,0.1483949422836304,0.1235774010419846,0.0281311478465796,0.0238439962267876,-0.0399634726345539));
res += mul(Get(s1,dx,0), float4x3(0.0074553270824254,0.0117298727855086,0.0106873745098710,-0.0448978058993816,-0.0422281734645367,-0.0280971340835094,0.0007500880747102,-0.0135859958827496,-0.0050578545778990,0.0708908885717392,-0.0213560052216053,-0.0404696501791477));
res += mul(Get(s2,dx,0), float4x3(0.0094996849074960,0.0074471891857684,-0.0038665784522891,-0.0295375287532806,0.0008504822617397,0.0210635717958212,-0.0098133450374007,-0.0231422185897827,-0.0286667887121439,0.1012670993804932,0.1271129846572876,0.0883128643035889));
res += mul(Get(s3,dx,0), float4x3(-0.0112456539645791,-0.0197818093001842,-0.0111918253824115,0.0956895351409912,0.1368061900138855,0.1051998361945152,-0.0700621232390404,-0.1292308270931244,-0.1483625471591949,0.0642015859484673,0.0881014019250870,0.0718499794602394));
res += mul(Get(s4,dx,0), float4x3(-0.0271869841963053,-0.0378387831151485,0.0133855044841766,0.0284570548683405,0.0384457856416702,0.0199076812714338,-0.0053692548535764,-0.0074873138219118,-0.0116082411259413,-0.0388921983540058,0.0026446371339262,0.0248531568795443));
res += mul(Get(s5,dx,0), float4x3(0.0111967781558633,0.0305279381573200,0.0363352447748184,-0.0058395224623382,-0.0182975009083748,-0.0189164355397224,-0.0486661829054356,-0.0220383610576391,0.0819428414106369,0.0143682491034269,0.0151765970513225,0.0155815342441201));
res += mul(Get(s0,dx,dy), float4x3(0.0028661747928709,0.0009692482999526,0.0137088177725673,0.0152103416621685,0.0155417118221521,-0.0243652723729610,-0.0163029972463846,-0.0083855679258704,0.0262863524258137,-0.0067953006364405,-0.0051683099009097,0.0073367268778384));
res += mul(Get(s1,dx,dy), float4x3(0.0015519688604400,0.0012207063846290,0.0041266861371696,0.0108445482328534,0.0083743864670396,-0.0083242757245898,-0.0038301674649119,0.0069751087576151,0.0218624044209719,0.0103660803288221,-0.0203908439725637,-0.0148264160379767));
res += mul(Get(s2,dx,dy), float4x3(0.0016727329930291,0.0011742713395506,0.0043134079314768,0.0108402706682682,0.0094214491546154,-0.0189433693885803,-0.0059463568031788,-0.0061035351827741,-0.0022366605699062,-0.0225915536284447,-0.0184221118688583,0.0268678665161133));
res += mul(Get(s3,dx,dy), float4x3(0.0101254601031542,0.0072798081673682,0.0031396746635437,-0.0159852113574743,-0.0134206460788846,0.0218613613396883,-0.0055317464284599,-0.0203431602567434,-0.0021841309498996,-0.0097158513963223,-0.0036684668157250,0.0167144481092691));
res += mul(Get(s4,dx,dy), float4x3(-0.0023860486689955,-0.0057499082759023,0.0064356382936239,-0.0163053870201111,-0.0137392804026604,0.0052713933400810,0.0009130502585322,-0.0017342882929370,-0.0022635245695710,0.0094376830384135,0.0114316027611494,-0.0117471739649773));
res += mul(Get(s5,dx,dy), float4x3(-0.0070696370676160,-0.0007530761067756,0.0114765083417296,-0.0004286047478672,0.0020713889971375,0.0002856505743694,0.0050099063664675,0.0073828035965562,0.0028440423775464,-0.0004410612455104,0.0014811236178502,0.0018947389908135));
return float4(res, 0);
}