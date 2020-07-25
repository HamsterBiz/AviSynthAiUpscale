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
res += mul(Get(s0,-dx,-dy), float4x4(0.101541094481945,-0.000650873524137,-0.046888668090105,0.023252654820681,-0.046253677457571,-0.035697352141142,0.003493370022625,-0.032613527029753,-0.092389814555645,-0.064441584050655,0.064935982227325,-0.015307338908315,-0.041464917361736,-0.049813486635685,0.129789397120476,0.087635397911072));
res += mul(Get(s0,-dx,0), float4x4(0.028798101469874,0.010001706890762,0.057270508259535,-0.008747685700655,0.003668439807370,-0.042490851134062,0.014628958888352,-0.039183054119349,0.004836366046220,-0.107797093689442,0.030348820611835,-0.098475478589535,-0.054847091436386,-0.038412846624851,0.082305505871773,0.001548487110995));
res += mul(Get(s0,-dx,dy), float4x4(0.038540966808796,0.006158831063658,0.054818678647280,-0.021088585257530,0.025806033983827,0.049390196800232,0.015984777361155,-0.011324704624712,-0.119334459304810,-0.099576368927956,-0.020169390365481,-0.062874354422092,-0.025468690320849,-0.067095614969730,0.017742164433002,-0.037458699196577));
res += mul(Get(s0,0,-dy), float4x4(0.101816959679127,-0.037454620003700,0.059210713952780,0.025148175656796,-0.115902580320835,0.004013492260128,0.026153460144997,-0.010858653113246,0.045061323791742,-0.048839904367924,-0.091643445193768,0.014047487638891,0.012061586603522,0.017895419150591,-0.024182779714465,0.086461074650288));
res += mul(Get(s0,0,0), float4x4(0.018833728507161,0.026906892657280,0.120409995317459,-0.014992813579738,-0.019889317452908,0.010760291479528,0.003669730154797,-0.045968100428581,0.061215642839670,0.151014328002930,-0.100479975342751,0.072236455976963,-0.023896252736449,0.065309830009937,-0.042536053806543,0.125068470835686));
res += mul(Get(s0,0,dy), float4x4(0.005142956506461,0.027372287586331,0.039561405777931,-0.014892868697643,0.021480910480022,0.033700197935104,-0.000592659227550,0.018131960183382,-0.074675351381302,0.169591516256332,0.055653750896454,0.090480275452137,0.007455905433744,0.030863769352436,0.052661512047052,0.030681867152452));
res += mul(Get(s0,dx,-dy), float4x4(0.025518085807562,0.000743727665395,0.012575395405293,-0.035941127687693,-0.119068965315819,0.037679810076952,-0.007517627906054,-0.005746969487518,-0.135478392243385,-0.100799225270748,-0.097326479852200,-0.074649341404438,0.041933562606573,-0.071007281541824,0.011729939840734,0.011261499486864));
res += mul(Get(s0,dx,0), float4x4(0.030263733118773,0.054710760712624,0.010641202330589,-0.036455426365137,-0.037716045975685,-0.030928412452340,0.012143702246249,-0.029334278777242,0.006665702443570,0.072280056774616,-0.048875838518143,0.012445324100554,0.060810845345259,-0.006103693507612,0.023923149332404,0.070940859615803));
res += mul(Get(s0,dx,dy), float4x4(0.012974234297872,0.022705333307385,0.033755552023649,-0.005352400243282,0.038122814148664,-0.007910737767816,0.032225094735622,0.009989595972002,0.019358847290277,0.116938583552837,0.043708682060242,-0.156530797481537,0.032279912382364,-0.002355591859668,0.079558789730072,-0.016666643321514));
res += mul(Get(s1,-dx,-dy), float4x4(-0.046179942786694,0.034147534519434,0.010050681419671,-0.036826554685831,0.104761600494385,-0.059456299990416,0.033131346106529,0.082518294453621,0.108681440353394,0.001529862638563,-0.131502389907837,-0.027901245281100,0.016698298975825,-0.079665362834930,-0.039307497441769,-0.025739835575223));
res += mul(Get(s1,-dx,0), float4x4(-0.041354205459356,0.045820005238056,-0.046057261526585,0.026648590341210,0.031114790588617,-0.043368339538574,0.090340293943882,0.046137664467096,0.106122329831123,0.010936030186713,-0.075445353984833,0.001133018056862,0.019254861399531,-0.097891494631767,-0.068867534399033,0.032683081924915));
res += mul(Get(s1,-dx,dy), float4x4(0.004828966222703,0.028883151710033,0.015479705296457,0.006274930667132,-0.017448706552386,-0.038042098283768,0.096563942730427,0.015016847290099,0.134811744093895,0.028147455304861,-0.031276516616344,-0.119537197053432,0.029767990112305,0.002796381711960,-0.013449343852699,0.011180161498487));
res += mul(Get(s1,0,-dy), float4x4(-0.063068099319935,-0.001469711889513,-0.007983204908669,0.001976328669116,0.098993994295597,0.005489310715348,0.084288820624352,0.033237542957067,0.035493362694979,-0.036085281521082,-0.112735584378242,0.047564756125212,-0.026003995910287,-0.076464951038361,-0.037844590842724,-0.024245573207736));
res += mul(Get(s1,0,0), float4x4(-0.006414255127311,-0.024818260222673,0.002083381405100,0.063542708754539,0.054815098643303,-0.002584181027487,0.074692904949188,-0.048340026289225,-0.023515144363046,0.031832505017519,0.009810697287321,0.121969781816006,-0.048128470778465,-0.119940027594566,-0.067298755049706,-0.007542225532234));
res += mul(Get(s1,0,dy), float4x4(0.004695922601968,0.008008285425603,0.036614932119846,0.013129381462932,0.037646356970072,-0.034566197544336,0.022249920293689,-0.028207277879119,-0.009864793159068,0.039897181093693,-0.016740607097745,-0.113474547863007,-0.017508314922452,-0.068071939051151,-0.121580779552460,-0.047726463526487));
res += mul(Get(s1,dx,-dy), float4x4(-0.020235398784280,-0.011046805419028,0.045454714447260,0.021275121718645,0.022464035078883,-0.006043753586709,0.061557140201330,0.002702188212425,0.045281052589417,0.011972662061453,-0.031711220741272,0.034671213477850,0.036691773682833,-0.080932088196278,-0.071520946919918,0.010722682811320));
res += mul(Get(s1,dx,0), float4x4(0.001706126960926,-0.028286928310990,0.024641880765557,0.017599157989025,-0.010527092032135,-0.015958432108164,-0.026687771081924,-0.032617237418890,-0.004773241933435,0.046279739588499,0.091540277004242,0.006721544079483,0.022011205554008,-0.078299939632416,0.037926752120256,0.019305517897010));
res += mul(Get(s1,dx,dy), float4x4(0.021064670756459,-0.015266954898834,-0.005994503386319,-0.019244864583015,0.003200198989362,-0.011723907664418,-0.026012690737844,-0.035859435796738,-0.065456174314022,0.077615097165108,-0.039053265005350,-0.154671713709831,-0.016940392553806,-0.037737425416708,-0.025436896830797,-0.057337123900652));
res += mul(Get(s2,-dx,-dy), float4x4(-0.025028267875314,0.022896748036146,0.025466280058026,0.005554453469813,0.064584150910378,0.006164951715618,-0.003043162636459,0.004626232199371,-0.039820101112127,0.002973274560645,-0.028793919831514,0.015288878232241,-0.014442791230977,-0.046337991952896,-0.000330730341375,0.044927056878805));
res += mul(Get(s2,-dx,0), float4x4(0.050222855061293,0.000475918583106,0.060113482177258,0.083009943366051,0.034821823239326,-0.059155941009521,-0.048136014491320,-0.018100164830685,0.049681562930346,0.071992494165897,0.006226793397218,-0.037727411836386,-0.057065319269896,-0.024715565145016,0.153653830289841,-0.016937119886279));
res += mul(Get(s2,-dx,dy), float4x4(0.032212514430285,0.029995046555996,-0.048887584358454,-0.007591731380671,0.082836739718914,-0.068276457488537,-0.005351588129997,-0.021084468811750,-0.001687530311756,0.019390210509300,-0.037283021956682,-0.011628194712102,0.007711411453784,-0.009131822735071,0.098525233566761,-0.026138214394450));
res += mul(Get(s2,0,-dy), float4x4(-0.003628506092355,-0.045935448259115,-0.017236286774278,0.024010229855776,-0.016845377162099,0.093659833073616,0.091151602566242,0.095421381294727,-0.086363360285759,-0.007275044918060,-0.068858675658703,0.021866925060749,-0.009662997908890,-0.064924314618111,0.009789150208235,0.200760304927826));
res += mul(Get(s2,0,0), float4x4(0.001303854282014,-0.062519125640392,-0.008202652446926,0.048954159021378,-0.035412739962339,0.033279761672020,0.083499677479267,-0.043326970189810,-0.017219880595803,0.027269119396806,-0.004580157343298,0.060599949210882,-0.020737761631608,-0.036886483430862,-0.016158502548933,0.013947986066341));
res += mul(Get(s2,0,dy), float4x4(-0.022977011278272,0.009242632426322,-0.080850623548031,0.017021786421537,0.039302557706833,-0.012916636653244,-0.002251175232232,-0.072057992219925,-0.062120612710714,-0.028335029259324,0.041503634303808,0.066151134669781,0.113026030361652,-0.013336927630007,-0.088751435279846,-0.017692046239972));
res += mul(Get(s2,dx,-dy), float4x4(0.015670331194997,0.049146909266710,0.008817362599075,-0.042875379323959,0.101767390966415,-0.007790039293468,0.011186334304512,0.071047276258469,-0.069652795791626,-0.002749301493168,-0.025531804189086,0.023062346503139,-0.053041148930788,-0.078671343624592,-0.008943524211645,0.028351129963994));
res += mul(Get(s2,dx,0), float4x4(0.008997587487102,-0.010982540436089,-0.012138066813350,-0.034336503595114,-0.056848958134651,-0.037235993891954,0.006022854708135,-0.090509966015816,-0.017149616032839,0.033594109117985,0.034424021840096,0.071500271558762,-0.063707813620567,-0.019088799133897,-0.027483459562063,-0.129634574055672));
res += mul(Get(s2,dx,dy), float4x4(0.007122118491679,-0.021306164562702,-0.046503838151693,-0.035117547959089,-0.127091094851494,-0.078378461301327,-0.042138062417507,-0.047736641019583,-0.089908272027969,-0.020724849775434,0.050841927528381,0.025058073922992,0.076663918793201,0.092781543731689,-0.098042637109756,-0.027077715843916));
res += mul(Get(s3,-dx,-dy), float4x4(0.031898532062769,-0.116104751825333,-0.016814755275846,0.050227042287588,-0.055618740618229,0.038962032645941,0.045550338923931,0.014905558899045,-0.015515450388193,0.032034233212471,0.027726709842682,-0.069762289524078,0.039940271526575,0.024375934153795,0.008176934905350,-0.050039891153574));
res += mul(Get(s3,-dx,0), float4x4(0.116234190762043,-0.170182138681412,0.010033602826297,-0.048876997083426,0.015674378722906,0.046632844954729,0.053622752428055,-0.007911511696875,-0.071932420134544,0.009024650789797,0.013152795843780,-0.062111601233482,-0.009109334088862,0.017412567511201,-0.104943990707397,0.012023552320898));
res += mul(Get(s3,-dx,dy), float4x4(0.129698380827904,-0.088461123406887,0.026691645383835,0.033891804516315,-0.009940590709448,0.051970228552818,0.059648122638464,0.002473105443642,-0.018421577289701,0.025278659537435,-0.024945845827460,0.000470718601719,0.012554922141135,0.017671184614301,-0.008510977029800,0.037428896874189));
res += mul(Get(s3,0,-dy), float4x4(-0.016883706673980,-0.100097797811031,0.106753893196583,-0.066664330661297,0.023530326783657,0.049005914479494,0.089246496558189,-0.007075864356011,0.021923555061221,0.171796426177025,-0.006974897813052,-0.054829802364111,0.000354029325536,0.089464984834194,-0.040061943233013,-0.048863008618355));
res += mul(Get(s3,0,0), float4x4(0.013081409968436,-0.087703250348568,0.155846700072289,-0.033812712877989,-0.038030881434679,-0.071059539914131,0.077541477978230,0.051133196800947,0.023069748654962,0.125370860099792,0.034249972552061,-0.081729032099247,-0.015153493732214,0.018331071361899,-0.113093748688698,0.062094207853079));
res += mul(Get(s3,0,dy), float4x4(0.026805639266968,-0.046029131859541,-0.004235206637532,0.047223705798388,-0.038396202027798,-0.071902662515640,0.067899331450462,0.013731546700001,0.034962568432093,-0.024596028029919,-0.020837770774961,-0.015178210102022,-0.035407051444054,0.038747165352106,-0.000937208882533,0.044721871614456));
res += mul(Get(s3,dx,-dy), float4x4(0.014609578065574,-0.087332211434841,0.012555663473904,0.017878111451864,0.045984085649252,0.023306803777814,0.087367407977581,-0.009669395163655,0.115396127104759,0.111920103430748,-0.057954840362072,-0.068654745817184,-0.002779633039609,0.060831036418676,-0.063910529017448,-0.032052978873253));
res += mul(Get(s3,dx,0), float4x4(0.029281018301845,-0.095688000321388,0.083054192364216,-0.005904272198677,-0.019192745909095,-0.045427002012730,0.088201105594635,0.079684548079967,0.048939846456051,0.207599252462387,-0.006823626346886,-0.075436308979988,0.014680621214211,-0.019420655444264,-0.095902837812901,0.009237064048648));
res += mul(Get(s3,dx,dy), float4x4(0.018704278394580,-0.079191297292709,0.050954822450876,-0.016750587150455,-0.004801233299077,-0.034409817308187,0.042514897882938,0.038214188069105,0.031214149668813,0.004179090261459,0.003725518006831,0.037328485399485,-0.002172353910282,0.001896454021335,-0.027884453535080,-0.033870395272970));
return max(float4(0,0,0,0), res);
}