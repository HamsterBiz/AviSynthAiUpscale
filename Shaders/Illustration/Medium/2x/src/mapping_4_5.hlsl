sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.0125925047323108,0.0245058406144381,-0.1750387400388718,-0.1033599451184273);
res += mul(Get(s0,-dx,-dy), float4x4(-0.2122050821781158,0.0033849088940769,-0.0234845448285341,-0.0087015498429537,0.2154755741357803,-0.1386256217956543,0.0940554887056351,-0.1910800635814667,-0.1515246033668518,-0.2155176848173141,0.0043645468540490,-0.1077859550714493,0.2555546462535858,-0.0120854480192065,0.0865426436066628,0.0938662886619568));
res += mul(Get(s1,-dx,-dy), float4x4(0.2086021900177002,-0.0237813927233219,0.0092355441302061,0.0487782433629036,-0.5155886411666870,0.0290853474289179,-0.0584015361964703,-0.2377091944217682,0.1886426061391830,0.2185797989368439,-0.0970146358013153,0.0628198757767677,-0.0807642415165901,-0.0134222777560353,-0.0991723388433456,-0.0044561256654561));
res += mul(Get(s2,-dx,-dy), float4x4(0.0110289417207241,0.0016563229728490,0.0608791708946228,0.0794174298644066,0.1793366372585297,-0.0156385172158480,0.1469470113515854,0.0004916800535284,-0.2887606918811798,-0.0612877309322357,-0.0175574980676174,-0.1548130363225937,0.1782487034797668,-0.0056684142909944,-0.0525328516960144,-0.1180258691310883));
res += mul(Get(s3,-dx,-dy), float4x4(-0.1478585898876190,-0.0729781463742256,0.0267614312469959,0.1293988972902298,-0.2078159451484680,-0.0562069937586784,0.0228210855275393,-0.3348097205162048,0.1667954772710800,-0.0341200567781925,-0.0195631273090839,0.0948065593838692,0.0790283307433128,-0.1333110332489014,-0.0055003995075822,-0.3119518756866455));
res += mul(Get(s4,-dx,-dy), float4x4(-0.1277453750371933,0.1354728788137436,0.0256804432719946,0.1167555227875710,-0.1024271994829178,-0.0528051555156708,0.0269950665533543,0.0941862240433693,0.0371792986989021,0.0732116699218750,0.1277750879526138,0.1738849729299545,0.0403871834278107,0.0396098867058754,-0.0868479982018471,0.0375038161873817));
res += mul(Get(s5,-dx,-dy), float4x4(-0.0419271811842918,0.1997239589691162,0.1216654852032661,-0.1594803929328918,0.1423880904912949,0.0354901440441608,-0.0632104277610779,0.0104420753195882,-0.0427473224699497,0.1078006699681282,-0.0421136729419231,0.0006430609500967,-0.3178575336933136,-0.0021232250146568,0.0215385407209396,0.0094970166683197));
res += mul(Get(s0,-dx,0), float4x4(0.0913672372698784,-0.0247461497783661,0.0344529747962952,-0.0332466699182987,-0.1545275300741196,0.0562243349850178,0.0829191058874130,-0.0082367779687047,-0.0473413541913033,-0.1054579615592957,-0.0154331270605326,-0.1028158664703369,-0.0527186952531338,0.0198176428675652,-0.0783513709902763,0.1477948427200317));
res += mul(Get(s1,-dx,0), float4x4(0.1061349287629128,-0.0627705156803131,-0.0685055777430534,0.1754016280174255,-0.0413368307054043,0.0792416334152222,-0.0858133733272552,-0.2506660819053650,0.1318576931953430,0.1494114547967911,0.0385903418064117,0.0458939410746098,-0.0918852016329765,0.0650657340884209,-0.0963941290974617,0.1302558481693268));
res += mul(Get(s2,-dx,0), float4x4(-0.0055902833119035,0.0585533306002617,0.0265219248831272,0.0660399347543716,0.3182283937931061,0.0312723964452744,-0.1121716499328613,-0.1460985094308853,0.0199858173727989,0.0139332525432110,-0.1758309900760651,-0.1283769756555557,-0.1820861101150513,0.1237698644399643,-0.1239635124802589,0.2378439605236053));
res += mul(Get(s3,-dx,0), float4x4(0.1598212420940399,0.0645546242594719,0.0312232766300440,-0.4280838966369629,-0.1464229226112366,-0.2019723653793335,0.0936432853341103,-0.1352196335792542,-0.1762915998697281,-0.0070209139958024,0.0610970184206963,-0.2186815589666367,-0.0738271176815033,0.1670221686363220,0.1151223182678223,0.0441144257783890));
res += mul(Get(s4,-dx,0), float4x4(0.1950787007808685,0.0363900586962700,-0.2290883809328079,0.1494141966104507,-0.0144868446514010,0.0806278064846992,-0.1153262332081795,0.0403153523802757,-0.1241999343037605,-0.1078737005591393,-0.0763136222958565,0.2873430550098419,-0.2829883396625519,0.0304312724620104,-0.0001680133427726,0.0179080944508314));
res += mul(Get(s5,-dx,0), float4x4(-0.1374871730804443,0.1856654882431030,0.0216372627764940,0.0833853632211685,-0.2726050019264221,-0.1480993628501892,-0.0412608757615089,0.3334490060806274,-0.3462857306003571,0.1273385137319565,-0.0795001462101936,0.1063855886459351,0.2623090445995331,0.0046270512975752,-0.0385766401886940,-0.2157064527273178));
res += mul(Get(s0,-dx,dy), float4x4(0.0315182544291019,-0.0167036671191454,0.0100110992789268,-0.1534439176321030,0.0881289094686508,-0.0883529409766197,-0.0424325130879879,-0.0718903616070747,-0.1491559892892838,0.0465238392353058,0.0550878532230854,-0.1082677394151688,0.0248483959585428,0.0060129603371024,0.1426103860139847,-0.1826047897338867));
res += mul(Get(s1,-dx,dy), float4x4(-0.1943174004554749,0.0279039945453405,-0.0991984158754349,0.2502372562885284,0.0708902254700661,0.0513164103031158,-0.1359484791755676,0.0034964473452419,-0.0810244083404541,0.0095042185857892,-0.0884647071361542,0.0655255764722824,0.2003200650215149,-0.0392592921853065,0.0380635559558868,-0.2678535580635071));
res += mul(Get(s2,-dx,dy), float4x4(-0.0298860352486372,-0.0288269463926554,-0.0866319015622139,-0.1042705252766609,-0.1353663951158524,-0.0675240904092789,0.0014907541917637,0.3396841585636139,0.0105484277009964,0.1850098967552185,0.0323924720287323,-0.0093730920925736,0.2185018509626389,-0.0616504698991776,0.0753296092152596,-0.1387089639902115));
res += mul(Get(s3,-dx,dy), float4x4(-0.2085100263357162,0.1086646094918251,0.0033835363574326,0.0577405393123627,0.1530189961194992,-0.0586700029671192,0.0642309859395027,-0.3099549114704132,0.1341970562934875,0.0744359195232391,0.0529846288263798,-0.0958467051386833,-0.0247290488332510,-0.0714077949523926,0.0961090028285980,-0.0465179122984409));
res += mul(Get(s4,-dx,dy), float4x4(-0.0924199223518372,0.0838007032871246,-0.0089948242530227,0.1632958799600601,-0.0221756938844919,0.1061089634895325,0.0273327920585871,-0.0075396518222988,0.0410113222897053,0.0457502529025078,-0.0389094576239586,0.1285874247550964,0.1442797333002090,0.1595773398876190,-0.0565871410071850,-0.1738595813512802));
res += mul(Get(s5,-dx,dy), float4x4(0.0177574567496777,-0.1076898053288460,-0.0159394908696413,-0.2953613698482513,0.1258298605680466,-0.0498496927320957,0.0138944769278169,-0.2743214964866638,-0.0045263273641467,-0.1139181181788445,0.0938744023442268,-0.2959290742874146,-0.0407858528196812,-0.0453991927206516,-0.0395053364336491,0.0793735384941101));
res += mul(Get(s0,0,-dy), float4x4(-0.3257144391536713,-0.0292273033410311,-0.0588385351002216,-0.1407201737165451,0.0608996525406837,-0.0548924058675766,0.0011233490658924,-0.0388271845877171,-0.3008136749267578,0.0568371824920177,-0.0766961500048637,0.2245171666145325,0.2385841161012650,-0.0385494381189346,0.0861892104148865,0.1592609137296677));
res += mul(Get(s1,0,-dy), float4x4(0.4406696259975433,-0.1190337836742401,0.0016459356993437,0.0026627485640347,-0.3032624423503876,0.0254749786108732,-0.0111137079074979,-0.5087997317314148,-0.0289580281823874,-0.1928538680076599,0.0347940735518932,0.0756626278162003,-0.0737716481089592,-0.1912832260131836,0.0649309158325195,0.1486909985542297));
res += mul(Get(s2,0,-dy), float4x4(-0.1204735711216927,0.0579466558992863,-0.0205986388027668,0.0209625940769911,-0.3004716336727142,-0.0634060725569725,0.0302996039390564,0.1269748061895370,0.1254718452692032,-0.1644975543022156,0.0250011347234249,0.3235775530338287,0.2599103450775146,-0.0830257460474968,0.0192141160368919,0.1726168245077133));
res += mul(Get(s3,0,-dy), float4x4(-0.4893026649951935,0.0682131648063660,-0.0412015356123447,-0.1506546139717102,-0.5052672028541565,-0.1644400805234909,0.0468737967312336,-0.3982906639575958,-0.0997776836156845,-0.2352630347013474,0.1402854025363922,-0.3483731746673584,0.2344915419816971,-0.0930921286344528,0.0444031357765198,0.2433894425630569));
res += mul(Get(s4,0,-dy), float4x4(-0.1347275823354721,0.3045392036437988,-0.0629126951098442,-0.2183385789394379,0.1451203525066376,-0.0587828867137432,-0.0324927680194378,-0.0332190953195095,-0.0826024711132050,-0.1088527366518974,0.1912659555673599,0.0134489778429270,-0.0967859476804733,-0.0779454708099365,0.0616669878363609,0.2457892149686813));
res += mul(Get(s5,0,-dy), float4x4(-0.0003801264683716,0.1669640690088272,0.0278718769550323,-0.2520582079887390,-0.0209818519651890,0.0117035200819373,-0.0207982603460550,-0.5052789449691772,-0.0023138716351241,0.1719059199094772,-0.0814513787627220,0.0457106046378613,-0.0243006367236376,0.0839797481894493,-0.0857782587409019,0.1036189645528793));
res += mul(Get(s0,0,0), float4x4(0.0079392362385988,-0.0089280279353261,0.1814813464879990,-0.0863685309886932,-0.1784492433071136,0.2705463767051697,-0.1123780012130737,0.2825036644935608,-0.0279252044856548,-0.1937620490789413,-0.0075338901951909,-0.3837021291255951,0.2940160036087036,-0.0723841562867165,0.2153923064470291,0.2735615968704224));
res += mul(Get(s1,0,0), float4x4(0.2401160001754761,0.2095669358968735,-0.0976718813180923,0.1517300605773926,-0.2776319682598114,-0.1925032585859299,-0.0264946594834328,0.0827444419264793,-0.6272651553153992,0.0112907681614161,0.2600648105144501,-0.0563863180577755,0.0662937611341476,0.2379160225391388,0.0087676616385579,-0.4241460859775543));
res += mul(Get(s2,0,0), float4x4(-0.3312900066375732,-0.1097694113850594,0.0369332656264305,-0.1202164739370346,0.0703031644225121,-0.3685826063156128,0.1711335629224777,-0.2235694974660873,-0.0667969062924385,0.2757659256458282,-0.0220659561455250,-0.0459838844835758,-0.0906005054712296,-0.1909979730844498,-0.0644604265689850,-0.1123888865113258));
res += mul(Get(s3,0,0), float4x4(0.0133550921455026,-0.1108502671122551,0.0987031012773514,-0.1728450059890747,0.0226420722901821,-0.1500909477472305,0.1472854763269424,-0.1552493721246719,-0.0229456536471844,-0.4621519744396210,0.0548298284411430,0.0077350833453238,-0.0410827659070492,-0.0163860339671373,-0.0022748128976673,0.4220787584781647));
res += mul(Get(s4,0,0), float4x4(0.0806732922792435,0.0988697782158852,-0.2328323423862457,0.1055280789732933,-0.3508093357086182,0.2358957976102829,-0.0921781957149506,0.0803751721978188,0.0502934902906418,0.4037487506866455,0.0808221325278282,0.0890448987483978,-0.3844062387943268,-0.1355501711368561,0.0520878247916698,-0.1392560005187988));
res += mul(Get(s5,0,0), float4x4(-0.1962858140468597,0.0541761592030525,-0.0343578830361366,0.1007339507341385,-0.1868456304073334,0.0759288221597672,0.0485804378986359,0.3347860276699066,0.0030031267087907,-0.0291750077158213,-0.0652070045471191,0.5597934722900391,-0.0207762531936169,-0.1023843437433243,0.1079745963215828,0.1109399572014809));
res += mul(Get(s0,0,dy), float4x4(0.0362145714461803,-0.0380301848053932,-0.0350575223565102,-0.1017109155654907,0.1741192042827606,-0.0709384754300117,0.0697148665785789,0.1697867363691330,-0.0628185048699379,0.0499097928404808,0.0172758679836988,-0.2121752798557281,-0.0305636133998632,-0.1208162531256676,-0.1309142112731934,0.0363648794591427));
res += mul(Get(s1,0,dy), float4x4(-0.1541499644517899,0.0814622938632965,-0.0699594542384148,0.1220813095569611,0.0449623614549637,0.0122034437954426,0.0526532605290413,-0.3342460989952087,0.1878862380981445,-0.0380136296153069,0.0298202838748693,-0.2168077677488327,0.1700280010700226,0.0459747463464737,0.0126006705686450,-0.0803609564900398));
res += mul(Get(s2,0,dy), float4x4(0.0797098278999329,0.0014162301085889,0.1251468807458878,-0.3034813106060028,0.1188132241368294,-0.0053503182716668,0.0749858766794205,-0.2713054716587067,-0.0856939479708672,0.2177700847387314,-0.0134012913331389,0.0507277995347977,0.0008636554121040,-0.0182042215019464,0.0025091250427067,0.0977879092097282));
res += mul(Get(s3,0,dy), float4x4(-0.1577744334936142,0.0154891442507505,0.0911800488829613,-0.0787816271185875,-0.0006738116499037,-0.0982444286346436,0.0588055141270161,-0.1224615052342415,-0.1314754933118820,-0.3283152878284454,0.2340723872184753,-0.3864586353302002,-0.1585581004619598,0.1932592839002609,-0.1406057029962540,0.1257710158824921));
res += mul(Get(s4,0,dy), float4x4(-0.0835866779088974,-0.0524934306740761,-0.0564308688044548,0.3052602112293243,0.0471016094088554,0.1635624617338181,-0.1117879003286362,0.0332267358899117,0.2380114048719406,-0.1154953241348267,0.1074668765068054,0.0910649970173836,0.1914995908737183,0.1107666343450546,-0.0635026097297668,0.0792330801486969));
res += mul(Get(s5,0,dy), float4x4(0.3395951390266418,0.0501051433384418,-0.1015511155128479,-0.2121814191341400,0.1872694343328476,-0.1452555060386658,0.0444105155766010,-0.1845745295286179,0.2419639378786087,0.0756570324301720,0.0783791467547417,-0.2812873721122742,0.0671443417668343,-0.0634754896163940,0.0108968280255795,-0.1749429851770401));
res += mul(Get(s0,dx,-dy), float4x4(0.0772676840424538,0.0667752176523209,-0.0031700150575489,-0.0476363524794579,0.0177375394850969,-0.0219871159642935,-0.0105178989470005,-0.1202350407838821,-0.3904725909233093,-0.0416202358901501,0.0595469661056995,0.0935254618525505,0.0567507594823837,0.0143008241429925,0.1274307817220688,0.3321519196033478));
res += mul(Get(s1,dx,-dy), float4x4(0.2506386041641235,-0.0667955055832863,0.0034100399352610,0.3444422781467438,-0.0010125820990652,0.0534441955387592,-0.0321132987737656,-0.2515133321285248,0.0351156629621983,0.0098455511033535,-0.0380516797304153,-0.1385177820920944,-0.2759047746658325,0.0350107923150063,-0.1347204744815826,0.0658620670437813));
res += mul(Get(s2,dx,-dy), float4x4(-0.1458932459354401,0.0174940992146730,0.0456208027899265,-0.0364963263273239,-0.0758318156003952,0.0814561694860458,0.0820748507976532,0.1847533285617828,-0.0885244309902191,0.0994160249829292,-0.0978650450706482,0.1200074180960655,0.0543425492942333,0.0415112860500813,-0.0991616621613503,-0.0367059484124184));
res += mul(Get(s3,dx,-dy), float4x4(-0.0992824360728264,0.0318999886512756,0.0299702286720276,-0.1141353398561478,-0.2404239922761917,-0.0579870454967022,0.0539580881595612,-0.5191124081611633,0.3001067340373993,0.0578218922019005,0.0407670438289642,0.1885340064764023,0.0675304308533669,-0.0428114123642445,-0.0171632934361696,-0.0349895805120468));
res += mul(Get(s4,dx,-dy), float4x4(-0.2138039171695709,-0.0089753130450845,0.0963613837957382,-0.5440198183059692,0.0705337971448898,-0.0714644417166710,-0.0727470517158508,0.0229511205106974,0.0530115216970444,0.0070256283506751,0.0873033776879311,0.0131147950887680,0.0702303647994995,0.0654404386878014,-0.0664140209555626,0.2862889468669891));
res += mul(Get(s5,dx,-dy), float4x4(0.1347528845071793,-0.1490948796272278,0.2462641149759293,-0.1320294290781021,-0.2117087393999100,-0.0477582588791847,0.0252102483063936,-0.1519710570573807,-0.0105899749323726,-0.1800158321857452,0.1035358607769012,-0.0514831133186817,0.0018924856558442,0.0704950764775276,-0.0731056928634644,-0.1589449793100357));
res += mul(Get(s0,dx,0), float4x4(0.0027655977755785,-0.0256753042340279,-0.0364590547978878,-0.0428010635077953,-0.0162154063582420,0.0385782904922962,0.0235667973756790,-0.0969415307044983,-0.0123094366863370,0.0013154678745195,-0.0296922549605370,0.0832441672682762,-0.0607368350028992,0.0527798719704151,-0.1245710924267769,0.2652473449707031));
res += mul(Get(s1,dx,0), float4x4(0.1855576634407043,0.0734512731432915,-0.0631713345646858,0.1524117439985275,-0.3236378133296967,-0.0004613446362782,-0.0216101538389921,0.1935051679611206,-0.1519261449575424,0.0605999380350113,0.1657080352306366,-0.2062909603118896,0.1691382229328156,-0.0739806145429611,0.0997909158468246,-0.1037035137414932));
res += mul(Get(s2,dx,0), float4x4(-0.3877075910568237,0.0131295993924141,-0.0407099649310112,-0.2385123372077942,-0.1975389868021011,0.0543658211827278,-0.0383216887712479,-0.1724131852388382,0.1468592733144760,-0.0251453146338463,0.0416882783174515,-0.0713784098625183,-0.0765042528510094,-0.0859683454036713,0.1317334771156311,0.0094820596277714));
res += mul(Get(s3,dx,0), float4x4(0.1906417161226273,-0.0419493690133095,0.0715100541710854,-0.4045969843864441,0.0682283639907837,0.0642588511109352,0.1159361004829407,-0.1394287794828415,-0.0917405784130096,-0.1534885764122009,-0.0478430837392807,-0.1372384727001190,0.0506525821983814,0.0072408579289913,0.0196184385567904,-0.0577171258628368));
res += mul(Get(s4,dx,0), float4x4(-0.1867683231830597,-0.0850077793002129,-0.0734287127852440,-0.0493554659187794,-0.0780901759862900,-0.1688669025897980,0.0193031914532185,-0.2057171761989594,-0.1428807973861694,-0.1183344051241875,0.0952036008238792,-0.4358049035072327,-0.0732130184769630,0.0555866621434689,0.0418229177594185,-0.0146213611587882));
res += mul(Get(s5,dx,0), float4x4(-0.1063499152660370,0.0863459557294846,-0.0559359416365623,0.1578133702278137,-0.1112734228372574,-0.0485858470201492,-0.0696139559149742,-0.0662681534886360,0.1179343983530998,0.1388711780309677,-0.0260644834488630,0.0762710720300674,-0.3059824407100677,-0.0262201726436615,-0.0237132366746664,0.2655238807201385));
res += mul(Get(s0,dx,dy), float4x4(-0.0114183584228158,-0.0246965959668159,0.0097303222864866,-0.0068865367211401,0.0264824852347374,-0.0326778478920460,-0.1171521171927452,0.0122489947825670,0.1669474989175797,-0.0386786907911301,0.0801936611533165,-0.0383483693003654,0.0590241700410843,0.1414523571729660,-0.0176969356834888,-0.0449111349880695));
res += mul(Get(s1,dx,dy), float4x4(-0.0248366836458445,0.0025227596051991,-0.0151060679927468,0.1857195645570755,0.2931689023971558,0.1699723899364471,0.0274936519563198,-0.3703216314315796,-0.0635639652609825,0.0184781271964312,-0.1602269858121872,0.1899511069059372,0.1544556319713593,-0.0355773456394672,-0.0630514398217201,-0.0552030690014362));
res += mul(Get(s2,dx,dy), float4x4(0.0537007711827755,-0.0970350429415703,0.0681274458765984,-0.3285882771015167,0.0587118789553642,0.0101946284994483,-0.0472764708101749,-0.0902815833687782,0.0663003623485565,0.1060037240386009,0.0248587857931852,-0.2335373014211655,0.0848818123340607,0.0385775491595268,-0.0310625974088907,-0.0896764546632767));
res += mul(Get(s3,dx,dy), float4x4(-0.2152779847383499,0.1024793758988380,-0.0415952727198601,0.0159646254032850,0.0068462979979813,0.0183029714971781,-0.0712238848209381,-0.0492725074291229,-0.0468181483447552,-0.0708654224872589,-0.0476150177419186,-0.0449058860540390,-0.0782655552029610,0.1156111508607864,-0.0316189154982567,-0.0559148490428925));
res += mul(Get(s4,dx,dy), float4x4(0.0148876635357738,0.0993878543376923,-0.0397361814975739,0.0350409671664238,-0.0476509332656860,0.1247970461845398,-0.0973767638206482,0.1486042439937592,0.1304882168769836,-0.0223693754523993,0.0237915441393852,0.0820185318589211,-0.1018124297261238,0.0962491557002068,-0.0683224946260452,0.2825528383255005));
res += mul(Get(s5,dx,dy), float4x4(-0.0104082366451621,0.1117905229330063,-0.0566274076700211,-0.1034426465630531,0.1765179634094238,0.0314542800188065,-0.0116442563012242,-0.0078239785507321,0.0881859138607979,0.0727782547473907,-0.0051404936239123,0.0836754217743874,0.1908159404993057,-0.0143944406881928,0.0721484273672104,-0.2731889784336090));
res = max(float4(0, 0, 0, 0), res) + float4(-0.0327559933066368,0.2965893745422363,0.9768632650375366,0.0667813196778297) * min(float4(0, 0, 0, 0), res);
return res;
}