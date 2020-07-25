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
res += mul(Get(s0,-dx,-dy), float4x4(-0.265413850545883,-0.023901682347059,0.238364934921265,-0.143491864204407,-0.247286647558212,-0.201016291975975,0.064815133810043,0.049863871186972,0.003821607911959,-0.118791215121746,-0.138514325022697,0.044657494872808,-0.097241848707199,0.054142314940691,0.021403489634395,-0.092383705079556));
res += mul(Get(s0,-dx,0), float4x4(0.037831995636225,0.073318004608154,-0.165644943714142,-0.049984950572252,-0.025419065728784,-0.133142232894897,-0.038399126380682,0.051893915981054,-0.038826279342175,0.101440191268921,-0.000740695162676,0.122712574899197,-0.182218626141548,0.069972239434719,-0.083513319492340,-0.018836630508304));
res += mul(Get(s0,-dx,dy), float4x4(-0.026667637750506,-0.013486301526427,0.066406913101673,0.077132575213909,0.122549839317799,-0.031589519232512,0.237781181931496,0.091409862041473,0.014014090411365,0.165432304143906,0.138581812381744,0.174060344696045,0.001102231792174,0.067821025848389,-0.000705735466909,0.028221989050508));
res += mul(Get(s0,0,-dy), float4x4(-0.081316642463207,0.030831288546324,-0.000452614243841,-0.153034135699272,0.020312825217843,0.062011625617743,0.075206421315670,-0.167442664504051,-0.201672762632370,-0.051741983741522,-0.121958777308464,-0.082356832921505,0.020690675824881,0.059766896069050,0.014753891155124,0.339156538248062));
res += mul(Get(s0,0,0), float4x4(0.048453979194164,0.081168144941330,-0.061411816626787,0.023738184943795,0.001514622126706,-0.014597320929170,0.010123885236681,0.018073329702020,0.156766518950462,0.111811287701130,-0.021790536120534,0.097265668213367,0.105384916067123,-0.038769561797380,0.101140759885311,0.120558828115463));
res += mul(Get(s0,0,dy), float4x4(-0.111327245831490,0.054690815508366,-0.123473197221756,0.019622514024377,0.056779596954584,0.003044217126444,0.089464053511620,-0.083952642977238,0.055530391633511,0.088301695883274,0.108364485204220,0.027140505611897,-0.099587202072144,0.035927984863520,0.071979761123657,0.235808521509171));
res += mul(Get(s0,dx,-dy), float4x4(0.123910531401634,-0.187038227915764,-0.064810194075108,-0.080763682723045,-0.139985918998718,-0.048011563718319,-0.011031671427190,-0.057583618909121,0.207688257098198,-0.146472796797752,-0.198355928063393,0.136657133698463,0.082434527575970,-0.235200777649879,-0.033632077276707,0.044866338372231));
res += mul(Get(s0,dx,0), float4x4(0.047463450580835,-0.054421573877335,0.245091080665588,-0.132207542657852,0.151401698589325,-0.207285448908806,0.079190500080585,-0.160394817590714,0.145564720034599,-0.012708899565041,0.064338453114033,0.166795790195465,0.005302752368152,-0.122261784970760,0.162666261196136,0.019274957478046));
res += mul(Get(s0,dx,dy), float4x4(-0.167702034115791,-0.048260603100061,-0.070544913411140,0.030203973874450,-0.091777458786964,0.013995614834130,-0.078169621527195,0.112640708684921,0.000452897103969,0.017347117885947,0.077498540282249,0.143201932311058,-0.081532433629036,0.119726575911045,-0.012135760858655,0.058000601828098));
res += mul(Get(s1,-dx,-dy), float4x4(0.080217644572258,-0.068580709397793,-0.083979152143002,-0.054144263267517,0.046973675489426,-0.198348313570023,-0.008452686481178,-0.069146998226643,-0.045110598206520,0.137393161654472,-0.147978559136391,-0.014770082198083,-0.102019734680653,0.113779000937939,-0.004852712154388,-0.092107564210892));
res += mul(Get(s1,-dx,0), float4x4(0.027275608852506,0.033235520124435,-0.046979092061520,0.127738654613495,-0.063477821648121,-0.055753700435162,-0.040114425122738,0.073509253561497,0.080205827951431,-0.137888208031654,-0.034947693347931,-0.032223749905825,-0.067459776997566,0.025298206135631,0.124428518116474,0.136159926652908));
res += mul(Get(s1,-dx,dy), float4x4(-0.024732759222388,0.155202805995941,0.089620567858219,-0.016471710056067,-0.083799526095390,-0.034699160605669,0.157535031437874,-0.058524079620838,0.017616758123040,-0.086524099111557,-0.108764179050922,0.028301993384957,-0.026467811316252,-0.015172755345702,-0.009606940671802,0.124395988881588));
res += mul(Get(s1,0,-dy), float4x4(0.194472074508667,-0.092141821980476,0.017445918172598,-0.142655193805695,0.026180790737271,-0.059245381504297,0.021163219586015,-0.006703388877213,-0.078384391963482,0.040273066610098,0.020272504538298,0.029275041073561,-0.122467190027237,-0.106825143098831,-0.050077050924301,0.008993247523904));
res += mul(Get(s1,0,0), float4x4(0.062826760113239,-0.099202856421471,0.088834956288338,0.089972548186779,0.184342131018639,-0.060562238097191,-0.044575057923794,0.101818114519119,-0.034890905022621,-0.115791358053684,0.068181999027729,0.237729966640472,-0.001473582233302,0.069770760834217,-0.131951630115509,-0.045183479785919));
res += mul(Get(s1,0,dy), float4x4(-0.011637123301625,-0.050952136516571,0.006043670233339,-0.162760511040688,-0.047272931784391,-0.186182126402855,0.041598036885262,-0.088463723659515,-0.126913174986839,-0.025213148444891,-0.040386997163296,0.122038349509239,0.036033689975739,-0.105811223387718,0.146642416715622,0.052651368081570));
res += mul(Get(s1,dx,-dy), float4x4(0.028701337054372,0.045313369482756,0.257117152214050,-0.189982309937477,-0.103365957736969,0.108499214053154,0.057572800666094,-0.087628908455372,-0.109912253916264,0.240172311663628,-0.051181256771088,-0.133967012166977,-0.099682927131653,0.164746373891830,-0.027669753879309,-0.068474858999252));
res += mul(Get(s1,dx,0), float4x4(0.008724485523999,-0.021717147901654,-0.172916650772095,0.031074149534106,-0.023437490686774,-0.147168740630150,-0.074327901005745,-0.167388334870338,-0.142270073294640,-0.022811954841018,-0.099094949662685,-0.035616025328636,0.114020876586437,0.054167356342077,0.131081983447075,-0.013944310136139));
res += mul(Get(s1,dx,dy), float4x4(0.017954535782337,-0.101754002273083,-0.042985156178474,-0.097141139209270,-0.050325784832239,0.087269254028797,-0.001543665537611,-0.019522752612829,-0.057439997792244,0.115353919565678,-0.112198710441589,-0.046721030026674,-0.164846271276474,0.026271849870682,0.036322105675936,-0.054800584912300));
res += mul(Get(s2,-dx,-dy), float4x4(-0.041608054190874,0.042405903339386,-0.133915454149246,-0.093034297227859,0.207204386591911,0.107716567814350,-0.052566453814507,0.109015882015228,-0.133240833878517,0.033469568938017,-0.150991052389145,0.054780554026365,0.008606867864728,-0.044091913849115,-0.177439689636230,0.041412796825171));
res += mul(Get(s2,-dx,0), float4x4(-0.151199504733086,-0.242754325270653,-0.011032876558602,0.145551413297653,0.204770132899284,-0.057623352855444,0.067938297986984,0.057037737220526,-0.198988184332848,0.052539084106684,-0.156729832291603,0.047819476574659,0.016480321064591,0.008301661349833,-0.045196939259768,0.079782888293266));
res += mul(Get(s2,-dx,dy), float4x4(-0.036256294697523,-0.140460878610611,0.072021283209324,0.009133994579315,-0.101992085576057,0.199074536561966,0.028872890397906,-0.014209492132068,0.240669846534729,0.029804417863488,0.054776169359684,-0.080023787915707,-0.054747954010963,0.188865959644318,0.113601230084896,0.094295740127563));
res += mul(Get(s2,0,-dy), float4x4(-0.142656385898590,0.106604166328907,-0.132826164364815,0.051476657390594,0.032823074609041,-0.115444406867027,0.033182159066200,-0.014336093328893,-0.028637785464525,0.143873959779739,-0.169531658291817,-0.021249180659652,0.075010620057583,0.095800839364529,-0.016238480806351,-0.165269032120705));
res += mul(Get(s2,0,0), float4x4(-0.073259770870209,0.280786573886871,0.099417209625244,-0.138495966792107,-0.028271753340960,-0.000279802276054,0.266278296709061,-0.081076242029667,0.041355226188898,-0.029796289280057,0.251486957073212,0.161100149154663,-0.088538363575935,-0.049787584692240,0.003869812469929,0.047257654368877));
res += mul(Get(s2,0,dy), float4x4(-0.095924198627472,0.055847648531199,0.093405768275261,-0.009234176017344,-0.007562559098005,0.014977227896452,0.144111096858978,-0.228929013013840,0.117271892726421,-0.052605789154768,0.116799503564835,0.119266562163830,-0.082276917994022,-0.063436277210712,-0.099760465323925,-0.088526353240013));
res += mul(Get(s2,dx,-dy), float4x4(-0.093484103679657,0.029044928029180,-0.043714012950659,-0.087166674435139,-0.069443203508854,-0.209843650460243,0.052164953202009,-0.042960818856955,-0.177872031927109,0.070572763681412,-0.209294006228447,-0.062827803194523,0.075159564614296,0.148217275738716,-0.057626429945230,-0.038907978683710));
res += mul(Get(s2,dx,0), float4x4(-0.206721723079681,-0.009604380466044,0.034099452197552,-0.039045527577400,-0.164943337440491,0.083461761474609,-0.009671271778643,-0.188476845622063,0.042632620781660,-0.032765634357929,-0.054762396961451,-0.024238515645266,0.174979805946350,0.283398479223251,-0.129767417907715,0.081449508666992));
res += mul(Get(s2,dx,dy), float4x4(0.053231257945299,0.019696416333318,-0.002694458700716,-0.004565097857267,0.014849573373795,-0.056377802044153,0.003001198405400,0.113567478954792,0.042963728308678,-0.132147237658501,-0.010169085115194,-0.142327114939690,-0.040115796029568,0.017005736008286,0.033364091068506,0.030910713598132));
res += mul(Get(s3,-dx,-dy), float4x4(-0.048194225877523,-0.074901260435581,-0.096213042736053,0.028778143227100,-0.145915970206261,-0.057383608072996,-0.035332493484020,-0.216729745268822,-0.091616339981556,-0.025031825527549,-0.008059832267463,0.012485911138356,0.088616713881493,-0.019504768773913,0.049460947513580,0.014802074059844));
res += mul(Get(s3,-dx,0), float4x4(0.044569451361895,-0.095275759696960,0.068386569619179,0.031866099685431,0.014568840153515,-0.009068009443581,-0.018041182309389,0.022944301366806,0.008192883804440,-0.167838841676712,-0.086883209645748,-0.028788726776838,-0.128827556967735,-0.054550793021917,-0.099249936640263,-0.065784037113190));
res += mul(Get(s3,-dx,dy), float4x4(0.098312325775623,0.102876357734203,0.005576760508120,0.133698835968971,0.133610978722572,-0.036062270402908,0.063751928508282,-0.081163637340069,-0.076248675584793,-0.201142802834511,-0.016517279669642,0.099177494645119,-0.059683356434107,0.121530942618847,-0.002083546947688,0.063753180205822));
res += mul(Get(s3,0,-dy), float4x4(0.086093597114086,0.032015338540077,0.197417080402374,-0.009663927368820,-0.058015417307615,0.107123039662838,0.087215885519981,0.123491413891315,-0.038155786693096,-0.055606797337532,0.080680102109909,0.085894852876663,-0.060819465667009,-0.058769647032022,0.098204560577869,0.087153986096382));
res += mul(Get(s3,0,0), float4x4(0.020001232624054,0.150454103946686,0.041664954274893,-0.126329764723778,-0.068308167159557,0.022445313632488,-0.131328165531158,-0.082637250423431,-0.088262319564819,0.072328664362431,-0.024449951946735,0.198924630880356,0.063673101365566,0.054177787154913,0.029154784977436,0.097603268921375));
res += mul(Get(s3,0,dy), float4x4(-0.072548240423203,-0.190694510936737,-0.179076015949249,-0.134908393025398,-0.098518364131451,-0.133337527513504,0.036296177655458,0.011176763102412,-0.046504829078913,0.007841781713068,0.050772596150637,-0.053478434681892,0.050530452281237,0.077764384448528,-0.028451062738895,0.029313281178474));
res += mul(Get(s3,dx,-dy), float4x4(0.064055323600769,0.068544402718544,0.000400591030484,-0.151234224438667,-0.028324957937002,-0.062862627208233,0.000790806079749,-0.092547498643398,0.369942694902420,-0.208653688430786,-0.141894653439522,0.125369623303413,0.011714362539351,0.080601930618286,-0.097290508449078,0.062433183193207));
res += mul(Get(s3,dx,0), float4x4(-0.012112418189645,-0.035084221512079,0.044657412916422,-0.093178831040859,-0.020888974890113,-0.101896636188030,-0.035137567669153,-0.067757673561573,0.349631696939468,-0.172872439026833,-0.103501714766026,-0.222388818860054,-0.029895082116127,-0.080838836729527,0.002933656098321,-0.068649776279926));
res += mul(Get(s3,dx,dy), float4x4(0.146397203207016,0.046086642891169,-0.007701864466071,0.043410133570433,0.013874530792236,0.053672853857279,0.054629493504763,-0.026101045310497,0.101103082299232,0.077959425747395,-0.319385200738907,0.051892604678869,-0.095954932272434,0.054529089480639,0.061476659029722,-0.114045880734921));
return max(float4(0,0,0,0), res);
}