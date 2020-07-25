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
res += mul(Get(s0,-dx,-dy), float4x4(-0.104475110769272,0.025834206491709,0.009986721910536,-0.009042366407812,-0.111838079988956,0.121420428156853,-0.170213565230370,-0.095367915928364,-0.079458326101303,0.039507143199444,-0.033975273370743,-0.000724157842342,0.052930869162083,-0.057476427406073,-0.076810516417027,-0.029280178248882));
res += mul(Get(s0,-dx,0), float4x4(-0.073893055319786,-0.123140066862106,0.096327833831310,0.137878417968750,-0.147205874323845,0.124585650861263,0.019171880558133,-0.002801667200401,-0.047340992838144,-0.177402138710022,0.022894619032741,-0.067869849503040,0.004612037912011,-0.056232724338770,-0.002055749762803,0.034723896533251));
res += mul(Get(s0,-dx,dy), float4x4(0.081015609204769,-0.092064298689365,0.044211432337761,0.049753192812204,0.035484574735165,0.053364008665085,0.060977432876825,0.004323669243604,-0.021823981776834,0.165122166275978,0.028327085077763,-0.010665584355593,0.111370421946049,0.215255171060562,0.067794471979141,-0.112193986773491));
res += mul(Get(s0,0,-dy), float4x4(-0.056648284196854,-0.090085819363594,-0.043547663837671,-0.073609940707684,0.015499068424106,0.069824084639549,0.150925800204277,0.042080905288458,-0.001262268982828,-0.032602127641439,-0.006593911908567,-0.003994944039732,-0.221112072467804,-0.056617967784405,0.042068265378475,0.133802801370621));
res += mul(Get(s0,0,0), float4x4(0.021005820482969,-0.002259902423248,0.129814296960831,0.204926371574402,-0.086504682898521,0.119708023965359,-0.079347215592861,-0.259748935699463,-0.079478725790977,0.011388287879527,0.060195408761501,0.077994771301746,-0.099682413041592,0.207154929637909,0.102284044027328,0.030434608459473));
res += mul(Get(s0,0,dy), float4x4(0.176049023866653,0.020425340160728,0.064540401101112,0.035408791154623,0.041121542453766,-0.167587891221046,0.220269918441772,-0.018875449895859,-0.004062337800860,-0.027641626074910,-0.096457161009312,-0.112977452576160,-0.011990017257631,0.015680914744735,-0.232544615864754,0.066675446927547));
res += mul(Get(s0,dx,-dy), float4x4(-0.017091054469347,0.036694731563330,-0.138810217380524,0.098191231489182,0.124549888074398,-0.059796795248985,0.038501262664795,-0.003458044957370,-0.155904531478882,0.089166671037674,-0.077807292342186,-0.011240659281611,0.062392562627792,0.038911879062653,-0.003258180571720,0.022955548018217));
res += mul(Get(s0,dx,0), float4x4(0.094428814947605,0.047570623457432,-0.123223103582859,-0.090570949018002,-0.013031833805144,0.048990171402693,-0.074984677135944,0.049224410206079,-0.028631728142500,-0.170207351446152,0.166272908449173,-0.031376469880342,0.010953043587506,-0.068424053490162,0.064807362854481,-0.038012962788343));
res += mul(Get(s0,dx,dy), float4x4(0.133920252323151,0.266957163810730,0.040330804884434,0.094073161482811,-0.005183828528970,0.155027762055397,-0.002116814488545,-0.111117973923683,-0.098578251898289,-0.009416352957487,0.018921377137303,0.041332565248013,-0.031446404755116,0.056111741811037,-0.111307457089424,-0.118897490203381));
res += mul(Get(s1,-dx,-dy), float4x4(0.069664217531681,-0.008990935049951,0.151283919811249,-0.269263774156570,0.040564905852079,0.159665659070015,-0.022908421233296,0.085828624665737,-0.031513385474682,-0.070248834788799,-0.052443727850914,0.128978326916695,0.040561616420746,-0.111758522689342,0.123814359307289,0.152676403522491));
res += mul(Get(s1,-dx,0), float4x4(-0.034983791410923,0.051182467490435,-0.056178484112024,-0.016683850437403,-0.092176944017410,0.081795446574688,0.057423617690802,0.135375067591667,-0.041307080537081,0.082541003823280,0.137546971440315,0.066295579075813,-0.008635479956865,0.066951602697372,-0.084292419254780,0.087742693722248));
res += mul(Get(s1,-dx,dy), float4x4(-0.218271583318710,0.012582737021148,0.007669725455344,0.082762606441975,-0.161971285939217,-0.043682739138603,0.127767816185951,0.089006558060646,0.109693832695484,0.037068240344524,0.156934291124344,0.122826240956783,0.051412686705589,0.079208441078663,-0.066652648150921,0.015371499583125));
res += mul(Get(s1,0,-dy), float4x4(0.092587955296040,-0.067720986902714,0.058412093669176,0.130061835050583,-0.039173409342766,-0.000888644484803,0.055980380624533,0.016510562971234,0.017663076519966,0.018123963847756,-0.006793090142310,-0.038887839764357,0.132632568478584,0.025955250486732,-0.281132966279984,-0.142464682459831));
res += mul(Get(s1,0,0), float4x4(-0.108190499246120,-0.022485159337521,-0.041788291186094,0.112593717873096,0.038776636123657,0.047933995723724,0.059024132788181,0.148899987339973,-0.145222187042236,0.013712683692575,0.050293050706387,-0.197887599468231,-0.040664549916983,0.014126373454928,-0.097274743020535,0.088464252650738));
res += mul(Get(s1,0,dy), float4x4(-0.020621746778488,-0.043902739882469,-0.153360694646835,-0.017824338749051,-0.040746681392193,0.068735018372536,0.117400407791138,0.045960690826178,0.069566696882248,0.023157050833106,-0.062624521553516,-0.112519219517708,0.016980962827802,0.095516934990883,-0.162201449275017,0.054313715547323));
res += mul(Get(s1,dx,-dy), float4x4(0.113609589636326,-0.099078118801117,-0.029877796769142,-0.065792404115200,-0.113678149878979,-0.042859759181738,0.108419373631477,-0.019158765673637,0.129499733448029,-0.018434695899487,-0.093712709844112,-0.098761022090912,-0.158894687891006,-0.043941244482994,-0.140413641929626,0.192187875509262));
res += mul(Get(s1,dx,0), float4x4(-0.141154870390892,0.119058735668659,0.089773133397102,-0.164936378598213,0.031719587743282,-0.032561495900154,-0.026135530322790,-0.143325731158257,-0.169106841087341,-0.018632857128978,0.083521604537964,-0.019070416688919,-0.068613290786743,0.129086002707481,-0.150726348161697,0.014272185042500));
res += mul(Get(s1,dx,dy), float4x4(0.065038487315178,0.040566086769104,-0.078150883316994,-0.041323222219944,-0.048254590481520,-0.111049585044384,-0.046392314136028,-0.189133867621422,0.034229755401611,0.086681403219700,0.122152857482433,-0.209386005997658,-0.004059418104589,0.059983912855387,-0.054419923573732,-0.165134221315384));
res += mul(Get(s2,-dx,-dy), float4x4(0.064909219741821,0.009499098174274,0.192036330699921,0.019007204100490,-0.050356429070234,0.097567692399025,-0.023582857102156,0.088910236954689,-0.016891026869416,0.029821373522282,-0.091328918933868,0.068431705236435,0.070419996976852,0.033105511218309,-0.102102048695087,0.103187933564186));
res += mul(Get(s2,-dx,0), float4x4(0.220119968056679,0.037496812641621,0.055844184011221,-0.043643150478601,0.002250558463857,-0.228999480605125,-0.076297841966152,-0.056993670761585,-0.209150731563568,-0.039973992854357,0.113739036023617,-0.049141231924295,-0.044663846492767,0.112724937498569,0.021552432328463,0.041384287178516));
res += mul(Get(s2,-dx,dy), float4x4(-0.105093732476234,-0.048550687730312,-0.112553708255291,0.019998412579298,0.020577182993293,0.110859341919422,-0.011852491647005,-0.099161610007286,0.028275148943067,-0.011905504390597,-0.044591516256332,0.046196006238461,-0.008895195089281,-0.005469262599945,-0.220591917634010,-0.079602286219597));
res += mul(Get(s2,0,-dy), float4x4(0.035361457616091,0.063916265964508,-0.061674632132053,0.073142185807228,0.033360216766596,0.180586069822311,0.066795013844967,0.093487516045570,-0.116635382175446,-0.065272398293018,-0.035401131957769,-0.005523996427655,0.098110482096672,0.004929051734507,0.180732548236847,-0.014571001753211));
res += mul(Get(s2,0,0), float4x4(-0.002659908030182,0.036199193447828,0.090150356292725,-0.015444961376488,-0.103912159800529,0.014824138954282,0.031345758587122,0.020360583439469,-0.061306089162827,0.081129208207130,-0.167287990450859,-0.007898004725575,0.091464623808861,-0.022114356979728,0.179414898157120,0.070235908031464));
res += mul(Get(s2,0,dy), float4x4(-0.016268685460091,-0.019175609573722,-0.058750834316015,-0.011118083260953,0.032522924244404,-0.030180646106601,-0.109191276133060,0.056862998753786,-0.109459288418293,0.118266962468624,0.119419082999229,-0.111302204430103,-0.308621555566788,0.030596051365137,0.012778133153915,0.011951496824622));
res += mul(Get(s2,dx,-dy), float4x4(-0.053881537169218,0.173193439841270,0.011964513920248,-0.027897782623768,-0.068173699080944,0.052404757589102,0.118296802043915,-0.104931667447090,-0.081759318709373,-0.105489216744900,-0.068933382630348,0.000630725233350,-0.098350562155247,0.038117751479149,0.162485569715500,-0.160548478364944));
res += mul(Get(s2,dx,0), float4x4(-0.100276775658131,0.114705644547939,-0.026832163333893,0.030073262751102,-0.055859837681055,0.026922557502985,-0.099418908357620,0.193377748131752,0.177221730351448,0.073142200708389,-0.022622408345342,-0.029506037011743,0.075273819267750,0.104230292141438,0.118301488459110,0.075805440545082));
res += mul(Get(s2,dx,dy), float4x4(0.037157263606787,-0.023891042917967,0.091670773923397,0.015343991108239,0.037939291447401,0.050402451306581,0.217934161424637,-0.098523192107677,0.128836125135422,-0.031927585601807,-0.153487443923950,-0.162631034851074,-0.057885698974133,0.112024217844009,0.109272174537182,0.017289960756898));
res += mul(Get(s3,-dx,-dy), float4x4(-0.104317285120487,0.030569238588214,-0.084409572184086,-0.097418703138828,-0.102079361677170,0.124269783496857,-0.158823981881142,-0.079712785780430,-0.097086906433105,-0.112131111323833,-0.256308436393738,0.036544147878885,-0.004335259553045,0.143888905644417,-0.062182184308767,0.069889634847641));
res += mul(Get(s3,-dx,0), float4x4(-0.038419649004936,-0.196306571364403,0.125275701284409,-0.141821548342705,-0.012856579385698,0.010585859417915,0.012976612895727,0.174693033099174,0.159089237451553,-0.044323470443487,0.025668393820524,0.111548036336899,-0.232304438948631,-0.021885979920626,-0.004114749375731,0.031813353300095));
res += mul(Get(s3,-dx,dy), float4x4(0.103554762899876,0.123944886028767,-0.069734841585159,-0.181404471397400,0.064610876142979,-0.026309870183468,0.161837503314018,-0.085051618516445,-0.006124193314463,0.011901951394975,-0.042984224855900,0.025825984776020,0.047774266451597,0.119016788899899,0.124115213751793,0.060656856745481));
res += mul(Get(s3,0,-dy), float4x4(0.070923954248428,0.182348966598511,-0.073876842856407,-0.167920514941216,0.024600010365248,-0.076598390936852,-0.120035387575626,0.069654591381550,-0.374145328998566,0.041385449469090,-0.163857519626617,-0.051399812102318,0.040565907955170,-0.101301014423370,0.108404844999313,-0.073341764509678));
res += mul(Get(s3,0,0), float4x4(0.166789233684540,-0.156636387109756,0.024717936292291,0.116629332304001,0.032735630869865,0.163178279995918,-0.110268607735634,0.094462379813194,-0.049338217824697,0.001501401769929,-0.186624899506569,-0.003523026127368,-0.091881603002548,-0.131754502654076,0.146668076515198,-0.051553767174482));
res += mul(Get(s3,0,dy), float4x4(0.005462824366987,-0.060762669891119,0.046674355864525,-0.188453629612923,0.006981546059251,-0.021105024963617,-0.050727408379316,0.100084841251373,0.006056706421077,-0.059726942330599,-0.057995792478323,-0.182404652237892,0.046180628240108,0.010776413604617,-0.058242026716471,0.045397151261568));
res += mul(Get(s3,dx,-dy), float4x4(-0.036405548453331,0.211622640490532,-0.118974313139915,0.115173995494843,0.117106631398201,0.027537385001779,0.071900792419910,-0.201832935214043,-0.053490571677685,0.060085427016020,-0.051251497119665,0.063467465341091,0.228426009416580,-0.001023720717058,-0.049422238022089,-0.138161957263947));
res += mul(Get(s3,dx,0), float4x4(0.070640169084072,-0.044236835092306,-0.018283942714334,-0.181399911642075,0.043656323105097,0.049252390861511,0.203106224536896,-0.031063403934240,0.118261657655239,-0.030741287395358,0.131955772638321,-0.227122232317924,-0.039900634437799,-0.057009093463421,-0.046027224510908,0.021624695509672));
res += mul(Get(s3,dx,dy), float4x4(-0.047076374292374,-0.184068411588669,0.061539649963379,-0.098360687494278,-0.258120328187943,-0.068959750235081,0.160406589508057,-0.077658273279667,-0.096712224185467,0.174796029925346,-0.024555683135986,0.000803629693110,-0.023795405402780,0.150101721286774,0.024454820901155,0.058824013918638));
res = max(float4(0,0,0,0), res);
return res;
}