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
res += mul(Get(s0,-dx,-dy), float4x4(0.156072616577148,0.109769865870476,0.009300976060331,0.260895222425461,0.029248360544443,0.034458268433809,0.105937242507935,-0.002441504271701,0.116090312600136,-0.083488330245018,-0.073823407292366,0.044905051589012,0.074598208069801,0.031019715592265,-0.024162031710148,0.074824132025242));
res += mul(Get(s0,-dx,0), float4x4(0.258242756128311,-0.082254342734814,0.033735159784555,0.056310731917620,0.036757510155439,0.048505626618862,-0.049923740327358,0.144544050097466,0.172734335064888,-0.095569714903831,-0.005265892483294,0.079201139509678,-0.098049812018871,0.032836556434631,0.061166424304247,0.002094479510561));
res += mul(Get(s0,-dx,dy), float4x4(-0.192964866757393,0.153197675943375,0.019276820123196,0.122662618756294,-0.068837642669678,0.039114166051149,-0.018834019079804,0.083369746804237,0.036748237907887,0.080231972038746,0.084732018411160,-0.067815288901329,0.119915559887886,-0.011072638444602,-0.096157945692539,0.018007451668382));
res += mul(Get(s0,0,-dy), float4x4(-0.055894456803799,-0.115783236920834,0.188662335276604,0.145859763026237,-0.082166321575642,-0.146305739879608,0.142755016684532,0.089036718010902,-0.053001996129751,0.180168747901917,0.112712770700455,-0.189638391137123,-0.146447062492371,0.004916682373732,0.132581770420074,-0.038259509950876));
res += mul(Get(s0,0,0), float4x4(-0.055732861161232,-0.036371588706970,-0.072823427617550,0.213812902569771,-0.211626663804054,-0.032787065953016,0.042590174823999,0.049358319491148,0.102006502449512,-0.042765237390995,0.046881865710020,0.081160202622414,0.270245969295502,-0.103364728391171,0.057795010507107,-0.044331554323435));
res += mul(Get(s0,0,dy), float4x4(0.020667783915997,0.011661221273243,-0.064876884222031,0.033344399183989,0.059013985097408,-0.149467140436172,-0.073856495320797,-0.024601366370916,-0.194291874766350,-0.153646081686020,-0.040384203195572,0.219467863440514,-0.178926467895508,0.046570576727390,0.023681333288550,-0.051103256642818));
res += mul(Get(s0,dx,-dy), float4x4(0.039618637412786,-0.105471201241016,-0.064130656421185,-0.077325545251369,-0.071428947150707,0.030943661928177,-0.069324068725109,0.032809443771839,0.098561391234398,0.045785538852215,0.083595350384712,0.022455872967839,0.008569186553359,0.108115307986736,0.104608513414860,0.041267640888691));
res += mul(Get(s0,dx,0), float4x4(-0.011301711201668,-0.145590007305145,-0.228180557489395,-0.065900459885597,0.154254958033562,0.101905204355717,0.069257460534573,0.054874613881111,-0.011191747151315,0.103886686265469,-0.158506691455841,-0.014343183487654,-0.109755329787731,-0.093958340585232,-0.033649180084467,-0.078463628888130));
res += mul(Get(s0,dx,dy), float4x4(0.031952731311321,0.006497190799564,0.079516291618347,0.122939072549343,-0.117197901010513,0.033105321228504,0.103366352617741,0.122835323214531,-0.125984385609627,0.025928504765034,-0.269211947917938,-0.077225878834724,0.284637838602066,0.038473699241877,0.253663599491119,0.041301883757114));
res += mul(Get(s1,-dx,-dy), float4x4(0.230972111225128,0.115314573049545,0.106210462749004,0.226103663444519,0.129594907164574,0.116515018045902,-0.026718337088823,0.232085198163986,0.194046095013618,-0.033981800079346,-0.074945360422134,0.018410142511129,0.076562464237213,-0.098560713231564,0.095847629010677,-0.035273388028145));
res += mul(Get(s1,-dx,0), float4x4(0.134907022118568,-0.097159832715988,0.169972896575928,-0.002411718713120,-0.146065443754196,-0.096566163003445,0.042137347161770,0.099364891648293,-0.015294407494366,-0.072051718831062,-0.141394019126892,-0.016546079888940,0.149111762642860,-0.045677527785301,0.029283797368407,-0.017478579655290));
res += mul(Get(s1,-dx,dy), float4x4(0.112105093896389,-0.069799654185772,-0.017117524519563,-0.051735140383244,-0.097737103700638,-0.193764314055443,-0.067030563950539,-0.035258553922176,0.067342802882195,0.012335001491010,0.055986490100622,0.164794251322746,-0.139128744602203,0.155305251479149,0.029826214537024,-0.156705096364021));
res += mul(Get(s1,0,-dy), float4x4(0.106724753975868,-0.001724652713165,0.066066130995750,0.081469163298607,0.002136123133823,0.039883900433779,-0.285382926464081,-0.032022416591644,-0.179910272359848,0.051181770861149,0.047028023749590,-0.180511251091957,0.302444726228714,-0.120581820607185,-0.050020817667246,-0.157395198941231));
res += mul(Get(s1,0,0), float4x4(0.135973110795021,0.190415099263191,0.172287553548813,0.051559280604124,-0.109187312424183,-0.091724835336208,0.056090790778399,0.077812649309635,0.067251689732075,-0.247338533401489,0.016747074201703,0.216381385922432,0.003750293981284,0.063327617943287,0.050128046423197,0.137456461787224));
res += mul(Get(s1,0,dy), float4x4(0.224824070930481,-0.199235036969185,0.095258928835392,0.012934542261064,0.006416393443942,0.043756969273090,-0.067385345697403,0.027958426624537,0.249349653720856,0.070283450186253,0.182584375143051,0.112527526915073,-0.084978736937046,0.017998669296503,-0.054637629538774,0.136213973164558));
res += mul(Get(s1,dx,-dy), float4x4(-0.166138231754303,-0.103190965950489,0.087901517748833,0.010911423712969,-0.030835077166557,-0.041081789880991,0.094912976026535,0.040953844785690,-0.139440640807152,0.089907750487328,0.093357056379318,-0.081012308597565,0.092972449958324,0.203575357794762,-0.049331150949001,0.050540257245302));
res += mul(Get(s1,dx,0), float4x4(0.012101695872843,0.041272349655628,-0.149232968688011,-0.266404569149017,0.044821374118328,0.068935461342335,0.020643014460802,-0.040997393429279,0.244900241494179,0.109581552445889,0.126039475202560,-0.054288372397423,-0.047249630093575,0.134810850024223,0.023910822346807,-0.043773140758276));
res += mul(Get(s1,dx,dy), float4x4(-0.022979920729995,-0.069518662989140,-0.177687689661980,-0.010618678294122,0.102455951273441,0.021456738933921,0.102053433656693,0.021250547841191,0.097588561475277,0.214405179023743,-0.046447370201349,-0.081952117383480,-0.050813961774111,-0.158742547035217,-0.107922978699207,-0.050805129110813));
res += mul(Get(s2,-dx,-dy), float4x4(0.043604180216789,-0.069748602807522,-0.061895478516817,0.117894217371941,0.190765604376793,0.040808815509081,0.087262995541096,-0.117086537182331,-0.086332969367504,0.071788951754570,0.215058982372284,-0.105904333293438,0.002917834790424,0.042249374091625,-0.137628778815269,0.080743439495564));
res += mul(Get(s2,-dx,0), float4x4(0.063154108822346,0.025066394358873,-0.082905359566212,-0.002235106192529,0.094813667237759,0.182914510369301,-0.141643270850182,-0.162049025297165,0.245739743113518,0.161080434918404,-0.114371106028557,0.112762361764908,-0.024559840559959,-0.066028192639351,0.210135892033577,-0.059548776596785));
res += mul(Get(s2,-dx,dy), float4x4(0.044642250984907,0.053190052509308,-0.247884228825569,-0.028610128909349,0.206943467259407,0.033169291913509,-0.047386657446623,-0.098447099328041,0.121715627610683,0.010103438049555,-0.096159726381302,0.059335883706808,0.022964527830482,-0.007233407814056,0.151021420955658,0.008488107472658));
res += mul(Get(s2,0,-dy), float4x4(-0.048354420810938,0.031076798215508,0.065838187932968,-0.073945403099060,-0.207930430769920,0.115199990570545,0.246633738279343,0.090000458061695,-0.057198073714972,-0.081329829990864,0.063048139214516,-0.015652645379305,-0.142929270863533,0.072090588510036,-0.061261791735888,-0.091114729642868));
res += mul(Get(s2,0,0), float4x4(0.030589073896408,0.039776567369699,0.161037966609001,-0.065612427890301,-0.130617290735245,0.086952187120914,0.046675927937031,0.081232532858849,0.094376601278782,0.187859952449799,-0.007003875449300,-0.219583868980408,-0.135437294840813,-0.180749267339706,-0.223554611206055,-0.144582152366638));
res += mul(Get(s2,0,dy), float4x4(-0.134804978966713,0.149564236402512,0.166044130921364,-0.150434896349907,-0.137442454695702,0.063011907041073,-0.049723573029041,0.051737945526838,0.055739089846611,0.104618117213249,-0.058976497501135,0.166036859154701,-0.155498236417770,-0.183965042233467,-0.022073853760958,-0.003649361198768));
res += mul(Get(s2,dx,-dy), float4x4(0.146678954362869,0.052357979118824,-0.095456719398499,0.181790277361870,0.088450625538826,0.030475376173854,0.018276220187545,0.228503033518791,-0.098912045359612,-0.322622835636139,0.089124463498592,0.244913816452026,-0.059101954102516,0.016333667561412,-0.055490713566542,-0.134717315435410));
res += mul(Get(s2,dx,0), float4x4(0.003623666940257,0.117801271378994,-0.043045699596405,0.016490176320076,-0.036307048052549,-0.027529224753380,0.087784238159657,-0.153608947992325,0.015857325866818,-0.008433148264885,0.077072948217392,-0.137470871210098,0.026024760678411,-0.294846117496490,-0.054125409573317,-0.015978209674358));
res += mul(Get(s2,dx,dy), float4x4(0.165955513715744,0.064472459256649,-0.042294055223465,-0.164858892560005,0.069876343011856,0.046726584434509,0.113883875310421,0.098526626825333,0.043561689555645,0.101752690970898,-0.288914769887924,0.105247445404530,-0.055245839059353,0.047337260097265,-0.005464792251587,-0.158639341592789));
res += mul(Get(s3,-dx,-dy), float4x4(0.043662693351507,0.081197150051594,-0.109783783555031,-0.012826550751925,-0.125940620899200,0.136056751012802,0.048855211585760,-0.083396606147289,0.039739497005939,0.138448759913445,-0.043877039104700,-0.037748917937279,0.226424232125282,-0.149955838918686,0.156681060791016,-0.153115421533585));
res += mul(Get(s3,-dx,0), float4x4(0.068922102451324,0.022295724600554,0.185288250446320,-0.182514607906342,0.147275239229202,0.097510479390621,0.140425845980644,-0.008928742259741,0.155143558979034,0.013301738537848,0.088078163564205,0.083437167108059,0.163652375340462,0.086405821144581,-0.275080651044846,0.052223995327950));
res += mul(Get(s3,-dx,dy), float4x4(0.041114423424006,-0.003542875871062,-0.112154185771942,0.115104116499424,-0.010426509194076,-0.028804928064346,-0.049146231263876,0.027190802618861,0.147441968321800,-0.211072459816933,-0.047603622078896,0.194220617413521,0.133741676807404,-0.181242838501930,-0.007528758142143,0.222713783383369));
res += mul(Get(s3,0,-dy), float4x4(-0.079337589442730,0.041387990117073,-0.084473416209221,0.082618236541748,0.132028549909592,0.030631277710199,-0.032995954155922,0.092464774847031,-0.002005367306992,-0.026904031634331,0.019732242450118,-0.138164013624191,-0.161990374326706,-0.184741437435150,0.105231262743473,-0.128620788455009));
res += mul(Get(s3,0,0), float4x4(-0.134728595614433,0.011694872751832,-0.032060150057077,-0.138965904712677,-0.083232723176479,-0.060826048254967,0.008565262891352,0.117225967347622,0.089718155562878,0.177858710289001,-0.061440929770470,-0.018018703907728,0.071114994585514,-0.053310271352530,0.045180220156908,0.135238394141197));
res += mul(Get(s3,0,dy), float4x4(-0.018770707771182,-0.161901399493217,-0.064353212714195,0.134804412722588,0.128428772091866,0.183976575732231,0.129428163170815,-0.109387986361980,0.084111675620079,-0.014147736132145,0.238699346780777,-0.037849970161915,-0.135515466332436,0.208185911178589,-0.033785454928875,0.280276119709015));
res += mul(Get(s3,dx,-dy), float4x4(-0.048777200281620,0.063051134347916,-0.164208725094795,0.145626842975616,-0.002982485573739,0.076707758009434,0.039180487394333,-0.138761654496193,0.098518066108227,-0.093578189611435,-0.014750028029084,-0.093159653246403,-0.301908314228058,-0.004156638868153,0.220115363597870,-0.123904153704643));
res += mul(Get(s3,dx,0), float4x4(-0.165840551257133,0.081234231591225,-0.175674319267273,0.025342656299472,-0.030013505369425,-0.157446116209030,-0.231987252831459,-0.261859863996506,-0.026860278099775,-0.078365311026573,-0.146883919835091,0.127197235822678,-0.159207418560982,0.200353130698204,0.123761117458344,0.054996039718390));
res += mul(Get(s3,dx,dy), float4x4(0.117807023227215,-0.153920710086823,0.015818409621716,-0.004752336535603,-0.031123738735914,-0.176917299628258,-0.051560398191214,0.035204909741879,-0.028605338186026,-0.072636641561985,0.051326494663954,0.042936887592077,-0.194412291049957,0.096859142184258,0.028470715507865,-0.084215991199017));
return max(float4(0,0,0,0), res);
}