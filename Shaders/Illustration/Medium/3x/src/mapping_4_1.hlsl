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
float4 res = float4(-0.0103195179253817,-0.0162374619394541,0.0075720506720245,-0.0029914665501565);
res += mul(Get(s0,-dx,-dy), float4x4(-0.1888759732246399,-0.0957703292369843,-0.1370087862014771,-0.0780535638332367,-0.0362474396824837,-0.0476990267634392,0.0138088967651129,0.0342692136764526,-0.1396544277667999,0.1803476512432098,-0.1252855062484741,0.2884604930877686,-0.0212063118815422,0.0791617706418037,0.0613621883094311,0.0478085391223431));
res += mul(Get(s1,-dx,-dy), float4x4(-0.2351308166980743,0.2130796015262604,-0.1315177977085114,-0.1023842766880989,-0.1006092205643654,0.1079824119806290,0.0327155068516731,0.0091302394866943,-0.1056007668375969,-0.0209157448261976,-0.1592650711536407,-0.1616533696651459,-0.1428489238023758,-0.0234388783574104,0.0794017538428307,-0.1419305950403214));
res += mul(Get(s2,-dx,-dy), float4x4(-0.1323547065258026,0.0584208779036999,0.0029264399781823,0.0173433981835842,-0.1239679455757141,0.2331747561693192,0.1304831355810165,0.2128762900829315,0.0709863007068634,0.0181542001664639,0.0003642806841526,0.0958039760589600,0.0269743204116821,0.0049643777310848,0.0693651288747787,-0.0277958828955889));
res += mul(Get(s3,-dx,-dy), float4x4(-0.0281365010887384,-0.0539750345051289,-0.0397892035543919,-0.0259018819779158,0.1353108733892441,-0.0921332165598869,0.1966256946325302,-0.0272323675453663,0.2589645981788635,0.0075292345136404,-0.0572486110031605,0.0989720076322556,-0.0362294912338257,0.0375379621982574,-0.1265358924865723,-0.0902563184499741));
res += mul(Get(s4,-dx,-dy), float4x4(0.0116645805537701,0.0445488095283508,0.0407052300870419,-0.0473661832511425,-0.0274627767503262,0.2115039229393005,-0.0169742833822966,0.0024760945234448,0.0651877820491791,0.1545133739709854,-0.0167100243270397,-0.1306419372558594,-0.0339763425290585,0.1061041131615639,0.0850833430886269,0.1012322679162025));
res += mul(Get(s5,-dx,-dy), float4x4(-0.1014166399836540,0.1618523746728897,-0.1285034120082855,-0.0252904631197453,-0.0188920386135578,0.1769154071807861,0.0623387843370438,-0.0501328073441982,0.1930903792381287,-0.3470465540885925,0.0003480471496005,0.2204016894102097,0.1287348121404648,-0.1619645506143570,-0.0018542385660112,0.0108402594923973));
res += mul(Get(s0,-dx,0), float4x4(-0.0420475266873837,0.0569427832961082,-0.1603902280330658,0.1399569809436798,0.0131883677095175,0.0000935146817937,0.0824491530656815,-0.0957372188568115,-0.4468236565589905,-0.1125946193933487,0.0209391247481108,-0.0748984962701797,-0.0584773235023022,0.1171672418713570,-0.2910594940185547,0.2378494143486023));
res += mul(Get(s1,-dx,0), float4x4(0.0215439926832914,-0.6202608942985535,-0.3588816821575165,-0.2502750456333160,0.1824991703033447,-0.0587655790150166,0.1977005451917648,0.0195122659206390,0.0192838516086340,0.0472192056477070,-0.1043935194611549,-0.0134316273033619,0.3587487637996674,-0.1660025715827942,0.2734135687351227,-0.2806251645088196));
res += mul(Get(s2,-dx,0), float4x4(-0.2205699682235718,-0.0824661403894424,0.1329075098037720,0.2553424537181854,0.1207585558295250,-0.2197974622249603,0.0715466067194939,0.0236765909940004,-0.0224873665720224,0.1114474833011627,-0.1811648011207581,0.1125185713171959,0.0517653375864029,0.0875854790210724,0.0088667199015617,-0.1157887205481529));
res += mul(Get(s3,-dx,0), float4x4(0.0064280987717211,0.0281145684421062,0.1269248872995377,-0.1244726702570915,0.1669097542762756,0.1696234941482544,0.2963899970054626,-0.0472350977361202,-0.2902429103851318,0.2182866036891937,-0.2344307452440262,0.1161728054285049,0.1035501733422279,-0.0357018560171127,-0.0566248111426830,-0.1683124601840973));
res += mul(Get(s4,-dx,0), float4x4(0.0331935472786427,-0.1510406881570816,0.0460569225251675,-0.0093171559274197,-0.0137918693944812,-0.0530893504619598,0.3045273423194885,-0.2094097137451172,-0.1551683843135834,-0.2056172043085098,0.0371372587978840,0.0201524030417204,0.0617413967847824,0.0346331559121609,0.0206333249807358,-0.0136415455490351));
res += mul(Get(s5,-dx,0), float4x4(0.0831598415970802,-0.2534265220165253,-0.0159078687429428,-0.2207679897546768,-0.0364173799753189,-0.0901973694562912,0.2435504943132401,-0.1908372193574905,-0.2121030986309052,0.3070419132709503,-0.0667724460363388,0.2512876391410828,-0.0148346107453108,0.1743669211864471,-0.2404431104660034,0.0772596225142479));
res += mul(Get(s0,-dx,dy), float4x4(0.0697711557149887,-0.0359616056084633,0.0087930317968130,-0.0095001505687833,0.0099796960130334,0.0593012794852257,0.0841212570667267,-0.0750832706689835,0.1975467503070831,0.1673842668533325,0.0006721856771037,0.1823816150426865,0.0892511606216431,0.0113053685054183,0.1705317944288254,-0.0251721590757370));
res += mul(Get(s1,-dx,dy), float4x4(-0.0734629780054092,-0.0530531778931618,0.1521896719932556,0.0907386317849159,-0.0423309020698071,0.0016764154424891,0.0999330803751945,0.0396094880998135,-0.0813051685690880,0.0413861870765686,-0.0169283337891102,0.0123842973262072,-0.1599704474210739,0.2679207026958466,0.3651441633701324,-0.1217308342456818));
res += mul(Get(s2,-dx,dy), float4x4(0.0572700165212154,-0.1364552229642868,-0.0231492649763823,0.0406022928655148,-0.0185926984995604,0.0589289106428623,-0.0422124713659286,-0.0645791068673134,0.0061858706176281,-0.0843819081783295,-0.0910788103938103,-0.0161639656871557,0.1018241941928864,-0.0034819238353521,0.0882677808403969,0.0341798141598701));
res += mul(Get(s3,-dx,dy), float4x4(0.0008787939441390,-0.0007597621879540,0.1254289597272873,0.1004851981997490,-0.0713008344173431,0.0648387596011162,0.1278035789728165,0.0258083809167147,0.1921848952770233,-0.1587758511304855,-0.2485783547163010,-0.0270330682396889,-0.0012570968829095,0.1572277396917343,-0.0698111355304718,0.0336450003087521));
res += mul(Get(s4,-dx,dy), float4x4(-0.0108150132000446,0.0242239944636822,0.0667628198862076,-0.0028160193469375,0.1364779174327850,-0.0335254110395908,0.1105419397354126,-0.0173475556075573,-0.0585054829716682,-0.1205352917313576,-0.0037776976823807,0.0468534454703331,0.0700610727071762,0.2426227033138275,0.0782582759857178,-0.0343654714524746));
res += mul(Get(s5,-dx,dy), float4x4(-0.1492137163877487,-0.0668838024139404,0.0847877264022827,-0.1298544406890869,0.0500571988523006,-0.1280889213085175,0.1612424850463867,0.0125677371397614,-0.0144998664036393,-0.1156462877988815,-0.0427533239126205,-0.1106382235884666,-0.1340775042772293,0.3198368847370148,-0.1262372136116028,0.0039739212952554));
res += mul(Get(s0,0,-dy), float4x4(-0.0496611073613167,-0.2062529176473618,0.0176469329744577,-0.3195703625679016,0.0960060060024261,-0.2362381815910339,0.0069271810352802,0.1774335652589798,0.2403258532285690,-0.0402011945843697,0.3310232460498810,0.0360221192240715,-0.1365071237087250,0.5062419176101685,0.0007423820788972,-0.1116284057497978));
res += mul(Get(s1,0,-dy), float4x4(0.1994495242834091,0.0277068763971329,0.0189641993492842,-0.1513656973838806,-0.0411414504051208,0.1871044784784317,0.0627912655472755,-0.0659180656075478,-0.0158070717006922,-0.2252431362867355,-0.0379306562244892,-0.0784821733832359,-0.0480275899171829,0.0077394903637469,-0.2105832397937775,-0.1757922917604446));
res += mul(Get(s2,0,-dy), float4x4(-0.0684538558125496,-0.2712675034999847,0.0900777950882912,0.0214726012200117,-0.0663701072335243,0.2196497619152069,-0.0581268556416035,-0.1101379618048668,0.0912024676799774,0.0024866398889571,0.1490549296140671,-0.1780459731817245,0.0434059426188469,0.1897996813058853,-0.0715020671486855,0.0957513451576233));
res += mul(Get(s3,0,-dy), float4x4(-0.0070722172968090,-0.2815577983856201,-0.1820344179868698,-0.0427532419562340,0.0792414918541908,0.0142752239480615,-0.0525973960757256,0.0391283109784126,0.1716235727071762,-0.0701815336942673,-0.1474017500877380,-0.2432878613471985,-0.2297955155372620,0.2696067988872528,0.0074706743471324,-0.1293548643589020));
res += mul(Get(s4,0,-dy), float4x4(0.2989156246185303,-0.2979239225387573,-0.0001389927492710,0.2307396680116653,0.0756315439939499,-0.0392291992902756,0.1125712841749191,0.0104657579213381,0.0041123908013105,0.0938179269433022,-0.0644849091768265,0.1504344046115875,-0.1661258786916733,0.1333694159984589,-0.0248240344226360,-0.1459080427885056));
res += mul(Get(s5,0,-dy), float4x4(0.1898563653230667,-0.1013846546411514,-0.0374234691262245,-0.1140928938984871,-0.0773526504635811,0.3369552195072174,-0.0054486724548042,-0.0035836040042341,-0.0310772955417633,-0.1597945541143417,-0.1503040790557861,0.0326570868492126,0.0599079392850399,-0.2988769710063934,0.0022911420091987,0.0178694203495979));
res += mul(Get(s0,0,0), float4x4(-0.0054031717590988,-0.1428297013044357,0.0064400332048535,-0.0815291702747345,0.0930620208382607,0.0739698633551598,0.0884624049067497,0.2929604649543762,0.1538834720849991,-0.0543822199106216,0.2998623549938202,-0.7298699617385864,-0.4444377720355988,-0.4797038137912750,0.0020282356999815,-0.4688216447830200));
res += mul(Get(s1,0,0), float4x4(-0.0408944413065910,-0.1640684306621552,0.0960620120167732,-0.0358796827495098,0.1330857723951340,-0.0621721297502518,0.0205437149852514,0.4272757172584534,0.0715632736682892,-0.0896932408213615,0.0407305769622326,0.0658650845289230,0.4155549705028534,-0.0153677379712462,-0.2684435844421387,0.2775668203830719));
res += mul(Get(s2,0,0), float4x4(-0.4652412533760071,-0.5335904955863953,-0.0260384064167738,-0.3082570135593414,-0.1940435171127319,-0.0569931901991367,-0.3085142374038696,-0.1642869263887405,0.2734569907188416,0.0971896499395370,0.5268887281417847,-0.1545537114143372,0.0106802796944976,0.3337637484073639,-0.2579778730869293,-0.1758812218904495));
res += mul(Get(s3,0,0), float4x4(-0.2958144247531891,-0.0560472495853901,-0.5764815807342529,-0.4904120862483978,-0.3017372488975525,0.2368364036083221,-0.2913514375686646,-0.1056674942374229,-0.0754523724317551,-0.1172363162040710,-0.0866292268037796,-0.2339646965265274,0.2762467563152313,-0.1766445040702820,-0.2726771831512451,0.0649803355336189));
res += mul(Get(s4,0,0), float4x4(-0.4479854702949524,-0.1055094301700592,-0.3418234288692474,0.0691010951995850,-0.0605694130063057,0.0445145890116692,-0.0280035249888897,0.0973694920539856,-0.2053810060024261,-0.0673876702785492,-0.1201341524720192,-0.0393996275961399,0.2083094269037247,0.0694308951497078,0.0884678959846497,0.1402085274457932));
res += mul(Get(s5,0,0), float4x4(-0.3588272035121918,0.0654705613851547,-0.2769363224506378,-0.1903179287910461,0.0465419031679630,0.0922046825289726,-0.3601557314395905,0.0647011548280716,-0.1614273637533188,0.2623917460441589,-0.1513910740613937,-0.0028235819190741,0.0972076058387756,0.2762696743011475,-0.0406359732151031,-0.0838306397199631));
res += mul(Get(s0,0,dy), float4x4(-0.0060344794765115,-0.0773325711488724,0.0105686923488975,0.0460449829697609,-0.1490279585123062,-0.1408553868532181,0.0588629879057407,0.0279483962804079,-0.2103553563356400,0.4358963072299957,0.3688571155071259,-0.2478403747081757,0.1827051043510437,-0.2706589400768280,-0.0503492392599583,0.0466799922287464));
res += mul(Get(s1,0,dy), float4x4(0.0074987914413214,-0.1306504607200623,-0.0480973683297634,0.1418424397706985,-0.0148519678041339,0.0494500845670700,-0.0349287800490856,0.0194216948002577,-0.0962391123175621,0.0086805569007993,0.0192737635225058,-0.1039698049426079,0.1448586732149124,0.1658740341663361,0.0413343869149685,-0.0987387374043465));
res += mul(Get(s2,0,dy), float4x4(0.0761192813515663,-0.1417690962553024,-0.0034945050720125,-0.0167074128985405,-0.1343861371278763,-0.2325828969478607,-0.1826598942279816,-0.0826447829604149,-0.1391104757785797,-0.0229749251157045,0.2048201262950897,0.0113126179203391,-0.0900779515504837,-0.0397662520408630,-0.2017464488744736,-0.1396796852350235));
res += mul(Get(s3,0,dy), float4x4(-0.0050910860300064,-0.8661217689514160,-0.1240266785025597,-0.0696672052145004,-0.1608849167823792,-0.3260472714900970,-0.1094018146395683,-0.0718446895480156,-0.0254766996949911,-0.1082353889942169,-0.1643457412719727,-0.1081550568342209,-0.0028883789200336,0.4096407890319824,-0.0988023355603218,0.0247213225811720));
res += mul(Get(s4,0,dy), float4x4(0.0129482643678784,0.0746337622404099,-0.0540668554604053,0.0131541248410940,0.1152876093983650,0.0713323876261711,0.0668984130024910,0.0790848284959793,-0.0951272770762444,0.2039381563663483,0.0845622867345810,0.1200476884841919,0.0694508925080299,-0.0398544743657112,0.0585565827786922,-0.0313986316323280));
res += mul(Get(s5,0,dy), float4x4(0.2264312505722046,-0.4501075744628906,-0.0339895784854889,-0.2597892582416534,-0.0936953723430634,-0.0890943333506584,-0.1829847246408463,-0.0187979564070702,-0.0586493872106075,-0.0194297656416893,0.1143847629427910,0.0895966067910194,-0.0136332074180245,-0.1101702898740768,-0.0591455847024918,-0.0398736745119095));
res += mul(Get(s0,dx,-dy), float4x4(0.0329056531190872,-0.0740113183856010,-0.0844050943851471,0.0491079837083817,0.0850360691547394,0.0172839220613241,0.0152530670166016,-0.0848846584558487,-0.2810658812522888,0.1797336190938950,-0.0131324967369437,0.0322026349604130,0.0760890394449234,0.1028463169932365,0.0052230004221201,-0.0388572216033936));
res += mul(Get(s1,dx,-dy), float4x4(0.0585770979523659,-0.1186336576938629,0.0832213163375854,0.1999578624963760,0.0100647639483213,-0.0326029397547245,-0.0039112549275160,-0.0094123305752873,-0.0333025604486465,-0.0316718742251396,0.0080667752772570,-0.0009531229152344,-0.0625260993838310,0.1215153336524963,-0.1670302897691727,-0.0438389517366886));
res += mul(Get(s2,dx,-dy), float4x4(-0.0794131532311440,-0.0288793426007032,-0.0493467412889004,-0.0433347597718239,-0.0172701478004456,0.2741637825965881,-0.1050988435745239,-0.0033537480048835,-0.0003434451064095,0.0021930965594947,0.0043019312433898,0.0941952317953110,0.0630350112915039,0.0002244686329504,0.0072493595071137,-0.0614741370081902));
res += mul(Get(s3,dx,-dy), float4x4(-0.0412886589765549,-0.0373335257172585,0.0340743474662304,-0.0202200543135405,0.0611223988234997,0.0230505578219891,0.0061442661099136,0.0626861974596977,-0.0278158336877823,-0.0069366847164929,0.0389804616570473,-0.0458101406693459,0.0184266120195389,0.0115889841690660,-0.2434726804494858,-0.0678719952702522));
res += mul(Get(s4,dx,-dy), float4x4(0.0152881378307939,0.0920407176017761,-0.0039573800750077,0.0875566154718399,0.0946620851755142,-0.0527127869427204,0.0946912020444870,-0.1783881038427353,0.1021486520767212,0.1354690045118332,0.0247666798532009,0.0721248909831047,-0.0901777446269989,0.0911958217620850,0.0533866100013256,-0.0453143753111362));
res += mul(Get(s5,dx,-dy), float4x4(0.0917018949985504,-0.3414677083492279,-0.0950014442205429,-0.0361437536776066,0.0172884035855532,0.1028092056512833,-0.0276056062430143,0.0073319030925632,-0.0968350172042847,0.0862982049584389,-0.0566020123660564,-0.2625871598720551,-0.0151371825486422,-0.1281542181968689,-0.0641998872160912,0.0209087375551462));
res += mul(Get(s0,dx,0), float4x4(0.0009344174177386,-0.0042794337496161,-0.0073392600752413,-0.0206953603774309,0.0032992397900671,-0.0517429076135159,-0.0592068023979664,-0.1419488936662674,-0.0571651086211205,-0.3112795650959015,0.1362460404634476,0.4687734544277191,0.1457552611827850,-0.0046604122035205,0.0322342142462730,-0.0913584530353546));
res += mul(Get(s1,dx,0), float4x4(-0.1520882546901703,0.0962881222367287,-0.0570655427873135,-0.0137592386454344,0.0105015113949776,-0.0083502614870667,-0.0104401130229235,0.0141716403886676,-0.0028288417961448,0.0384209193289280,-0.0262202937155962,0.0376618057489395,0.0792644694447517,-0.0157022550702095,-0.0410245247185230,-0.2533955276012421));
res += mul(Get(s2,dx,0), float4x4(-0.2251765877008438,-0.2091899961233139,0.1816202104091644,0.0659727230668068,0.1639039516448975,-0.1072979643940926,-0.0896901562809944,-0.0817551240324974,-0.1798061430454254,0.1413263976573944,0.3229310214519501,0.0705325007438660,0.0648411512374878,0.0226964466273785,-0.0459857918322086,0.1016784161329269));
res += mul(Get(s3,dx,0), float4x4(0.0081700561568141,-0.0019384858896956,0.0122264390811324,0.1173791885375977,-0.0228104107081890,-0.0756842568516731,-0.1225049346685410,0.0138785270974040,0.0401961542665958,-0.0195346865803003,-0.0385524034500122,-0.2185343205928802,-0.0008643111796118,-0.0898808538913727,-0.1618997007608414,-0.2269252538681030));
res += mul(Get(s4,dx,0), float4x4(0.0355016775429249,0.0765239894390106,0.0556068047881126,0.1647754311561584,-0.0019231820479035,0.1783198267221451,-0.0441283285617828,-0.1114825010299683,-0.0565497726202011,-0.2103343904018402,0.1398405134677887,-0.0167312864214182,0.0778513774275780,0.0080477558076382,-0.1328918337821960,-0.0554412119090557));
res += mul(Get(s5,dx,0), float4x4(-0.0636571869254112,0.2749762833118439,0.2172592580318451,0.1177980601787567,0.0042879967950284,0.0537803061306477,-0.0772483274340630,0.1164472922682762,-0.1891975700855255,0.0076526240445673,0.2233009189367294,0.1951967775821686,0.0648565590381622,0.1162226498126984,0.0401334203779697,0.1319830864667892));
res += mul(Get(s0,dx,dy), float4x4(-0.0619798414409161,-0.0432094410061836,-0.0314528234302998,0.0063112494535744,-0.0192616172134876,0.0759729892015457,-0.1361418962478638,0.1024786308407784,0.1121409609913826,0.0872039198875427,0.0949321091175079,0.2591488659381866,-0.0420779250562191,-0.0500197149813175,0.0541630052030087,-0.0484699644148350));
res += mul(Get(s1,dx,dy), float4x4(0.0139505239203572,-0.1902854293584824,-0.0253772903233767,-0.1510553359985352,-0.0402728579938412,0.0444336645305157,-0.0214150361716747,-0.0501729622483253,-0.0205778498202562,0.0817367732524872,0.0112130986526608,0.0297107994556427,0.2936718463897705,0.7439373135566711,-0.3215163648128510,-0.1321039199829102));
res += mul(Get(s2,dx,dy), float4x4(0.0463525280356407,-0.3647204935550690,0.0973067209124565,0.0022582905367017,-0.1183244735002518,0.1195906475186348,-0.0247112605720758,-0.0112170809879899,-0.0000518974338775,-0.1594698429107666,0.1797368526458740,0.1223807707428932,-0.0056409914977849,0.0054839169606566,0.0759471356868744,0.0333785377442837));
res += mul(Get(s3,dx,dy), float4x4(0.0609621666371822,-0.1796729713678360,0.0227131322026253,0.0416127853095531,-0.0419137924909592,-0.1966989189386368,0.0378826186060905,0.0296316910535097,0.0273077152669430,-0.0250201094895601,0.0930760577321053,0.0982541367411613,0.0101181026548147,0.1208823546767235,-0.0784842297434807,-0.1351538300514221));
res += mul(Get(s4,dx,dy), float4x4(0.0339523144066334,0.0584065541625023,0.0138206053525209,0.0043839327991009,-0.0750380903482437,0.1599458009004593,-0.0799857154488564,-0.0512431226670742,-0.1713617742061615,-0.0552594885230064,-0.0197036024183035,-0.0005971924401820,0.0135908527299762,0.0590434260666370,-0.0192781090736389,-0.1291339397430420));
res += mul(Get(s5,dx,dy), float4x4(0.0111964307725430,-0.3073306083679199,0.0254361145198345,-0.0301839783787727,0.0005694034043700,-0.1033609807491302,-0.0496481955051422,-0.0683447644114494,-0.0934820920228958,-0.4435124397277832,-0.0602989755570889,0.1925927996635437,-0.0036788459401578,0.2740512192249298,-0.0080547016113997,-0.0490181744098663));
res = max(float4(0, 0, 0, 0), res) + float4(0.1000725477933884,0.0115117952227592,0.0335554741322994,0.0602241903543472) * min(float4(0, 0, 0, 0), res);
return res;
}