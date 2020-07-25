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
res += mul(Get(s0,-dx,-dy), float4x4(-0.002783060539514,-0.013279301114380,0.006405214313418,0.008417563512921,0.157457426190376,0.022791191935539,-0.010728586465120,0.022707590833306,-0.134172335267067,-0.065199874341488,0.136007457971573,0.088916450738907,0.019251719117165,0.004808708094060,0.027690980583429,0.003953272476792));
res += mul(Get(s0,-dx,0), float4x4(0.006790369749069,0.009884749539196,0.002180045237765,0.003051385981962,0.034579079598188,0.007514652796090,-0.018926663324237,0.066878512501717,0.092093802988529,-0.052608814090490,-0.153755053877831,-0.072258673608303,-0.010737410746515,-0.002877205610275,0.003712763544172,-0.015743134543300));
res += mul(Get(s0,-dx,dy), float4x4(0.012532139196992,0.024652929976583,-0.003175421385095,-0.010718931443989,0.014181495644152,0.030867287889123,0.001437667058781,0.055101692676544,0.058448635041714,-0.050451185554266,0.036352589726448,-0.015691149979830,-0.103425182402134,-0.023080144077539,-0.004302421584725,-0.014070188626647));
res += mul(Get(s0,0,-dy), float4x4(-0.002101188758388,0.006589808035642,0.011162401176989,-0.007414297666401,0.231688722968102,0.037480503320694,0.007982520386577,-0.022818202152848,-0.243273138999939,0.084861502051353,-0.378364831209183,-0.138775661587715,0.004404861945659,0.014677390456200,-0.005135020706803,-0.031810734421015));
res += mul(Get(s0,0,0), float4x4(0.014373987913132,0.012284554541111,0.029679322615266,-0.010445047169924,0.124326892197132,0.010871726088226,0.004264345392585,-0.036576759070158,0.080272629857063,0.120221167802811,0.729421377182007,-0.179128229618073,0.014243813231587,0.018209574744105,0.055675461888313,-0.063080102205276));
res += mul(Get(s0,0,dy), float4x4(0.019482959061861,0.020964439958334,0.000195385917323,-0.010699638165534,0.000528673292138,0.042431086301804,0.013155627064407,-0.026538675650954,0.144489452242851,0.070988483726978,-0.035573430359364,-0.220918610692024,-0.015696424990892,0.036978758871555,0.055384956300259,-0.054131846874952));
res += mul(Get(s0,dx,-dy), float4x4(-0.008964804932475,0.006953570526093,0.032133199274540,-0.031574159860611,0.137043222784996,0.012030949816108,-0.056551408022642,-0.010418203659356,-0.137130916118622,-0.066836461424828,-0.026104616001248,0.114090353250504,-0.066828131675720,-0.002359411446378,-0.026160372421145,-0.103662475943565));
res += mul(Get(s0,dx,0), float4x4(0.016043584793806,0.001092384685762,0.001249414170161,-0.052138693630695,0.013301260769367,-0.015918901190162,0.013687516562641,0.005070082843304,0.002910175593570,-0.064496122300625,-0.111953690648079,0.390847027301788,0.024069327861071,0.020216485485435,0.091730356216431,-0.144493713974953));
res += mul(Get(s0,dx,dy), float4x4(0.022630205377936,0.012586967088282,0.036373779177666,-0.053458847105503,-0.027170298621058,-0.017344726249576,-0.003971107304096,0.021094560623169,-0.011331387795508,-0.082529447972775,0.005039503332227,0.185759231448174,0.062390249222517,0.018788469955325,0.056897509843111,-0.135449007153511));
res += mul(Get(s1,-dx,-dy), float4x4(0.011418081820011,0.003041168209165,-0.008618029765785,0.039091315120459,-0.088072396814823,-0.041456058621407,0.042174190282822,0.086908750236034,-0.033221773803234,-0.037231583148241,0.041419513523579,0.017343888059258,-0.018952386453748,-0.006543770898134,0.004889746662229,-0.010026624426246));
res += mul(Get(s1,-dx,0), float4x4(0.005517223849893,-0.009866114705801,-0.010051093995571,0.002441239776090,0.064322188496590,-0.019767399877310,-0.081328503787518,-0.034993026405573,-0.039823647588491,-0.041780002415180,0.048510506749153,0.009956859983504,-0.003921084571630,-0.004555175546557,-0.013083021156490,-0.009614363312721));
res += mul(Get(s1,-dx,dy), float4x4(-0.013987144455314,0.011423605494201,-0.008025660179555,0.002314647426829,-0.021126888692379,-0.023752525448799,0.097297102212906,0.030721873044968,-0.021830620244145,-0.016745422035456,0.020754117518663,0.069160662591457,-0.008291563019156,-0.015780562534928,0.003922963980585,-0.005655626300722));
res += mul(Get(s1,0,-dy), float4x4(-0.002754675224423,0.008282493799925,0.005166271235794,0.006624600384384,-0.133194372057915,0.018970150500536,-0.231103658676147,-0.029097294434905,-0.038669355213642,-0.015480994246900,-0.054426196962595,0.050134919583797,-0.001598122180440,0.003414395265281,-0.017599973827600,0.019706346094608));
res += mul(Get(s1,0,0), float4x4(0.018481234088540,-0.005422166548669,0.016875421628356,0.017055993899703,0.113567538559437,0.030773824080825,0.369734764099121,-0.097440600395203,-0.019294248893857,-0.012412657029927,-0.093572176992893,0.035785585641861,0.015552395954728,-0.001898569636978,0.015389617532492,-0.003616784000769));
res += mul(Get(s1,0,dy), float4x4(0.001270883600228,-0.041014786809683,-0.000043477226427,-0.021558200940490,0.120763100683689,0.032662179321051,-0.057027664035559,-0.051141720265150,-0.005803604144603,0.020119719207287,-0.000998839386739,0.060815434902906,0.009714546613395,-0.003360137110576,0.002103017177433,-0.001575736911036));
res += mul(Get(s1,dx,-dy), float4x4(0.014712885022163,0.006081523839384,0.011069598607719,-0.010053887031972,-0.102025397121906,-0.047624811530113,-0.032546974718571,0.026708059012890,-0.038359057158232,-0.017007490620017,-0.006654587574303,-0.066339358687401,0.007677633315325,-0.005951270461082,0.012075332924724,-0.015426659956574));
res += mul(Get(s1,dx,0), float4x4(0.013145875185728,0.004551554564387,0.009726810269058,-0.029428109526634,0.037939634174109,-0.059512730687857,-0.006668625865132,0.107706949114799,0.065784223377705,0.008446320891380,-0.012825720012188,-0.099536731839180,-0.004834719933569,-0.010584414005280,-0.033733915537596,-0.027489632368088));
res += mul(Get(s1,dx,dy), float4x4(-0.006864114198834,0.013042444363236,-0.002206542529166,-0.007885323837399,0.025598146021366,-0.049893811345100,0.038418997079134,0.096818879246712,0.059174112975597,0.001742681371979,-0.049810342490673,-0.038189984858036,0.007721086032689,0.003360889153555,0.005399664398283,-0.007409784477204));
res += mul(Get(s2,-dx,-dy), float4x4(-0.044586028903723,0.028993768617511,0.024602074176073,-0.056249059736729,-0.021044461056590,0.006931277457625,-0.008830441161990,-0.020748456940055,-0.078746065497398,0.015256578102708,0.036310773342848,-0.016630282625556,-0.076888926327229,0.031171415001154,0.029280709102750,-0.055649042129517));
res += mul(Get(s2,-dx,0), float4x4(-0.013991061598063,0.035605952143669,0.037946492433548,-0.013155574910343,0.001901078387164,0.013124308548868,0.000637060787994,0.018263898789883,-0.029674274846911,0.007783051114529,-0.086238764226437,-0.053142540156841,-0.011889491230249,-0.000956489529926,0.042056489735842,-0.078935571014881));
res += mul(Get(s2,-dx,dy), float4x4(-0.027345037087798,0.038444552570581,0.068718202412128,-0.032927837222815,-0.001265866332687,0.001532081165351,-0.010613464750350,0.002378819976002,0.000801649701316,-0.016663189977407,0.037971563637257,0.028591720387340,0.071511998772621,0.010013790801167,0.030141243711114,-0.083616316318512));
res += mul(Get(s2,0,-dy), float4x4(-0.046438891440630,-0.027354696765542,0.012513651512563,-0.062949411571026,-0.009736009873450,-0.000973123649601,-0.024209368973970,0.022497251629829,-0.067600294947624,-0.005417996551841,0.115473464131355,-0.008910268545151,-0.031232658773661,0.006290425080806,-0.007452475372702,-0.092060886323452));
res += mul(Get(s2,0,0), float4x4(0.003376227105036,-0.016549345105886,-0.005367613863200,0.024771226570010,0.021916959434748,0.006324032787234,0.001100334338844,0.010424975305796,-0.017908668145537,0.020878991112113,-0.075812093913555,-0.052809022367001,-0.009232005104423,-0.008827020414174,0.221065893769264,-0.014888838864863));
res += mul(Get(s2,0,dy), float4x4(-0.059661123901606,-0.024711824953556,0.037812672555447,0.006634310819209,0.000823064823635,0.009337631985545,-0.031310964375734,-0.004347089678049,-0.041852056980133,0.003598645096645,0.083702035248280,0.019496008753777,0.044651288539171,0.008975895121694,0.007086317986250,-0.118375234305859));
res += mul(Get(s2,dx,-dy), float4x4(-0.041276708245277,-0.011739471927285,-0.022676747292280,-0.022962532937527,-0.004245906602591,-0.009914826601744,-0.001266649574973,0.012106210924685,-0.054640457034111,0.002650534035638,0.078446947038174,0.103683583438396,-0.035161476582289,-0.023042993620038,-0.001799817429855,0.142282158136368));
res += mul(Get(s2,dx,0), float4x4(-0.019476763904095,0.007278596051037,0.072159036993980,0.042970698326826,0.037016324698925,0.005887414794415,0.007465665694326,-0.003285359358415,-0.005014660768211,-0.007069961633533,0.018760660663247,-0.019213810563087,-0.024837072938681,-0.025397511199117,-0.161912277340889,0.256550669670105));
res += mul(Get(s2,dx,dy), float4x4(-0.014902347698808,-0.017337145283818,0.046662166714668,0.066656552255154,0.009894975461066,0.006318554747850,-0.006407917011529,-0.014566115103662,-0.014050918631256,-0.015756571665406,0.035818032920361,0.027307165786624,-0.006666898261756,-0.022280678153038,-0.022115852683783,0.144883960485458));
res += mul(Get(s3,-dx,-dy), float4x4(-0.012217584997416,0.006370565388352,-0.005335955414921,0.018378235399723,0.014959651976824,0.018472708761692,-0.010940794833004,-0.010714213363826,0.001468544709496,-0.003348908387125,0.036862563341856,0.010867876932025,0.068581432104111,-0.002700171899050,0.003855094546452,0.023230846971273));
res += mul(Get(s3,-dx,0), float4x4(-0.005366822704673,0.004851971752942,-0.000937864999287,-0.005784448236227,-0.009612666442990,0.001013097702526,-0.003478827187791,-0.008170678280294,0.060951102524996,0.027475968003273,0.045569878071547,0.049243777990341,-0.003542557591572,0.008817043155432,0.018671872094274,0.054146144539118));
res += mul(Get(s3,-dx,dy), float4x4(0.014723682776093,0.015745671465993,-0.019565161317587,0.010088944807649,-0.024967355653644,-0.002622222062200,-0.006207109894603,0.003967746626586,0.054359085857868,0.001292404253036,0.017623404040933,0.067665062844753,-0.026645651087165,-0.017553580924869,-0.006982594728470,-0.006504983641207));
res += mul(Get(s3,0,-dy), float4x4(0.015384846366942,-0.014532840810716,-0.006975096184760,-0.013814486563206,0.005254871211946,-0.002674373565242,-0.018532937392592,0.045207794755697,-0.031569395214319,0.019723525270820,0.019177053123713,0.017791334539652,0.102976627647877,0.024788621813059,0.046663120388985,-0.000788791337982));
res += mul(Get(s3,0,0), float4x4(-0.006314422935247,0.010421464219689,-0.018127145245671,-0.004172645974904,0.007859030738473,0.001607978134416,-0.035801704972982,0.021530883386731,0.030647192150354,0.005724037066102,0.026109512895346,0.001083621522412,0.042590633034706,0.000017384811144,0.011818851344287,-0.006322335917503));
res += mul(Get(s3,0,dy), float4x4(-0.013087339699268,0.007339742034674,0.026467049494386,-0.019821710884571,-0.018917355686426,-0.005304511170834,-0.042617712169886,0.025379985570908,0.046440318226814,0.027491463348269,0.022128133103251,0.023999752476811,-0.035829424858093,0.008225027471781,-0.026301950216293,-0.062097921967506));
res += mul(Get(s3,dx,-dy), float4x4(-0.006645176094025,0.007245491724461,0.004855968989432,0.007118821144104,-0.022901559248567,0.024016089737415,-0.012613889761269,0.018336597830057,0.006026024464518,-0.003407025244087,0.054620884358883,0.015565476380289,0.064174436032772,0.001990851713344,0.031258463859558,-0.039141971617937));
res += mul(Get(s3,dx,0), float4x4(0.010936494916677,0.002354684751481,-0.002842536196113,-0.001212976989336,-0.027292624115944,0.017729165032506,-0.008341318927705,-0.005653840489686,-0.009848177433014,-0.010525326244533,-0.024086514487863,0.011432968080044,0.081591784954071,-0.016333276405931,0.019948184490204,-0.044118404388428));
res += mul(Get(s3,dx,dy), float4x4(-0.006098870187998,-0.016898535192013,0.030773732811213,0.012630348093808,-0.011650352738798,0.005310168024153,-0.000177288020495,0.008883081376553,0.027245718985796,0.003762294072658,0.016357300803065,-0.000321348343277,0.006718165241182,-0.011210891418159,-0.012893451377749,-0.029880760237575));
res = max(float4(0,0,0,0), res);
return res;
}