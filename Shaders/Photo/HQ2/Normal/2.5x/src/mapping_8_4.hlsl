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
res += mul(Get(s0,-dx,-dy), float4x4(-0.002269778400660,0.029388770461082,-0.014585665427148,-0.001880669151433,-0.002510610036552,0.001026225741953,0.077083073556423,0.001488717738539,-0.011895451694727,0.004057631827891,0.067444719374180,0.000904528656974,0.008867698721588,0.012764942832291,0.002952961018309,-0.000730056373868));
res += mul(Get(s0,-dx,0), float4x4(0.011664899066091,0.004123939666897,0.097851261496544,0.001662455382757,0.015781879425049,-0.000428004947025,0.012498769909143,-0.002854235470295,0.001793397124857,-0.003615152090788,0.041508130729198,0.000210875368793,0.019258134067059,0.006318223197013,0.025718772783875,-0.003114725230262));
res += mul(Get(s0,-dx,dy), float4x4(-0.007779691368341,0.005652870517224,0.028785875067115,0.000082281563664,0.016704032197595,0.000276595732430,0.008132996968925,0.001510183908977,0.009094154462218,0.004437344614416,-0.054220989346504,-0.003014279529452,0.012101766653359,0.010053551755846,0.031224444508553,0.000384848914109));
res += mul(Get(s0,0,-dy), float4x4(-0.010553834959865,0.030177703127265,-0.130466505885124,0.010136285796762,0.009737689048052,-0.001416204031557,0.056101843714714,-0.002203502692282,0.004465787205845,0.005267813801765,0.015189128927886,0.000705510727130,0.016983088105917,0.006501423660666,-0.080768279731274,0.000554550671950));
res += mul(Get(s0,0,0), float4x4(-0.007270760834217,-0.017286838963628,0.084180772304535,0.005315624643117,-0.017684541642666,0.028154116123915,-0.013675506226718,0.017597841098905,0.008908194489777,-0.003458771621808,-0.013541279360652,-0.000059907142713,0.013330909423530,-0.008189124055207,-0.067505113780499,0.003303690347821));
res += mul(Get(s0,0,dy), float4x4(0.000816992367618,-0.000640908663627,-0.046315412968397,-0.002895913552493,0.002264199778438,-0.008086059242487,0.071224480867386,-0.002586083719507,0.006455367431045,0.002199530368671,-0.069393210113049,-0.001034347922541,0.025856096297503,-0.022071564570069,0.029257545247674,-0.002832652302459));
res += mul(Get(s0,dx,-dy), float4x4(0.017699617892504,0.014824590645730,-0.012386864051223,-0.000301963766105,0.025899989530444,-0.029631854966283,-0.007727019954473,-0.002261880552396,0.018872827291489,-0.008198761381209,-0.037101455032825,-0.001352452440187,0.005231938790530,0.011638214811683,-0.019870813935995,0.001490898430347));
res += mul(Get(s0,dx,0), float4x4(-0.014978913590312,0.024860899895430,0.106674261391163,0.008215835317969,0.041499324142933,-0.010941708460450,-0.019753640517592,-0.004562480840832,0.007938794791698,0.003127764677629,-0.015777200460434,0.003053842810914,-0.018952166661620,0.023866487666965,0.017240544781089,0.006315778940916));
res += mul(Get(s0,dx,dy), float4x4(-0.022745605558157,0.022977974265814,-0.049775689840317,0.000029966520742,0.025708261877298,-0.007413653191179,-0.033382035791874,-0.000004907964467,-0.012587084434927,0.015020441263914,0.003712301841006,0.003267040010542,-0.010829012840986,0.000152349472046,0.022980056703091,0.001854626345448));
res += mul(Get(s1,-dx,-dy), float4x4(0.003136839251965,-0.004744464997202,0.002963948296383,-0.000311930460157,-0.005932832602412,0.009442926384509,0.036631487309933,0.003258559387177,-0.007825946435332,-0.001318532507867,-0.016416538506746,0.002462618518621,0.014929277822375,-0.004562513902783,0.048209466040134,0.000914487580303));
res += mul(Get(s1,-dx,0), float4x4(0.004221038427204,-0.003203606931493,-0.000447568192612,0.000035376848246,0.005511108320206,0.001644524862058,-0.012906204909086,-0.000999196199700,0.027703406289220,-0.027243500575423,-0.066992931067944,-0.004315240308642,-0.000018699522116,0.022677870467305,-0.001433671219274,-0.001125067938119));
res += mul(Get(s1,-dx,dy), float4x4(0.003376564709470,-0.001649501617067,-0.012178067117929,-0.000401945406338,0.008565104566514,-0.002738138195127,0.006686407607049,-0.000193997344468,0.019647518172860,-0.000930761685595,-0.038741074502468,0.001046756166033,0.007468950003386,0.006602304056287,0.067834496498108,0.001483365893364));
res += mul(Get(s1,0,-dy), float4x4(-0.002250215038657,-0.003299879375845,-0.004759268369526,0.000544310722034,0.017211006954312,0.001042927731760,0.001712567755021,-0.001205537817441,0.007508641574532,0.026067756116390,-0.046813488006592,-0.000279374769889,0.016782581806183,-0.028527539223433,0.082218132913113,-0.004174945876002));
res += mul(Get(s1,0,0), float4x4(0.005652007181197,-0.008358225226402,-0.009177721105516,-0.001369808334857,-0.010642399080098,0.025122227147222,-0.044150311499834,0.010333297774196,-0.030515728518367,0.033758774399757,0.030742486938834,0.020741775631905,0.009563457220793,0.005879367701709,-0.098575666546822,0.001046147895977));
res += mul(Get(s1,0,dy), float4x4(0.005041415337473,-0.005548675078899,-0.012243653647602,-0.000692696543410,0.000938408600632,-0.001857259892859,0.049429856240749,0.000605384761002,0.013228462077677,-0.003930901177227,0.143865466117859,-0.002557308645919,-0.000062497616454,-0.010264688171446,0.019368376582861,0.005371580366045));
res += mul(Get(s1,dx,-dy), float4x4(-0.010194735601544,0.007903812453151,0.007757087238133,0.002281368477270,0.026874165982008,-0.025889584794641,-0.006702033337206,-0.005600492469966,0.022876288741827,-0.007790692616254,-0.061141055077314,0.000629533315077,-0.016700360924006,0.002771596657112,0.093421921133995,0.003597120987251));
res += mul(Get(s1,dx,0), float4x4(-0.014036805368960,0.005064351949841,0.005314753390849,0.002449057530612,0.028836039826274,0.005136271007359,-0.015680465847254,0.000291147909593,0.033728215843439,-0.002207887824625,0.040834572166204,-0.004805858712643,-0.025058468803763,0.019996413961053,0.011224528774619,0.003516774158925));
res += mul(Get(s1,dx,dy), float4x4(-0.006719701923430,-0.001321947434917,0.003536858595908,0.000359229714377,0.001651693368331,0.006466039456427,0.039203833788633,0.003697957377881,0.027432747185230,-0.013526252470911,0.042684033513069,0.000319953833241,-0.014958745799959,0.004899455234408,0.011193303391337,0.003711264813319));
res += mul(Get(s2,-dx,-dy), float4x4(-0.000973355781753,0.003498936537653,-0.016345018520951,0.001184995286167,0.002996979979798,0.005390155129135,0.105488508939743,-0.001035418128595,-0.000444390287157,-0.004103794693947,-0.010528556071222,-0.000009247075468,0.013898949138820,-0.014447871595621,0.000582391046919,-0.001666964730248));
res += mul(Get(s2,-dx,0), float4x4(-0.015653591603041,0.008474723435938,0.005651260726154,0.004120923578739,0.010924438945949,0.011801946908236,0.077453993260860,-0.004722900688648,-0.001555173075758,-0.002017951337621,-0.017336070537567,-0.000991475651972,0.033525057137012,-0.010281839407980,0.005637526977807,-0.005747105926275));
res += mul(Get(s2,-dx,dy), float4x4(-0.014978161081672,0.003640312934294,0.000321913190419,0.001361688366160,0.003986015450209,0.009225355461240,0.016593571752310,0.000681543548126,0.007717067375779,-0.001855684095062,0.019169047474861,-0.000122137542348,0.004582592286170,0.017780452966690,-0.022809501737356,0.002697241026908));
res += mul(Get(s2,0,-dy), float4x4(0.008894920349121,-0.002107410458848,0.014653922058642,0.000776125292759,-0.001515770563856,-0.012308276258409,0.038203116506338,-0.002654131967574,0.000541477114893,-0.008760743774474,-0.006144765298814,-0.001420730026439,-0.002404585946351,-0.004852774087340,-0.014142107218504,0.001158505678177));
res += mul(Get(s2,0,0), float4x4(0.006258931476623,0.004859771579504,0.041010815650225,-0.001342035131529,0.007669289596379,-0.009519063867629,-0.066875062882900,0.001678669708781,0.003910403233021,-0.004465199075639,-0.058468941599131,-0.002232997911051,0.005371021106839,-0.020822105929255,-0.005516454111785,0.003025734331459));
res += mul(Get(s2,0,dy), float4x4(-0.004044560249895,0.010404532775283,-0.002841440262273,-0.001062216586433,0.008764745667577,-0.009631021879613,-0.028542829677463,-0.002169127343222,0.003724506823346,-0.011438642628491,0.024854497984052,0.005053083412349,0.017552357167006,-0.015033897943795,-0.009303296916187,-0.003735926235095));
res += mul(Get(s2,dx,-dy), float4x4(0.002853529062122,-0.011130599305034,0.020109113305807,0.001093188184313,-0.004588516429067,0.001826725201681,-0.015331623144448,-0.001427406445146,-0.017147975042462,0.009028837084770,0.025613037869334,0.003524992149323,-0.004728395491838,0.006287826690823,0.006472155451775,0.000714662251994));
res += mul(Get(s2,dx,0), float4x4(0.010331589728594,-0.012614553794265,-0.001576098147780,-0.001477283774875,0.000621563813183,0.002138716634363,-0.018268890678883,-0.000011920914403,-0.030709700658917,0.020948667079210,0.022877916693687,0.006272928789258,-0.002477159257978,0.004444693680853,0.038699321448803,0.001981624867767));
res += mul(Get(s2,dx,dy), float4x4(0.005143509246409,0.003386334981769,-0.054025866091251,0.000970486609731,0.004696305841208,-0.006468029227108,0.004552159458399,-0.001005993923172,-0.025455260649323,0.001333523192443,0.082589134573936,0.003378958441317,-0.000241748901317,-0.004316380247474,0.052244119346142,0.000274375575827));
res += mul(Get(s3,-dx,-dy), float4x4(-0.003279698779806,-0.014631973579526,0.013380924239755,0.003223227104172,0.002158224815503,0.000306147092488,-0.046586845070124,0.002431746106595,0.013532573357224,-0.019364146515727,0.074925594031811,0.000591634772718,-0.001571464468725,0.000112169043859,0.025530736893415,-0.001264438265935));
res += mul(Get(s3,-dx,0), float4x4(0.022242423146963,-0.023914029821754,-0.052723746746778,-0.004596471786499,-0.012137563899159,0.007488673552871,0.048728171736002,0.005775087047368,0.006669472437352,0.011298292316496,-0.068445965647697,-0.000310787785565,0.000795046798885,0.003537061158568,0.037421789020300,0.002945023821667));
res += mul(Get(s3,-dx,dy), float4x4(0.016631342470646,-0.007196354214102,-0.030869051814079,-0.001554543967359,-0.001277040108107,0.003864109748974,0.010746465064585,-0.002789164660498,0.004239809699357,0.004371748771518,-0.033303726464510,0.000376510055503,-0.008276196196675,0.012698050588369,-0.006345489993691,0.000631241244264));
res += mul(Get(s3,0,-dy), float4x4(-0.002772296080366,0.003810456721112,0.047452084720135,-0.001608606544323,-0.003751181298867,0.004930408205837,0.063457340002060,0.005656622350216,0.005894301924855,-0.020589115098119,0.127427965402603,-0.004127115476876,-0.000580226886086,0.009280927479267,0.000192779247300,0.003402269445360));
res += mul(Get(s3,0,0), float4x4(-0.027572721242905,0.022070866078138,0.012933542951941,0.014496073126793,0.020030636340380,-0.009418008849025,0.041117168962955,-0.010033219121397,0.001994533231482,0.025461623445153,-0.063405364751816,0.004418822471052,0.012532876804471,-0.004959728568792,0.065521150827408,-0.001240045879968));
res += mul(Get(s3,0,dy), float4x4(-0.004356045741588,-0.002630886388943,0.054696448147297,-0.000754308188334,0.011378512717783,0.010038196109235,-0.064851604402065,0.004512238316238,-0.010986901819706,0.014119204133749,0.027775587514043,0.003562394296750,0.012014061212540,0.010091545060277,-0.015682788565755,-0.002780346665531));
res += mul(Get(s3,dx,-dy), float4x4(-0.003590174717829,0.004210276529193,0.065395571291447,0.003459230763838,0.004673883318901,-0.004582434892654,0.001783808460459,-0.002258548513055,-0.005552110727876,-0.008300544694066,0.057135604321957,0.000317385594826,0.016310306265950,-0.008479653857648,-0.045473303645849,-0.002110578352585));
res += mul(Get(s3,dx,0), float4x4(-0.004081668797880,0.019945122301579,0.077112033963203,-0.000651665788610,0.004011182114482,0.001972323982045,-0.084358178079128,0.003399322275072,0.021927971392870,-0.000653471332043,-0.035141732543707,-0.004028047434986,0.020932123064995,-0.018484927713871,-0.027486544102430,-0.000851757766213));
res += mul(Get(s3,dx,dy), float4x4(-0.005491717718542,0.008253728970885,-0.000101758436358,-0.000353339826688,0.000208723853575,0.003491837531328,0.042244151234627,0.003956731874496,0.015956407412887,0.003218045458198,0.020293077453971,0.000596741680056,0.020881876349449,-0.011640445329249,-0.049099873751402,-0.002690808381885));
return max(float4(0,0,0,0), res);
}