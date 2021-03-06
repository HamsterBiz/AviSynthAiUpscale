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
res += mul(Get(s0,-dx,-dy), float4x4(-0.086493231356144,0.040837433189154,0.234027773141861,0.034422237426043,0.239258706569672,-0.149199619889259,-0.059968817979097,-0.258986860513687,-0.208325117826462,-0.178002163767815,0.135708019137383,0.073059223592281,-0.011646349914372,0.186654999852180,-0.087960779666901,0.076258003711700));
res += mul(Get(s0,-dx,0), float4x4(-0.081691063940525,0.081527382135391,0.039973866194487,-0.127654328942299,-0.124699033796787,-0.062905579805374,-0.207906931638718,-0.006283897440881,0.011768812313676,-0.036433503031731,0.109217531979084,-0.106427997350693,-0.047147024422884,0.011537515558302,-0.005873774178326,0.081333950161934));
res += mul(Get(s0,-dx,dy), float4x4(0.058125760406256,-0.056764729321003,0.043014604598284,-0.214461207389832,-0.079075671732426,0.086556933820248,-0.128790989518166,0.378101080656052,0.037951938807964,-0.160059615969658,0.019277514889836,0.027384201064706,-0.095978230237961,-0.023904584348202,0.142929717898369,-0.131672143936157));
res += mul(Get(s0,0,-dy), float4x4(-0.058328296989202,0.074377454817295,-0.075231812894344,0.015215476974845,0.047547683119774,-0.059830375015736,-0.001192519906908,0.032753698527813,-0.145197689533234,0.273910880088806,-0.050706494599581,0.104423016309738,-0.025565108284354,-0.004239628091455,0.125373259186745,0.001714428304695));
res += mul(Get(s0,0,0), float4x4(-0.063786856830120,0.142803490161896,0.078145369887352,-0.103761844336987,0.093829102814198,-0.075442880392075,0.057134993374348,-0.129639163613319,-0.053416125476360,0.016493001952767,0.001910597784445,-0.107871979475021,-0.186039254069328,-0.105751253664494,-0.079188697040081,0.036233182996511));
res += mul(Get(s0,0,dy), float4x4(0.049497712403536,-0.137581393122673,-0.084518499672413,0.028259949758649,0.014252688735723,-0.053664240986109,0.147989943623543,-0.001559232943691,-0.023579286411405,0.067005842924118,0.071602262556553,0.046306286007166,-0.028481464833021,-0.009952236898243,0.237277284264565,-0.125929966568947));
res += mul(Get(s0,dx,-dy), float4x4(0.092376731336117,0.196222811937332,-0.029845751821995,-0.194917753338814,-0.043395742774010,0.235686257481575,-0.029932601377368,0.114149399101734,0.148665919899940,-0.027112390846014,-0.008908953517675,-0.136565059423447,0.267758697271347,0.107065215706825,0.021813185885549,0.079081960022449));
res += mul(Get(s0,dx,0), float4x4(-0.161407008767128,-0.000344900647178,-0.131437525153160,-0.184964001178741,-0.019183013588190,-0.090834259986877,-0.087469518184662,-0.044271100312471,0.001523315673694,-0.033412970602512,0.155309557914734,0.061582285910845,0.101209059357643,0.002675869036466,-0.054536309093237,0.210093140602112));
res += mul(Get(s0,dx,dy), float4x4(-0.136774286627769,-0.069702245295048,-0.089033700525761,-0.124031074345112,-0.009867447428405,-0.074580848217010,-0.014563702978194,0.008664603345096,-0.001602264237590,-0.022234201431274,0.005335038527846,0.161882191896439,0.054026156663895,-0.165862515568733,0.165726721286774,0.090086542069912));
res += mul(Get(s1,-dx,-dy), float4x4(-0.008256434462965,-0.051338486373425,0.090709231793880,-0.040139313787222,0.189707979559898,0.095148280262947,-0.083031088113785,-0.074647828936577,-0.101140916347504,0.060310173779726,0.134018898010254,0.022957924753428,-0.011264774948359,-0.040131121873856,-0.258883267641068,-0.007731913123280));
res += mul(Get(s1,-dx,0), float4x4(0.130977123975754,-0.018819589167833,0.080906331539154,0.045767161995173,-0.059085294604301,-0.086341843008995,0.117133677005768,0.024110017344356,-0.036704216152430,0.129653215408325,0.147552266716957,0.087671183049679,-0.098292432725430,-0.011779939755797,0.176404193043709,0.072748772799969));
res += mul(Get(s1,-dx,dy), float4x4(0.042518343776464,-0.048104561865330,0.055149376392365,0.102667644619942,-0.056810017675161,0.032882735133171,-0.121049739420414,-0.012773054651916,0.142582461237907,0.030688704922795,-0.182502225041389,0.059073943644762,-0.098684690892696,-0.063272267580032,0.112520813941956,0.080339595675468));
res += mul(Get(s1,0,-dy), float4x4(0.014564967714250,-0.002884205896407,0.083539016544819,-0.028412235900760,-0.148612618446350,0.048138253390789,0.037135846912861,-0.062317475676537,-0.106294497847557,0.098387427628040,-0.177503272891045,0.058660026639700,-0.071988590061665,0.171157419681549,-0.140145480632782,-0.028171434998512));
res += mul(Get(s1,0,0), float4x4(-0.136803731322289,-0.066774815320969,0.004105524625629,0.105678312480450,-0.119775280356407,0.114379726350307,0.069742970168591,0.107531100511551,-0.027605386450887,-0.067748889327049,-0.013304748572409,-0.007087697274983,0.132447421550751,0.020589357241988,-0.120088815689087,0.130859553813934));
res += mul(Get(s1,0,dy), float4x4(-0.043462958186865,0.112581476569176,-0.047331240028143,0.097504995763302,0.044173065572977,0.109486714005470,0.025496341288090,0.082203909754753,0.030596392229199,0.009380813688040,0.002233218401670,0.048658821731806,-0.285878211259842,0.076279349625111,-0.029366934671998,0.030913690105081));
res += mul(Get(s1,dx,-dy), float4x4(0.051565498113632,0.138445511460304,-0.105033062398434,-0.086440488696098,-0.106076352298260,0.057791080325842,0.028853047639132,-0.009896769188344,0.300628721714020,-0.042608380317688,0.010449097491801,-0.375552207231522,-0.062289003282785,0.094105333089828,-0.114588156342506,0.077863611280918));
res += mul(Get(s1,dx,0), float4x4(0.155944004654884,-0.003513623960316,-0.078712321817875,-0.051090266555548,0.276026606559753,0.056118015199900,0.194648355245590,-0.042287562042475,0.016105744987726,-0.086384966969490,-0.097894467413425,-0.014724357053638,-0.087994202971458,-0.118459567427635,-0.270106047391891,-0.003421383211389));
res += mul(Get(s1,dx,dy), float4x4(-0.301569700241089,-0.065872475504875,-0.003347588004544,0.049216229468584,-0.194932967424393,-0.087180390954018,0.064263276755810,-0.006614074576646,-0.062843315303326,0.149727165699005,0.083428382873535,-0.084850162267685,0.099872507154942,0.098660930991173,-0.092399001121521,-0.035547181963921));
res += mul(Get(s2,-dx,-dy), float4x4(-0.070061519742012,-0.096698530018330,-0.099026083946228,-0.011612978763878,0.100556120276451,-0.261102885007858,0.026920566335320,0.176155075430870,0.036767970770597,0.059508394449949,0.047714341431856,-0.166962265968323,0.199124187231064,-0.002153919078410,-0.059071950614452,-0.125371500849724));
res += mul(Get(s2,-dx,0), float4x4(0.060066651552916,-0.058236893266439,0.186387076973915,0.059435393661261,0.025492025539279,0.104417175054550,0.050287101417780,0.064420968294144,0.088511399924755,-0.117062196135521,0.025079282000661,0.015701051801443,-0.135249495506287,-0.025270409882069,-0.058003254234791,-0.084049411118031));
res += mul(Get(s2,-dx,dy), float4x4(-0.040708970278502,-0.029490875080228,0.037198852747679,-0.032694049179554,0.163661554455757,0.097140066325665,-0.082094654440880,-0.063560158014297,-0.047247081995010,-0.068513877689838,0.068513296544552,-0.142704069614410,0.039626859128475,-0.122713238000870,-0.146916136145592,0.003875344060361));
res += mul(Get(s2,0,-dy), float4x4(0.057863030582666,-0.072949476540089,-0.075632169842720,0.169726863503456,0.060786955058575,-0.123020514845848,0.066863670945168,-0.033468570560217,-0.141122981905937,-0.038606435060501,-0.028671829029918,0.161434978246689,-0.092687964439392,0.011714294552803,-0.151967138051987,0.006524381693453));
res += mul(Get(s2,0,0), float4x4(-0.178587943315506,0.037010047584772,-0.014603679068387,0.053681086748838,-0.067036256194115,0.039142210036516,-0.086414411664009,-0.056538980454206,-0.010630746372044,0.073233626782894,0.048021167516708,-0.041592091321945,0.261513024568558,0.100195296108723,0.198754563927650,-0.082042329013348));
res += mul(Get(s2,0,dy), float4x4(-0.057344838976860,-0.190567538142204,-0.182065576314926,0.080675393342972,-0.141400843858719,0.019952408969402,-0.053740959614515,0.038269095122814,0.010685745626688,-0.230708301067352,0.034942746162415,-0.108971230685711,0.038569182157516,0.020908985286951,0.053348872810602,-0.019685070961714));
res += mul(Get(s2,dx,-dy), float4x4(-0.137951612472534,0.096860915422440,0.026063021272421,-0.081944726407528,0.006550990510732,-0.052185229957104,-0.215587869286537,-0.186742663383484,-0.125091508030891,0.006556013133377,0.039856493473053,-0.041098833084106,0.092213183641434,-0.093125663697720,-0.097065351903439,0.126288250088692));
res += mul(Get(s2,dx,0), float4x4(0.003734820289537,-0.126353219151497,-0.027672152966261,-0.104797445237637,-0.050409302115440,-0.062771514058113,0.045063290745020,0.030760711058974,-0.033830102533102,0.160587474703789,0.020201105624437,-0.109646528959274,0.029823563992977,-0.007888633757830,0.098739057779312,-0.104662835597992));
res += mul(Get(s2,dx,dy), float4x4(-0.081062622368336,0.014083473943174,-0.058203198015690,0.005587825085968,0.068441115319729,0.068240955471992,-0.139124214649200,0.150240465998650,0.012520615942776,-0.021423019468784,-0.140799894928932,-0.106946937739849,-0.012639426626265,-0.058181036263704,-0.058638464659452,-0.067127212882042));
res += mul(Get(s3,-dx,-dy), float4x4(0.003437002887949,0.020565120503306,0.002457347698510,0.243194460868835,0.045044325292110,-0.076242156326771,0.074412554502487,0.066453039646149,-0.050246182829142,0.029564963653684,0.028855638578534,-0.207366302609444,-0.081966221332550,-0.034089162945747,0.179876357316971,0.046147566288710));
res += mul(Get(s3,-dx,0), float4x4(0.142689794301987,-0.008061802946031,-0.121957331895828,0.244557023048401,-0.184178158640862,-0.146127998828888,-0.001766012865119,0.289571851491928,0.056029606610537,0.107003480195999,0.035960499197245,-0.257527083158493,0.026236210018396,-0.052669718861580,0.095304951071739,-0.047021325677633));
res += mul(Get(s3,-dx,dy), float4x4(0.086882986128330,-0.092681214213371,0.231269732117653,0.073212169110775,0.269376128911972,-0.066512174904346,-0.148899704217911,-0.016390891745687,0.050937723368406,-0.053107760846615,0.024833649396896,0.087020657956600,0.029572926461697,-0.014398756437004,0.145146757364273,-0.155496537685394));
res += mul(Get(s3,0,-dy), float4x4(0.057686708867550,0.016006782650948,0.058756247162819,-0.190425992012024,-0.116408169269562,0.107670582830906,0.153410896658897,0.204699814319611,-0.118547990918159,-0.202156871557236,-0.080012656748295,0.049880612641573,0.057078637182713,-0.043008465319872,-0.170317679643631,-0.085129231214523));
res += mul(Get(s3,0,0), float4x4(0.114887543022633,0.183483809232712,0.013352885842323,-0.115995593369007,0.083501935005188,0.031028747558594,-0.015025673434138,-0.083710163831711,-0.164902985095978,0.063840709626675,0.048288758844137,0.120703920722008,0.068003803491592,-0.143387228250504,0.049710642546415,-0.038624197244644));
res += mul(Get(s3,0,dy), float4x4(-0.099977917969227,-0.039854764938354,-0.168218150734901,-0.055453523993492,0.081555686891079,-0.060586318373680,0.015649966895580,0.131186693906784,-0.093045391142368,-0.121604785323143,0.019242502748966,-0.011503565125167,-0.059751071035862,0.091790109872818,0.022609213367105,0.135917171835899));
res += mul(Get(s3,dx,-dy), float4x4(-0.068185672163963,-0.022756041958928,-0.012985195964575,0.222351253032684,0.149043813347816,-0.008036658167839,-0.097174584865570,0.153907865285873,-0.038342226296663,-0.112736225128174,0.092526577413082,0.088969215750694,-0.133322715759277,0.219107151031494,0.005986255593598,0.084024205803871));
res += mul(Get(s3,dx,0), float4x4(-0.127986580133438,-0.157816633582115,-0.268933564424515,0.137604236602783,-0.131615206599236,0.036312784999609,-0.059130895882845,-0.101657576858997,0.014663452282548,-0.012963857501745,-0.347106695175171,0.069459512829781,0.041208997368813,-0.091711878776550,0.150329202413559,-0.094064146280289));
res += mul(Get(s3,dx,dy), float4x4(0.126765191555023,0.230832993984222,-0.057693988084793,-0.262739539146423,0.002294144127518,-0.052124507725239,-0.066030591726303,-0.062069181352854,-0.125128909945488,0.080752179026604,-0.240543439984322,0.069596439599991,-0.065380908548832,0.016215655952692,-0.024796852841973,0.083769313991070));
return max(float4(0,0,0,0), res);
}
