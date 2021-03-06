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
res += mul(Get(s0,-dx,-dy), float4x4(-0.103691890835762,-0.163663581013680,-0.047376856207848,0.011884442530572,-0.170653864741325,0.171006560325623,-0.088680975139141,-0.103832691907883,-0.085648626089096,-0.004012662451714,0.043885312974453,0.064814947545528,0.068872950971127,-0.120916441082954,-0.136875450611115,-0.080298162996769));
res += mul(Get(s0,-dx,0), float4x4(0.070448420941830,-0.154839530587196,0.047939233481884,0.210898727178574,0.143940955400467,-0.155482083559036,-0.066891856491566,-0.003068333724514,0.068306751549244,0.130278974771500,0.087971948087215,-0.132607400417328,0.003287061816081,-0.129043102264404,0.078423790633678,0.124400630593300));
res += mul(Get(s0,-dx,dy), float4x4(0.117031916975975,0.173741593956947,0.086202330887318,-0.040374860167503,-0.073781229555607,0.017602240666747,0.024006590247154,0.111212544143200,-0.162696138024330,0.256714552640915,-0.178270742297173,-0.023732325062156,0.072195693850517,-0.110790394246578,-0.054199274629354,-0.157957181334496));
res += mul(Get(s0,0,-dy), float4x4(-0.128482744097710,0.010244140401483,-0.109006263315678,0.144944325089455,0.122824281454086,0.086810596287251,0.169418931007385,-0.214393660426140,0.059326548129320,-0.116599880158901,0.170911222696304,-0.076301023364067,-0.166034296154976,0.001355458865874,0.192280426621437,0.093987889587879));
res += mul(Get(s0,0,0), float4x4(0.156203463673592,-0.173353999853134,0.164591923356056,0.095824196934700,0.203769847750664,0.167636215686798,-0.041824050247669,0.205227971076965,-0.097045339643955,-0.095867030322552,0.095466352999210,-0.012331306934357,-0.141964197158813,-0.048250891268253,0.109172709286213,0.006486696656793));
res += mul(Get(s0,0,dy), float4x4(0.021782075986266,-0.162664055824280,0.209211617708206,-0.087486304342747,-0.171718358993530,0.149923533201218,-0.047611843794584,0.020779708400369,-0.129816889762878,-0.041527215391397,-0.000104265323898,0.067667588591576,0.021997001022100,-0.228904247283936,0.081702053546906,-0.112348705530167));
res += mul(Get(s0,dx,-dy), float4x4(-0.098350234329700,-0.029842352494597,0.145473644137383,-0.121627368032932,-0.010123271495104,0.142849028110504,-0.050553485751152,-0.034769225865602,0.257242172956467,0.029863016679883,-0.038741338998079,-0.055997949093580,-0.075017921626568,0.022377848625183,0.219906479120255,-0.031921014189720));
res += mul(Get(s0,dx,0), float4x4(-0.110624060034752,0.102943837642670,-0.120253100991249,0.041688825935125,0.111483871936798,-0.096336513757706,-0.006095708347857,-0.083160959184170,0.072639465332031,0.035299565643072,0.003609050763771,-0.015029367059469,0.005950674414635,-0.065709948539734,-0.034461788833141,0.172883719205856));
res += mul(Get(s0,dx,dy), float4x4(-0.040235217660666,-0.048461146652699,-0.237911120057106,0.036028910428286,-0.026536526158452,0.001259993645363,0.062305342406034,-0.046280931681395,0.053068812936544,-0.103477247059345,-0.011543943546712,-0.008623010478914,-0.065554507076740,-0.125464707612991,-0.139667555689812,-0.104316018521786));
res += mul(Get(s1,-dx,-dy), float4x4(-0.107103548943996,-0.149086117744446,0.024629116058350,-0.024639612063766,0.008686467073858,0.101324446499348,0.077372051775455,-0.148300603032112,-0.019556531682611,-0.031845282763243,-0.033061608672142,0.077180460095406,-0.024889921769500,-0.071964628994465,-0.128481179475784,0.123072206974030));
res += mul(Get(s1,-dx,0), float4x4(-0.008259361609817,0.238670572638512,0.123029187321663,0.110326625406742,-0.051223106682301,0.006026420276612,-0.187086686491966,-0.107151068747044,0.096797697246075,0.102926485240459,-0.019496362656355,0.152409031987190,-0.163756534457207,0.029972298070788,-0.044560719281435,0.212452828884125));
res += mul(Get(s1,-dx,dy), float4x4(0.038792856037617,0.022423924878240,-0.065507978200912,-0.014459412544966,0.103505045175552,-0.084731489419937,0.082269892096519,0.161193117499352,0.077778033912182,0.018166847527027,-0.078644745051861,-0.168794676661491,0.012194899842143,0.013852567411959,-0.044503580778837,-0.297764837741852));
res += mul(Get(s1,0,-dy), float4x4(-0.001302259974182,-0.076969854533672,-0.157858625054359,-0.210345834493637,-0.068192407488823,0.064167849719524,0.017452526837587,-0.048993211239576,-0.041992321610451,-0.024673217907548,-0.046312727034092,0.099572598934174,0.096267946064472,-0.201075643301010,-0.033064343035221,0.203882962465286));
res += mul(Get(s1,0,0), float4x4(-0.039742890745401,0.019720219075680,-0.080745302140713,0.162149474024773,-0.052581932395697,0.011258064769208,0.264224886894226,-0.056884769350290,0.008228457532823,0.006051871925592,0.185569047927856,-0.159030541777611,-0.074341416358948,-0.087389647960663,0.168578028678894,-0.067172892391682));
res += mul(Get(s1,0,dy), float4x4(-0.055695291608572,-0.025650557130575,0.048668604344130,-0.114437714219093,-0.010372873395681,-0.186955511569977,0.089402087032795,-0.044704470783472,-0.041424576193094,-0.019317505881190,-0.258639127016068,-0.067156717181206,-0.129297196865082,-0.094359681010246,-0.194644123315811,0.056651305407286));
res += mul(Get(s1,dx,-dy), float4x4(-0.005962559953332,-0.020397216081619,0.083536624908447,-0.038857728242874,-0.216673299670219,0.199361860752106,-0.024722065776587,0.093000769615173,0.170440152287483,0.136479496955872,-0.067065641283989,-0.119225658476353,-0.100623451173306,0.036310110241175,0.064906254410744,-0.091371074318886));
res += mul(Get(s1,dx,0), float4x4(0.064703859388828,-0.013390414416790,0.040767166763544,-0.046636536717415,0.003719211788848,-0.092531003057957,0.104125790297985,0.072453297674656,0.212685808539391,0.016590517014265,-0.100424222648144,0.082169584929943,-0.016548635438085,0.012776082381606,-0.066894076764584,0.002893682103604));
res += mul(Get(s1,dx,dy), float4x4(0.111135005950928,0.245851546525955,-0.051772449165583,-0.224600866436958,-0.179673954844475,0.052937448024750,-0.080448940396309,0.018842052668333,0.063386671245098,-0.005639138165861,0.016892168670893,-0.001586796715856,0.117287352681160,-0.052075762301683,0.136239305138588,-0.200728997588158));
res += mul(Get(s2,-dx,-dy), float4x4(0.033781666308641,0.000192377425265,-0.046015575528145,-0.047875910997391,-0.159460097551346,0.112427100539207,0.011811225675046,0.207465827465057,0.085639134049416,-0.042550250887871,-0.050183217972517,-0.015591717325151,0.126555934548378,-0.204195559024811,0.026159474626184,-0.049919240176678));
res += mul(Get(s2,-dx,0), float4x4(-0.067529186606407,0.109560273587704,-0.035079523921013,0.143724486231804,-0.129536688327789,0.251120507717133,0.121256463229656,0.000230662641115,-0.147570818662643,-0.038535609841347,0.012941113673151,-0.011444740928710,0.105626605451107,-0.049382660537958,-0.059099521487951,-0.053213432431221));
res += mul(Get(s2,-dx,dy), float4x4(0.096954911947250,0.161080837249756,-0.000509108707774,0.029678488150239,-0.123745717108250,-0.237304523587227,0.118020176887512,0.005557469557971,-0.010011229664087,-0.078429229557514,0.063784599304199,-0.005171952303499,-0.034184567630291,-0.013484194874763,0.073166236281395,-0.124583639204502));
res += mul(Get(s2,0,-dy), float4x4(0.117459535598755,-0.074361391365528,-0.025035075843334,-0.000346245506080,-0.032064791768789,0.122581228613853,-0.018687404692173,-0.070214949548244,-0.195626407861710,-0.062554717063904,-0.053035661578178,0.136784553527832,-0.053518742322922,-0.073383174836636,0.070008963346481,0.064444892108440));
res += mul(Get(s2,0,0), float4x4(0.226575762033463,-0.103401586413383,0.051386948674917,0.089594699442387,0.097036622464657,0.053137727081776,0.082040600478649,-0.055124979466200,0.072045356035233,0.165477752685547,0.177449345588684,-0.172740235924721,-0.022991690784693,0.131122559309006,-0.004945101682097,-0.109323881566525));
res += mul(Get(s2,0,dy), float4x4(-0.072863072156906,-0.200798124074936,-0.003951472695917,-0.022734994068742,-0.020969679579139,0.229461669921875,-0.050632968544960,-0.212278246879578,0.067681007087231,0.264310657978058,0.047845978289843,-0.013562079519033,0.269341766834259,0.328468531370163,0.071492366492748,0.109199613332748));
res += mul(Get(s2,dx,-dy), float4x4(-0.129902586340904,-0.058967132121325,0.033921495079994,-0.072150103747845,0.227523788809776,-0.148487478494644,0.112061582505703,0.013555945828557,0.040216892957687,0.068863168358803,-0.068224392831326,-0.146437823772430,-0.100628308951855,-0.081502623856068,0.050675831735134,-0.003301707096398));
res += mul(Get(s2,dx,0), float4x4(0.153559938073158,-0.032635904848576,0.097643010318279,-0.061963409185410,0.050066031515598,-0.067163102328777,0.098599500954151,-0.022503811866045,0.030352940782905,-0.047355655580759,0.124991521239281,0.105288855731487,-0.069860525429249,0.194159612059593,0.083110094070435,0.223064765334129));
res += mul(Get(s2,dx,dy), float4x4(0.157337620854378,-0.220866277813911,0.032063525170088,-0.084103979170322,0.168731048703194,0.017171466723084,0.014745904132724,0.123410277068615,0.041697870939970,0.075655728578568,0.080011174082756,0.007714053150266,-0.045224927365780,0.128858938813210,0.000003084222953,-0.007185736671090));
res += mul(Get(s3,-dx,-dy), float4x4(-0.169920250773430,0.155249148607254,0.090306483209133,0.006593296304345,-0.083586625754833,0.041444957256317,0.074561350047588,-0.126078426837921,0.051614016294479,0.048095133155584,-0.044888939708471,0.153938442468643,0.023472085595131,0.028645344078541,-0.022214442491531,-0.025280894711614));
res += mul(Get(s3,-dx,0), float4x4(0.108342483639717,0.085214294493198,-0.107049569487572,0.059156365692616,0.280886828899384,0.013161169365048,-0.000032985182770,-0.036717001348734,0.014551492407918,0.087382599711418,0.099389933049679,0.045388877391815,0.133372843265533,-0.138658523559570,0.065649822354317,-0.045267563313246));
res += mul(Get(s3,-dx,dy), float4x4(0.093878246843815,-0.100900940597057,0.210525035858154,0.015658138319850,-0.017697591334581,-0.002278389874846,0.060346495360136,0.066711656749249,-0.172218963503838,0.015240985900164,-0.033186741173267,0.258901655673981,-0.115742832422256,0.050176009535789,0.121260449290276,0.279615908861160));
res += mul(Get(s3,0,-dy), float4x4(-0.061047393828630,0.070915661752224,0.061092007905245,-0.103130809962749,-0.022949894890189,-0.060311593115330,0.064778491854668,0.062163859605789,-0.179795011878014,0.019059231504798,-0.155787840485573,0.090826407074928,0.125144362449646,-0.151947394013405,-0.077219218015671,-0.049046121537685));
res += mul(Get(s3,0,0), float4x4(0.039899852126837,0.093500889837742,0.000057285255025,-0.002791529055685,0.042571187019348,-0.006662218365818,0.103975288569927,-0.100719586014748,0.180126547813416,0.167210221290588,-0.022198414430022,0.075302533805370,-0.119903840124607,-0.248170346021652,-0.087199509143829,0.017767770215869));
res += mul(Get(s3,0,dy), float4x4(0.168353095650673,0.042686145752668,0.062498118728399,0.125139072537422,-0.092454694211483,0.097180023789406,0.254726976156235,0.043863374739885,-0.245514482259750,0.107285097241402,0.182978793978691,-0.034816287457943,-0.044896055012941,-0.031212581321597,0.089172676205635,-0.191159397363663));
res += mul(Get(s3,dx,-dy), float4x4(-0.064213007688522,-0.010581331327558,0.232614636421204,-0.012459349818528,-0.075989112257957,-0.045205976814032,0.033816080540419,0.060069631785154,-0.068922825157642,-0.025848407298326,0.067857243120670,-0.080807812511921,0.178984358906746,-0.059579417109489,0.037939246743917,-0.135386168956757));
res += mul(Get(s3,dx,0), float4x4(0.250125259160995,0.069744549691677,-0.035997524857521,0.085907436907291,0.175721883773804,0.174626186490059,-0.068969562649727,0.199784085154533,0.245959460735321,0.170146062970161,0.193610906600952,-0.193575844168663,-0.076313093304634,0.019099777564406,-0.207940593361855,-0.019378593191504));
res += mul(Get(s3,dx,dy), float4x4(0.292443156242371,-0.094208352267742,0.029435886070132,-0.132352799177170,0.094787977635860,-0.026857867836952,0.053451042622328,0.028227228671312,0.059979941695929,0.067614197731018,-0.067357070744038,-0.193167313933372,-0.186144769191742,0.087306581437588,-0.101559676229954,-0.008134415373206));
return max(float4(0,0,0,0), res);
}
