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
res += mul(Get(s0,-dx,-dy), float4x4(0.000267143186647,-0.009333360008895,-0.003483569948003,0.014511786401272,0.030889187008142,-0.036405541002750,0.088998280465603,-0.008991101756692,0.016709823161364,-0.002455160487443,0.034562274813652,0.001093085738830,0.009971431456506,0.038201894611120,-0.008189206942916,0.003108205273747));
res += mul(Get(s0,-dx,0), float4x4(-0.011593709699810,-0.010782631114125,-0.002240424510092,0.007906745187938,-0.014007684774697,-0.075598582625389,0.064175732433796,0.028516774997115,-0.003732920391485,0.023543568328023,0.026846608147025,-0.009594037197530,0.031112922355533,0.025442807003856,0.018340134993196,-0.020414879545569));
res += mul(Get(s0,-dx,dy), float4x4(-0.001166179543361,-0.017070148140192,0.003299328265712,0.003355123102665,-0.072910159826279,-0.040664453059435,-0.041610065847635,0.082031473517418,-0.027295559644699,0.004177887458354,-0.026834070682526,0.023917412385345,-0.003997555933893,-0.019224457442760,0.022995894774795,-0.002110962755978));
res += mul(Get(s0,0,-dy), float4x4(0.000273014855338,0.007146042771637,0.009958768263459,-0.001721699140035,0.013652211055160,0.012167342938483,0.159252837300301,-0.001984921982512,-0.009605932980776,-0.027567517012358,0.074804589152336,-0.001757916179486,0.007377553731203,-0.005690051708370,-0.029724325984716,0.017335817217827));
res += mul(Get(s0,0,0), float4x4(0.021138805896044,0.009660157375038,-0.012376421131194,-0.010119363665581,0.122624672949314,0.179599821567535,0.075599148869514,-0.059385705739260,0.019976666197181,0.063529722392559,0.010232558473945,-0.006511215586215,-0.003409436671063,0.003220645943657,0.061570081859827,0.018069524317980));
res += mul(Get(s0,0,dy), float4x4(0.000566107977647,0.000063403422246,0.014151855371892,0.003945072647184,0.066961519420147,0.019951552152634,-0.082485921680927,-0.020563941448927,0.007152155041695,-0.026626650243998,-0.038531497120857,0.002542959060520,0.032869551330805,0.009676923044026,0.024488676339388,-0.028127426281571));
res += mul(Get(s0,dx,-dy), float4x4(-0.003030176740140,0.009077760390937,-0.011039703153074,0.007252841722220,-0.041644927114248,-0.008386803790927,-0.004301695618778,0.029669543728232,-0.013139477930963,-0.035227824002504,0.032708253711462,0.024654828011990,0.007332861889154,-0.023593761026859,0.016358241438866,0.002923533786088));
res += mul(Get(s0,dx,0), float4x4(-0.029948802664876,-0.006450257729739,-0.006908958312124,0.002919816877693,0.045096043497324,0.187809407711029,-0.039308067411184,0.004085618536919,0.022179529070854,0.078715473413467,-0.007232733070850,-0.011498416773975,-0.029560511931777,-0.020258314907551,0.004136785864830,0.018628537654877));
res += mul(Get(s0,dx,dy), float4x4(0.008280225098133,-0.012325020506978,0.004731922876090,-0.002629262860864,0.011339916847646,0.057396441698074,0.002104366896674,-0.000627848261502,-0.006589043419808,-0.017009878531098,-0.004972951021045,-0.002862229477614,0.003692770143971,0.044016767293215,-0.002852727659047,-0.009475989267230));
res += mul(Get(s1,-dx,-dy), float4x4(-0.001567015890032,-0.082267016172409,0.009825844317675,0.050781086087227,0.003179678227752,-0.019268382340670,-0.002634914591908,-0.008346870541573,0.022760139778256,0.017318286001682,-0.001441899104975,-0.009708340279758,-0.006147986277938,0.000819090986624,0.004994619172066,0.008970869705081));
res += mul(Get(s1,-dx,0), float4x4(-0.171503633260727,-0.067870505154133,-0.056361790746450,0.197907596826553,0.006285198032856,0.014035527594388,0.005231243092567,0.000145360303577,0.012366568669677,0.000484485790366,0.002756002126262,-0.009609702974558,-0.006249526515603,-0.004673909395933,0.007662403397262,0.000523181690369));
res += mul(Get(s1,-dx,dy), float4x4(-0.067046530544758,0.048005688935518,0.057855993509293,0.101788662374020,0.015027738176286,-0.002650420181453,0.014381527900696,-0.011666115373373,-0.007866129279137,-0.010168956592679,-0.007394122425467,-0.007459021639079,-0.005541719496250,0.005386945791543,-0.003118585795164,0.014632251113653));
res += mul(Get(s1,0,-dy), float4x4(0.134220510721207,-0.006116594187915,0.360520571470261,-0.085032708942890,0.006698878947645,0.002323770197108,-0.006900752428919,0.003151949029416,-0.025039162486792,0.012596421875060,-0.002235219115391,0.004670468624681,-0.001294286106713,-0.007721924223006,-0.010655160993338,0.003110683523118));
res += mul(Get(s1,0,0), float4x4(0.102977670729160,-0.033607620745897,-0.073465295135975,-0.052266675978899,-0.009514314122498,-0.011152518913150,-0.007036750204861,0.006357974838465,0.000322887062794,0.010614997707307,-0.008236804977059,-0.006523141637444,-0.013614090159535,0.005995113868266,-0.004688390996307,-0.003868512576446));
res += mul(Get(s1,0,dy), float4x4(-0.013989194296300,-0.145505636930466,-0.071435354650021,0.040390666574240,0.009959007613361,-0.001141326851211,0.028419034555554,0.010150056332350,0.004299503751099,-0.006624619942158,0.010641447268426,0.006695963442326,0.001963860122487,-0.016855712980032,-0.002979015000165,-0.010055709630251));
res += mul(Get(s1,dx,-dy), float4x4(-0.025646192952991,0.271011054515839,0.017753455787897,0.051025196909904,0.000710065767635,-0.002453504828736,0.005911696702242,-0.005914494860917,-0.005340712610632,-0.007018154021353,0.015320527367294,0.001219682395458,-0.003574281698093,0.011813264340162,-0.005881087388843,-0.003171847900376));
res += mul(Get(s1,dx,0), float4x4(0.201375320553780,0.466347336769104,-0.095644399523735,-0.085301935672760,0.002155356574804,-0.003170207841322,0.008154720067978,-0.001060260459781,-0.012208878993988,-0.009832675568759,0.005972933955491,0.004138083197176,0.003165432717651,0.001696177641861,-0.002454504836351,-0.004632189869881));
res += mul(Get(s1,dx,dy), float4x4(0.039650205522776,0.020270729437470,0.041645772755146,0.004493325483054,-0.005913600791246,0.016697665676475,0.003366314573213,-0.010380147024989,-0.002220660680905,-0.004447154235095,0.005513262469321,0.008514010347426,-0.005547740962356,-0.008586334064603,-0.015502954833210,0.010137011297047));
res += mul(Get(s2,-dx,-dy), float4x4(0.065678171813488,0.065490268170834,0.057598937302828,-0.022376257926226,0.017307015135884,0.002601336222142,-0.004227014724165,-0.008589364588261,-0.000707829254679,0.027657959610224,-0.011566081084311,-0.005349769257009,0.019515082240105,0.025643760338426,0.041201312094927,-0.011264522559941));
res += mul(Get(s2,-dx,0), float4x4(0.089079409837723,0.061056565493345,-0.048789046704769,-0.042014066129923,-0.005106138065457,0.000015300691302,0.001761874300428,-0.004162529017776,0.025448663160205,0.010843180119991,0.007163470145315,-0.005784270819277,0.056861501187086,0.068352609872818,0.026024170219898,-0.032701678574085));
res += mul(Get(s2,-dx,dy), float4x4(0.051718529313803,-0.007122681941837,0.017614770680666,-0.019074060022831,0.005865695886314,-0.001371707650833,-0.010318783111870,-0.008563985116780,0.014297548681498,0.010777786374092,0.008542921394110,0.000541858666111,0.035850983113050,0.010757950134575,-0.005091493017972,-0.010997830890119));
res += mul(Get(s2,0,-dy), float4x4(0.002510784193873,0.170718878507614,-0.122181214392185,0.044589366763830,-0.002022278029472,-0.004819825757295,0.009896761737764,0.014563043601811,0.010803740471601,-0.011998385190964,-0.009826120920479,0.007122743874788,-0.027549894526601,-0.006674361415207,-0.018889937549829,0.025135749951005));
res += mul(Get(s2,0,0), float4x4(0.066993303596973,0.111738488078117,-0.018112001940608,-0.005788693670183,0.004808461759239,0.016001610085368,0.007379362359643,0.004461522679776,-0.002612970070913,-0.002372147748247,0.020575243979692,0.009632765315473,-0.010232573375106,0.058997269719839,-0.015404783189297,0.011635266244411));
res += mul(Get(s2,0,dy), float4x4(0.009781790897250,-0.013217253610492,0.134515479207039,0.023895369842649,-0.001551737193950,0.005337468348444,0.000953659182414,-0.009068787097931,0.008540857583284,0.014922529459000,0.004458459094167,0.010279111564159,0.010437325574458,0.066003203392029,0.009862873703241,0.005860232748091));
res += mul(Get(s2,dx,-dy), float4x4(-0.030557109043002,-0.091762416064739,-0.044150169938803,0.054293286055326,-0.006414038129151,-0.020303305238485,0.008148857392371,0.004794158507138,0.001247312640771,-0.004057598765939,0.024762207642198,-0.000292314973194,0.011409912258387,-0.034325297921896,0.039470981806517,-0.010504209436476));
res += mul(Get(s2,dx,0), float4x4(-0.100854270160198,-0.171269387006760,0.071479439735413,0.091854274272919,-0.002179518109187,-0.010484999045730,-0.011485126800835,0.007448214571923,0.006428179331124,0.004887224175036,0.003959190100431,0.005122949834913,-0.007258594501764,-0.045533258467913,0.016536463052034,0.015830578282475));
res += mul(Get(s2,dx,dy), float4x4(-0.009538297541440,-0.000976633862592,0.061122927814722,0.043880622833967,-0.001335616223514,-0.009159388951957,-0.010830900631845,0.019251774996519,0.018796162679791,0.008253391832113,0.004688432905823,0.002538354601711,-0.013178048655391,-0.039338987320662,-0.001724275876768,0.035538598895073));
res += mul(Get(s3,-dx,-dy), float4x4(0.065509557723999,0.066983096301556,0.037001319229603,-0.025210797786713,0.012644712813199,0.003397826571018,0.005672678817064,0.004413968883455,0.016586927697062,0.003421021159738,0.023168133571744,0.013354453258216,0.000155166009790,0.014164846390486,-0.029323855414987,-0.007085847668350));
res += mul(Get(s3,-dx,0), float4x4(0.090448319911957,-0.013649662956595,0.100856475532055,-0.058194208890200,0.003047640901059,-0.007050235290080,0.011886568740010,-0.009378368966281,-0.019086137413979,0.036567043513060,-0.032724551856518,0.040561947971582,0.012303330004215,0.004664993844926,0.025286411866546,-0.006796714849770));
res += mul(Get(s3,-dx,dy), float4x4(-0.049202371388674,0.000455382687505,-0.046102184802294,0.081437200307846,-0.002539508976042,0.000859291583765,-0.022159628570080,0.017829533666372,0.011456736363471,0.016451425850391,0.002190851839259,0.007380974944681,-0.004084569867700,-0.002271636622027,0.011598265729845,-0.004574596416205));
res += mul(Get(s3,0,-dy), float4x4(-0.044349852949381,-0.033292837440968,0.043936897069216,0.056946340948343,0.003556864568964,-0.005750828888267,-0.002875137375668,-0.014728344976902,0.021714026108384,0.028644409030676,0.045062135905027,-0.009791171178222,-0.001788819790818,-0.020626833662391,-0.003064394695684,0.002937593962997));
res += mul(Get(s3,0,0), float4x4(0.089306712150574,0.147382304072380,0.235646635293961,-0.043327245861292,0.011418499983847,0.013739672489464,0.010963206179440,-0.004319840576500,-0.001632383908145,0.010317381471395,-0.054586954414845,0.001710474374704,-0.007121242117137,-0.023858716711402,0.017205320298672,0.012705646455288));
res += mul(Get(s3,0,dy), float4x4(0.052054006606340,0.042282536625862,-0.055448453873396,0.006155904848129,0.016039215028286,-0.011461458168924,-0.006764996796846,0.004474701359868,-0.015007521025836,-0.026582106947899,-0.006096959579736,0.032706364989281,0.007302951999009,0.016346743330359,0.005977489054203,0.013595100492239));
res += mul(Get(s3,dx,-dy), float4x4(-0.056588489562273,-0.189840182662010,0.065893955528736,0.049402579665184,-0.010711125098169,-0.001559429802001,-0.003755618119612,0.005504736211151,-0.001424173940904,0.060184657573700,0.005001176148653,0.009519482962787,-0.001876380294561,-0.001535943360068,0.025696419179440,-0.009470731019974));
res += mul(Get(s3,dx,0), float4x4(-0.015950635075569,0.107165396213531,0.061360102146864,0.054070703685284,-0.004273921251297,0.007036630064249,0.007439394015819,0.000982391298749,0.028291957452893,0.032955352216959,0.001602340955287,0.001925459830090,0.031714566051960,-0.000874970864970,0.009838772006333,0.000377410935471));
res += mul(Get(s3,dx,dy), float4x4(0.083207912743092,0.120014384388924,-0.040856201201677,-0.017146987840533,-0.004591390024871,0.003771233372390,0.012525205500424,0.010911523364484,-0.000900273618754,-0.044312026351690,0.022655388340354,0.014784014783800,-0.006139893550426,-0.007195527665317,-0.003623139811680,-0.005362165626138));
return max(float4(0,0,0,0), res);
}