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
res += mul(Get(s0,-dx,-dy), float4x4(0.092266768217087,0.192449420690536,0.216082096099854,-0.196186870336533,-0.054602887481451,0.329387277364731,0.026032585650682,0.008237833157182,-0.120932333171368,0.056636974215508,0.049245305359364,-0.017424918711185,0.235112026333809,-0.251352190971375,-0.065723396837711,0.019843317568302));
res += mul(Get(s0,-dx,0), float4x4(0.060580544173717,0.122675791382790,0.086470142006874,0.263881504535675,0.184761181473732,0.083907410502434,-0.088613361120224,0.101890183985233,-0.035418428480625,0.018607014790177,-0.006868942640722,0.131347402930260,-0.075020141899586,-0.120231114327908,-0.115916155278683,0.308966338634491));
res += mul(Get(s0,-dx,dy), float4x4(0.054895337671041,-0.085297025740147,-0.039272759109735,0.036599699407816,0.021802950650454,-0.028444824740291,0.054035272449255,-0.267609089612961,-0.009106210432947,0.108257256448269,-0.013814318925142,-0.066142134368420,-0.203150376677513,0.008549145422876,-0.040774039924145,-0.130796015262604));
res += mul(Get(s0,0,-dy), float4x4(-0.159331008791924,-0.086509533226490,-0.073484405875206,-0.202553719282150,0.050741810351610,0.135475024580956,0.103114798665047,0.275690406560898,-0.247972279787064,-0.008877040818334,-0.008159238845110,0.005859017372131,0.040524557232857,-0.142683640122414,0.024439582601190,-0.113738879561424));
res += mul(Get(s0,0,0), float4x4(-0.028080742806196,-0.068402953445911,-0.040390241891146,-0.043645624071360,0.016907807439566,-0.076323539018631,-0.023018989712000,0.066109992563725,-0.006707885768265,-0.155343443155289,0.116463258862495,0.162808924913406,-0.081587649881840,0.055205423384905,0.005129029043019,0.174812436103821));
res += mul(Get(s0,0,dy), float4x4(-0.162654489278793,0.046336911618710,0.121025189757347,-0.009772158227861,-0.012090391479433,0.044307053089142,0.079161204397678,0.024074910208583,-0.122557625174522,0.084619872272015,0.102330371737480,-0.010972980409861,-0.085213199257851,0.100959934294224,0.051527854055166,-0.163018301129341));
res += mul(Get(s0,dx,-dy), float4x4(-0.041423261165619,0.043797809630632,-0.124133177101612,0.027342468500137,-0.249893739819527,-0.201332077383995,0.066847562789917,-0.067044369876385,-0.039122980087996,0.075744599103928,0.077246494591236,-0.086298763751984,0.002032639458776,0.073142826557159,0.096039913594723,0.069390252232552));
res += mul(Get(s0,dx,0), float4x4(-0.106221742928028,-0.163940757513046,-0.126446247100830,-0.076783627271652,0.029186505824327,-0.005181525833905,-0.016506781801581,-0.034175898879766,-0.056872691959143,-0.148889154195786,0.072193086147308,0.016512000933290,0.084636509418488,0.368880391120911,0.239628121256828,0.190190941095352));
res += mul(Get(s0,dx,dy), float4x4(0.086484342813492,-0.226483613252640,0.076950423419476,0.102051980793476,-0.046838060021400,-0.090907298028469,0.145968511700630,-0.199333727359772,0.177300095558167,0.194549664855003,-0.171640783548355,-0.120003633201122,0.157050296664238,0.057026755064726,0.002493677195162,-0.101813241839409));
res += mul(Get(s1,-dx,-dy), float4x4(0.079563021659851,0.126346558332443,-0.037477657198906,-0.079725183546543,-0.018009264022112,-0.026497801765800,-0.209920004010201,0.049099002033472,-0.033039610832930,0.025669870898128,0.285328716039658,0.127321407198906,-0.065362595021725,0.054409042000771,0.010982587933540,0.073466300964355));
res += mul(Get(s1,-dx,0), float4x4(0.141957968473434,0.085023507475853,0.123638473451138,-0.136710509657860,0.014079970307648,0.147300764918327,0.047923400998116,0.078922763466835,-0.069414503872395,-0.029516329988837,-0.085408203303814,-0.131363660097122,-0.215690657496452,-0.040076609700918,0.006377306301147,0.229055553674698));
res += mul(Get(s1,-dx,dy), float4x4(-0.153628483414650,-0.149930492043495,0.026551814749837,-0.068025104701519,-0.041315697133541,0.010272071696818,0.081355303525925,-0.098240800201893,0.156253993511200,-0.026303533464670,0.047513112425804,0.183602437376976,0.073639981448650,-0.092120081186295,-0.061400279402733,-0.135251224040985));
res += mul(Get(s1,0,-dy), float4x4(-0.040634099394083,-0.102806828916073,-0.124439537525177,-0.051853951066732,0.031588539481163,-0.066165186464787,-0.065339624881744,-0.021325794979930,-0.077909409999847,-0.004958085250109,0.057468291372061,-0.190066665410995,-0.066637739539146,0.050759069621563,0.066104196012020,0.012931061908603));
res += mul(Get(s1,0,0), float4x4(0.009426962584257,-0.163045793771744,-0.103775128722191,0.075215548276901,-0.065923854708672,0.234303578734398,0.147836908698082,0.096799485385418,0.008483994752169,-0.066592842340469,0.022707378491759,-0.098639436066151,-0.145286113023758,0.004780208226293,-0.011801386252046,0.189922377467155));
res += mul(Get(s1,0,dy), float4x4(0.096234411001205,0.173952728509903,-0.134996607899666,-0.208633124828339,0.356302350759506,-0.135828718543053,-0.061416041105986,0.096111424267292,0.110142685472965,-0.050038490444422,-0.119361944496632,0.089311808347702,-0.117301329970360,-0.017662581056356,0.047200698405504,-0.123542249202728));
res += mul(Get(s1,dx,-dy), float4x4(-0.116047248244286,-0.060853246599436,0.151925623416901,0.275293618440628,-0.033933300524950,-0.045051779597998,-0.136700376868248,0.166362747550011,0.020048426464200,0.019136657938361,-0.121468640863895,-0.101977884769440,-0.054883487522602,-0.172805353999138,-0.186636865139008,0.038780286908150));
res += mul(Get(s1,dx,0), float4x4(0.197649896144867,-0.198310956358910,0.011559437029064,-0.160639896988869,-0.141762077808380,0.127085953950882,0.038061436265707,0.013861839659512,-0.022200813516974,0.169679358601570,-0.128816187381744,0.094144918024540,-0.013658680953085,-0.033954456448555,0.012792713008821,0.056601345539093));
res += mul(Get(s1,dx,dy), float4x4(0.072695456445217,-0.040900431573391,-0.038038596510887,0.087316758930683,-0.018035683780909,-0.123177692294121,-0.118158064782619,-0.115039616823196,-0.087483555078506,0.073182098567486,0.039620567113161,0.091530337929726,0.046716079115868,-0.079058505594730,-0.062577836215496,-0.085357360541821));
res += mul(Get(s2,-dx,-dy), float4x4(0.088732853531837,0.061689823865891,0.135487854480743,-0.033117208629847,0.018765129148960,-0.154958277940750,0.008186583407223,-0.032179538160563,0.203396096825600,-0.165074869990349,0.019368024542928,0.024200180545449,0.120414413511753,-0.064988374710083,-0.046364746987820,0.038876913487911));
res += mul(Get(s2,-dx,0), float4x4(-0.171306371688843,0.084380574524403,0.149192780256271,-0.226314231753349,-0.017061451449990,0.018469141796231,-0.022731738165021,-0.142528817057610,-0.083446174860001,-0.019259417429566,0.039236601442099,0.041212599724531,-0.150081306695938,-0.021266350522637,0.080210506916046,-0.063523896038532));
res += mul(Get(s2,-dx,dy), float4x4(0.050360228866339,-0.334352135658264,0.153595671057701,-0.132453531026840,-0.119272872805595,0.078006766736507,0.063343368470669,-0.011107548139989,0.034538146108389,0.085586033761501,0.124868206679821,0.129728466272354,0.080778449773788,0.275879532098770,0.056014113128185,-0.011928985826671));
res += mul(Get(s2,0,-dy), float4x4(0.009955416433513,-0.137869209051132,-0.132410362362862,-0.017927646636963,0.038050588220358,-0.097043924033642,0.044389843940735,-0.009973872452974,0.063266560435295,0.047749862074852,0.085829906165600,-0.033652089536190,0.141453042626381,0.111748971045017,-0.029862210154533,-0.115299440920353));
res += mul(Get(s2,0,0), float4x4(-0.123166561126709,-0.082170993089676,0.137255474925041,0.032019790261984,-0.017488051205873,-0.032154612243176,-0.127671152353287,0.030010307207704,0.059832196682692,-0.090065374970436,0.167340710759163,0.007876128889620,-0.122578650712967,0.034841354936361,0.111516788601875,0.069357641041279));
res += mul(Get(s2,0,dy), float4x4(-0.014826294966042,0.054626539349556,0.050847139209509,0.058593567460775,-0.007213941309601,0.131336346268654,-0.012768451124430,0.104082904756069,-0.029332322999835,0.099078245460987,0.029080206528306,0.052664656192064,-0.164058402180672,0.052602402865887,-0.032196063548326,-0.054833550006151));
res += mul(Get(s2,dx,-dy), float4x4(-0.056706648319960,0.080737560987473,0.068454682826996,0.037009883671999,0.058813523501158,0.022581782191992,-0.109132677316666,0.015782205387950,0.025602992624044,-0.086016677320004,0.083180531859398,0.012946310453117,0.006684200372547,-0.105198159813881,-0.020526701584458,0.105990514159203));
res += mul(Get(s2,dx,0), float4x4(0.132720798254013,-0.029003363102674,0.340867489576340,0.160566881299019,-0.103383444249630,-0.025687249377370,0.002677709097043,0.051062222570181,0.128525927662849,-0.033224243670702,-0.036878310143948,-0.109268620610237,0.149451091885567,0.062616758048534,0.176277413964272,0.126395940780640));
res += mul(Get(s2,dx,dy), float4x4(-0.074739374220371,-0.015785647556186,0.178714796900749,0.160969883203506,0.016372829675674,-0.095177888870239,-0.080321349203587,0.075138092041016,0.095286011695862,-0.053351260721684,0.003013391280547,-0.077569983899593,-0.014651838690042,-0.098116941750050,-0.027250962331891,-0.126529842615128));
res += mul(Get(s3,-dx,-dy), float4x4(-0.120100297033787,-0.018647694960237,-0.156788513064384,-0.246495798230171,0.042259663343430,-0.055131100118160,-0.068292088806629,-0.044097099453211,0.083242706954479,0.126146286725998,-0.117517724633217,-0.094856843352318,-0.108612820506096,-0.067571721971035,0.044601239264011,0.140093743801117));
res += mul(Get(s3,-dx,0), float4x4(-0.130263105034828,-0.047669291496277,0.034895792603493,0.081585623323917,0.170319318771362,-0.046349927783012,0.069097369909286,0.111670821905136,0.092780850827694,0.003542046993971,-0.131218105554581,0.026333896443248,0.000061184080550,-0.162592306733131,-0.087193556129932,0.050806403160095));
res += mul(Get(s3,-dx,dy), float4x4(0.029783060774207,-0.011825519613922,0.099378511309624,0.217846587300301,0.039725545793772,-0.071609131991863,-0.130230695009232,-0.007454304024577,0.032665777951479,0.008592534810305,-0.093103930354118,0.109080046415329,0.071479275822639,-0.251676142215729,0.074832744896412,-0.145414963364601));
res += mul(Get(s3,0,-dy), float4x4(0.159414336085320,0.052315458655357,-0.147283434867859,-0.120941907167435,0.008229785598814,0.062114059925079,-0.047726336866617,-0.102269113063812,0.069539502263069,0.035079993307590,0.061052180826664,-0.022962147369981,0.066185057163239,-0.037048313766718,0.047886833548546,-0.005933449603617));
res += mul(Get(s3,0,0), float4x4(0.132306367158890,-0.106707856059074,-0.119446679949760,-0.057047698646784,-0.041204810142517,0.038096621632576,0.037508953362703,-0.072073981165886,-0.405837118625641,0.214557960629463,-0.187308892607689,0.055979147553444,0.014325572177768,0.035203699022532,-0.184488102793694,-0.159631267189980));
res += mul(Get(s3,0,dy), float4x4(-0.027755409479141,0.023558823391795,0.172062262892723,0.018448479473591,0.097513526678085,-0.009060791693628,-0.079900495707989,-0.131097957491875,-0.114884838461876,-0.256559371948242,0.193515628576279,0.160038232803345,-0.147725179791451,-0.116055324673653,-0.081495046615601,-0.173634082078934));
res += mul(Get(s3,dx,-dy), float4x4(0.145634055137634,-0.031452409923077,0.150195613503456,0.001058478606865,-0.020987000316381,0.040213435888290,0.045275479555130,-0.093324825167656,0.070065811276436,0.029301641508937,-0.055481340736151,0.081600040197372,-0.022665681317449,-0.104325041174889,0.040324911475182,0.065938025712967));
res += mul(Get(s3,dx,0), float4x4(-0.041083358228207,0.007026115898043,-0.071932204067707,-0.129827395081520,0.184855386614799,-0.053264226764441,0.087748751044273,-0.036475922912359,-0.058103945106268,-0.160863772034645,0.013556247577071,0.020002700388432,0.038207765668631,-0.328931361436844,0.026901874691248,0.154382243752480));
res += mul(Get(s3,dx,dy), float4x4(-0.075460799038410,-0.087047889828682,0.073125272989273,-0.273781746625900,-0.191133812069893,0.021415805444121,0.013426965102553,0.082223579287529,0.144723296165466,0.103056967258453,-0.023093465715647,-0.163029208779335,-0.020814100280404,0.093201123178005,0.281365424394608,0.188771113753319));
return max(float4(0,0,0,0), res);
}