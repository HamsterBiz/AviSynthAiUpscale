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
float4 res = float4(-0.0006693136529066,-0.0247917138040066,-0.0948114991188049,0.0553329661488533);
res += mul(Get(s0,-dx,-dy), float4x4(0.0051068738102913,0.0420445837080479,0.0244168899953365,-0.0015400471165776,0.0007575055933557,-0.0776065066456795,0.0187934972345829,0.0154804056510329,-0.1348343342542648,-0.0252143889665604,0.0500257872045040,0.0725797042250633,-0.0743495598435402,0.1330184489488602,-0.0230797845870256,-0.0006613247678615));
res += mul(Get(s1,-dx,-dy), float4x4(0.0412929318845272,-0.0969905629754066,0.0078171715140343,-0.0113301761448383,0.0253093950450420,0.0439486391842365,-0.0084823761135340,0.0591122396290302,0.1014675721526146,-0.0916364863514900,-0.0373571515083313,0.0567281618714333,0.0124409114941955,0.0701767876744270,0.0349687971174717,-0.0235436335206032));
res += mul(Get(s2,-dx,-dy), float4x4(0.0014904253184795,-0.1063122823834419,0.0047564781270921,0.0097760055214167,-0.0381170064210892,0.3030053377151489,-0.0354438871145248,-0.0534939020872116,-0.1165917292237282,-0.0161180328577757,0.0102969082072377,-0.0352613031864166,0.0267921071499586,0.0747841075062752,-0.0218620598316193,-0.0601483322679996));
res += mul(Get(s3,-dx,-dy), float4x4(-0.0542173348367214,-0.1564945876598358,0.0026206360198557,0.0743830874562263,0.0331643223762512,-0.0607514418661594,0.0786519497632980,0.0031800852157176,0.0729258209466934,-0.0479760244488716,-0.0159448161721230,0.0039866697043180,-0.0111816907301545,0.0353650115430355,0.0190507750958204,0.0498690232634544));
res += mul(Get(s4,-dx,-dy), float4x4(-0.0531289651989937,0.0456127524375916,0.0244469717144966,-0.0503622107207775,-0.0341468788683414,0.1078143715858459,0.0094207171350718,-0.0494436100125313,-0.0218889210373163,-0.0214933510869741,0.0022916714660823,0.0238171108067036,0.0083618825301528,0.0431268475949764,0.0258769094944000,-0.0518763028085232));
res += mul(Get(s5,-dx,-dy), float4x4(0.0458389371633530,-0.0405136495828629,-0.0363483950495720,0.0939043015241623,0.0481038503348827,0.0018253502203152,-0.0300548542290926,-0.0504167079925537,-0.0326361730694771,-0.0919421166181564,0.0384393520653248,-0.0954066812992096,0.0269800480455160,0.2105176001787186,-0.0269898977130651,0.0264875348657370));
res += mul(Get(s0,-dx,0), float4x4(-0.0040216576308012,0.0820530131459236,0.0268302168697119,-0.2960068881511688,0.0461177863180637,-0.0907082930207253,0.0070516411215067,0.0816459655761719,-0.1375371068716049,-0.1372403800487518,0.0257619302719831,0.1921141594648361,0.1066754832863808,0.0350356362760067,0.0259820651262999,0.0666834786534309));
res += mul(Get(s1,-dx,0), float4x4(-0.1072736531496048,0.0391868986189365,-0.0170108191668987,0.0202565360814333,-0.0345759056508541,0.1472341269254684,0.0431437790393829,-0.1217775493860245,0.0140039045363665,-0.2343785464763641,-0.1393575817346573,0.0521528944373131,0.0500245913863182,0.0247431136667728,-0.0012154178693891,-0.1758972555398941));
res += mul(Get(s2,-dx,0), float4x4(-0.0292558129876852,-0.1930771172046661,0.0256671495735645,0.0669799372553825,0.0646352544426918,-0.0630914643406868,0.0738781467080116,0.0785446763038635,0.0378583259880543,-0.3611730635166168,0.0808428898453712,-0.0784365832805634,0.0739862769842148,0.1347516179084778,0.0484349951148033,-0.1736947745084763));
res += mul(Get(s3,-dx,0), float4x4(0.0079807713627815,-0.1016528457403183,-0.0882399976253510,0.0756205841898918,-0.0251934956759214,-0.1501282602548599,0.0207720212638378,0.1551903039216995,-0.0542815141379833,0.0022852895781398,0.0046431636437774,-0.0470418147742748,0.0015334689524025,-0.0648090466856956,0.0089998031035066,-0.1213069707155228));
res += mul(Get(s4,-dx,0), float4x4(-0.2693229317665100,0.2256959676742554,-0.0024314865004271,-0.0411733202636242,0.0327306538820267,-0.0152372624725103,0.0128684481605887,-0.3093191981315613,-0.0148398801684380,0.0760639011859894,0.0013408559607342,-0.1208255290985107,-0.0580400601029396,-0.0360049828886986,0.0050812577828765,-0.0001540877274238));
res += mul(Get(s5,-dx,0), float4x4(0.0128843598067760,-0.0493574589490891,-0.0435802713036537,-0.0891416519880295,0.0892176255583763,-0.0669118687510490,0.0118506941944361,0.1889541298151016,-0.0441479906439781,-0.1079349592328072,-0.0132544897496700,-0.0538347400724888,-0.0440601743757725,0.0786608532071114,-0.0141988247632980,0.1254696995019913));
res += mul(Get(s0,-dx,dy), float4x4(0.0142164453864098,0.1013569012284279,-0.0337346084415913,-0.0278841666877270,0.0078932018950582,-0.1243343874812126,-0.0299295652657747,0.0364969298243523,0.0993139818310738,-0.0741195008158684,-0.0479903519153595,-0.0837215110659599,-0.0329573340713978,0.0349013693630695,-0.0007117899367586,-0.0819184780120850));
res += mul(Get(s1,-dx,dy), float4x4(0.0251484140753746,0.0038735365960747,-0.0205143019556999,0.0697766765952110,-0.0247919652611017,0.0301272217184305,0.0057178018614650,0.1597196161746979,-0.0231453385204077,0.0708142220973969,-0.0027971842791885,-0.1183882281184196,0.0253331977874041,-0.0129599189385772,-0.0580575987696648,-0.0396415665745735));
res += mul(Get(s2,-dx,dy), float4x4(0.1246685758233070,-0.1857470870018005,-0.0429558157920837,0.1099701374769211,-0.0095451017841697,0.0309888347983360,0.0331678315997124,-0.0031077142339200,0.0646646544337273,-0.0215272288769484,0.0363339297473431,-0.0686591863632202,-0.0516919493675232,0.0113147469237447,-0.0126797389239073,-0.0184670872986317));
res += mul(Get(s3,-dx,dy), float4x4(0.0244339238852262,-0.0624957568943501,0.0396583192050457,-0.0369995906949043,-0.0178327448666096,-0.0649298205971718,0.0474540181457996,0.0366887375712395,-0.0077046267688274,0.0910743251442909,-0.0184167381376028,-0.0758187696337700,0.0816140994429588,0.2363580465316772,0.0479804947972298,0.0992317944765091));
res += mul(Get(s4,-dx,dy), float4x4(0.0271004755049944,0.1899114251136780,0.0470339506864548,0.0852974429726601,0.0137938382104039,0.1061801984906197,0.0329561419785023,-0.0003492368559819,-0.0074786557815969,-0.0504882559180260,0.0182460304349661,-0.0464006513357162,-0.0045622177422047,-0.0324108600616455,-0.0100490450859070,0.0456873811781406));
res += mul(Get(s5,-dx,dy), float4x4(0.0290776919573545,-0.0086745554581285,-0.0249458402395248,0.0106301214545965,0.0351976826786995,0.0477600134909153,-0.0381494946777821,-0.0166576113551855,0.0240562763065100,0.0191905163228512,-0.0244945194572210,0.0023907902650535,0.1014257892966270,0.0096563408151269,0.0011682598851621,-0.0129995737224817));
res += mul(Get(s0,0,-dy), float4x4(-0.0458094887435436,-0.1802631169557571,0.0408647693693638,0.0347247049212456,0.0707293599843979,0.0657324716448784,-0.0091925766319036,0.0153114916756749,-0.0258880853652954,0.2015679478645325,-0.0336238145828247,0.0071693030185997,-0.0733493044972420,-0.1630583405494690,0.0192559715360403,-0.0722157284617424));
res += mul(Get(s1,0,-dy), float4x4(-0.0554446950554848,-0.0148469349369407,0.0070365238934755,-0.0270212478935719,-0.0077974530868232,-0.0371304340660572,0.0033990747760981,0.0517837069928646,0.1603828221559525,-0.2090630531311035,-0.0283891446888447,0.0337920226156712,0.0539388321340084,-0.2317226827144623,0.0002468941675033,-0.0281228460371494));
res += mul(Get(s2,0,-dy), float4x4(0.0962912216782570,-0.0153103219345212,-0.0240056812763214,-0.0047405762597919,0.0908778831362724,-0.3127603530883789,-0.0322334468364716,0.0960291996598244,-0.1237944811582565,-0.1238388270139694,0.0830917358398438,-0.0717720836400986,-0.1022051125764847,-0.0550038143992424,-0.0053520621731877,0.0456527061760426));
res += mul(Get(s3,0,-dy), float4x4(0.0869586989283562,0.1410011798143387,-0.0214453600347042,-0.0723889395594597,0.1035035550594330,0.0421472750604153,0.0623844787478447,-0.0465407222509384,0.1236926838755608,-0.1130668446421623,0.0338368192315102,0.0894884318113327,0.0458517707884312,-0.0371713601052761,-0.0005482924752869,-0.0845335274934769));
res += mul(Get(s4,0,-dy), float4x4(-0.2351864725351334,0.2944120168685913,0.0130960466340184,-0.1602771878242493,0.0892533436417580,-0.0191855859011412,0.0216646660119295,-0.0606024526059628,0.0840377882122993,-0.0290941819548607,0.0039899414405227,-0.0452523827552795,0.0861744582653046,0.1054040789604187,0.0071510910056531,0.0022780422586948));
res += mul(Get(s5,0,-dy), float4x4(-0.1892146468162537,0.0083741107955575,0.0483338832855225,-0.0875080898404121,-0.0470501035451889,-0.1522251516580582,0.0342426933348179,-0.0472088940441608,-0.2147860527038574,0.1274478882551193,0.0423489138484001,-0.1152510866522789,-0.2693277299404144,-0.0240973029285669,0.1227025538682938,-0.0258955862373114));
res += mul(Get(s0,0,0), float4x4(0.0812404453754425,-0.5438078641891479,-0.3981683552265167,-0.1297368258237839,0.1511948257684708,0.0232085213065147,-0.0641306862235069,0.1237549707293510,0.0649435520172119,0.6245787739753723,0.0426973626017570,-0.0400849357247353,0.1931214034557343,-0.1565224230289459,-0.0993628427386284,0.3517464995384216));
res += mul(Get(s1,0,0), float4x4(0.1675621867179871,0.0049233334138989,-0.0923411175608635,0.2417387515306473,-0.4747157096862793,-0.3430681228637695,0.0647254288196564,0.1324666738510132,0.3074412345886230,0.0224780980497599,-0.2770458459854126,-0.0669438391923904,-0.2677487134933472,-0.0280823167413473,0.1514990776777267,-0.0024011768400669));
res += mul(Get(s2,0,0), float4x4(0.1572337448596954,0.0233645774424076,-0.1024586260318756,0.0470832474529743,-0.0587258078157902,-0.0418622456490993,0.0924829393625259,-0.1501400917768478,-0.1204471886157990,-0.0200258065015078,0.0502939671278000,0.0470061562955379,-0.3844343423843384,0.0494263023138046,0.5150690078735352,0.4205395877361298));
res += mul(Get(s3,0,0), float4x4(0.0795849114656448,0.1888981163501740,-0.0417080447077751,0.1345298141241074,-0.1784079372882843,-0.0271704699844122,-0.0182685088366270,-0.0788829699158669,-0.1501501202583313,-0.0457439124584198,-0.0542677752673626,-0.0134960804134607,-0.1543003171682358,-0.2060473263263702,0.0845814049243927,0.0433456972241402));
res += mul(Get(s4,0,0), float4x4(0.0773196741938591,0.3756464123725891,0.0802290588617325,0.0826689898967743,-0.2385199218988419,-0.1622151732444763,0.1047452166676521,-0.2476383447647095,-0.2557654082775116,-0.2650222182273865,0.1597196459770203,-0.1948866099119186,0.0683144778013229,0.1312382966279984,-0.1397482901811600,-0.0135105103254318));
res += mul(Get(s5,0,0), float4x4(0.0649634301662445,-0.0025940733030438,0.0027502104640007,0.1303486526012421,0.2659765481948853,-0.0272340308874846,-0.0085862185806036,0.0315765552222729,0.1025968417525291,0.1841829270124435,0.0031281569972634,0.0464896336197853,0.2386568933725357,-0.5876290202140808,0.0588065907359123,-0.0574087165296078));
res += mul(Get(s0,0,dy), float4x4(-0.1118774041533470,-0.1505308449268341,0.1262398511171341,0.0788945555686951,0.0929725542664528,0.0012181705096737,-0.1406648606061935,0.0141833703964949,0.0029597508255392,0.1813988536596298,-0.0068384995684028,-0.0316731333732605,-0.2699399292469025,0.0339710302650928,0.1027088016271591,0.0423990190029144));
res += mul(Get(s1,0,dy), float4x4(-0.1410354375839233,-0.0087268901988864,0.1046046242117882,0.0398052036762238,-0.0607953295111656,-0.1107953190803528,-0.0319359153509140,0.0548419617116451,-0.1739342659711838,-0.0908921509981155,0.1443640440702438,-0.0825431048870087,0.0465481355786324,0.0900721475481987,-0.0918049216270447,-0.1145808100700378));
res += mul(Get(s2,0,dy), float4x4(0.0521474257111549,-0.0272782817482948,-0.0533294938504696,-0.0097954012453556,0.0289779119193554,0.1335795968770981,-0.0805439874529839,0.0670510679483414,0.0008475965587422,-0.0917585566639900,0.0135906552895904,-0.0901352688670158,-0.0277396701276302,0.0731896683573723,-0.1303540617227554,0.1047355979681015));
res += mul(Get(s3,0,dy), float4x4(-0.0061373421922326,0.0012866759207100,0.0557993426918983,0.0183050781488419,0.0406261980533600,0.0004864258226007,0.0278242900967598,0.0265586543828249,-0.1221461966633797,-0.1580303460359573,-0.0105599751695991,0.0203256811946630,0.0484096556901932,-0.3038146793842316,0.0381257981061935,-0.2079194635152817));
res += mul(Get(s4,0,dy), float4x4(-0.0625719800591469,0.4107326269149780,-0.0466624833643436,-0.0261874515563250,0.0072054942138493,-0.1722938716411591,0.0098352413624525,0.0116616189479828,-0.0059773065149784,-0.0994151383638382,0.0370108261704445,-0.0284526310861111,0.0979345738887787,0.0725936293601990,-0.0252408031374216,-0.0207411013543606));
res += mul(Get(s5,0,dy), float4x4(-0.0777933076024055,0.0298842713236809,0.1281440705060959,-0.0164022780954838,-0.2276484221220016,-0.0431853048503399,0.0669001266360283,-0.0321869589388371,-0.0931853801012039,0.0392296500504017,0.0482186488807201,0.0149855790659785,0.2972436547279358,0.1101818606257439,0.0165578536689281,-0.1020903363823891));
res += mul(Get(s0,dx,-dy), float4x4(0.0067799421958625,0.0344427898526192,0.0121556548401713,0.0436639152467251,0.0116543965414166,0.0208414904773235,-0.0055132592096925,-0.0365706384181976,-0.0849290639162064,0.0451535247266293,-0.0219107344746590,-0.0758727267384529,-0.0234548989683390,0.0717269554734230,-0.0015186658129096,-0.0082136169075966));
res += mul(Get(s1,dx,-dy), float4x4(-0.0449178516864777,0.0386544689536095,-0.0081607680767775,-0.0508355088531971,-0.0255148950964212,0.1773155778646469,0.0045393561013043,0.0092891640961170,0.0963299721479416,-0.0807647779583931,-0.0431471429765224,0.0260123796761036,-0.0305763725191355,-0.0419152677059174,-0.0567747838795185,0.0188654232770205));
res += mul(Get(s2,dx,-dy), float4x4(0.0814355611801147,0.1367022693157196,-0.0569231957197189,-0.1486179679632187,0.1003215685486794,0.1561900526285172,0.0500823631882668,0.1556390076875687,-0.0363967902958393,-0.0088429795578122,0.0070146098732948,-0.0324473492801189,0.0147770065814257,-0.0597311742603779,-0.0066382177174091,-0.0140695134177804));
res += mul(Get(s3,dx,-dy), float4x4(0.0219033192843199,0.0357788316905499,-0.0099624972790480,-0.0376316905021667,-0.0118841370567679,-0.0709219723939896,0.0232407078146935,-0.0487588755786419,0.0715297311544418,-0.0099892057478428,0.0195307917892933,0.0204461142420769,-0.2025473564863205,-0.0777253955602646,0.0419712290167809,-0.0451036393642426));
res += mul(Get(s4,dx,-dy), float4x4(-0.0751655474305153,0.0313659086823463,0.0035322071053088,-0.0870737284421921,-0.0382049754261971,-0.0729763656854630,-0.0323427096009254,0.0331246927380562,0.0638695880770683,-0.1148624271154404,0.0046161529608071,0.0003236055490561,0.0008081844425760,-0.1441112309694290,0.0269777644425631,0.0112786982208490));
res += mul(Get(s5,dx,-dy), float4x4(-0.0369993820786476,0.1714818328619003,0.0132152708247304,0.0562968030571938,0.0127475354820490,0.1134793236851692,0.0113643724471331,0.0392968878149986,0.0162573084235191,-0.0900902897119522,-0.0598722361028194,-0.0444453135132790,0.0715356543660164,-0.0993050560355186,0.0223411805927753,0.1178441569209099));
res += mul(Get(s0,dx,0), float4x4(0.1320870667695999,0.1930225491523743,-0.0464168339967728,0.0850382745265961,0.1769427955150604,0.1389178484678268,-0.0004537622735370,-0.1308703273534775,-0.1086573153734207,-0.3213736712932587,-0.0225560739636421,-0.1053875535726547,0.1541399508714676,0.2515602707862854,-0.0869010537862778,0.0226501282304525));
res += mul(Get(s1,dx,0), float4x4(0.1505911350250244,0.0477411374449730,-0.0665087625384331,-0.0488437637686729,0.0679563879966736,0.4260664582252502,0.0038781240582466,0.0386008583009243,0.0901504382491112,0.1008725464344025,-0.0772995576262474,-0.1111018136143684,0.0227273162454367,-0.4200518727302551,0.0286614131182432,0.0431057773530483));
res += mul(Get(s2,dx,0), float4x4(0.0787319242954254,0.1494144648313522,-0.0580883808434010,-0.2084023058414459,-0.2837604880332947,0.0105707654729486,-0.0169916544109583,0.0572424381971359,0.1396671980619431,-0.0589366517961025,0.0133439796045423,0.0275732185691595,-0.0410145446658134,-0.2840628325939178,0.0084247542545199,-0.0978745147585869));
res += mul(Get(s3,dx,0), float4x4(0.0650738999247551,-0.1859320849180222,-0.0119915064424276,-0.1523998379707336,-0.0128675494343042,-0.0995969176292419,0.0406253598630428,0.0140692908316851,-0.0226560775190592,0.1838573515415192,-0.0206192880868912,0.0156063279137015,0.1410375237464905,-0.0100653553381562,-0.0387342646718025,0.0285677816718817));
res += mul(Get(s4,dx,0), float4x4(-0.2062565237283707,-0.1594682633876801,-0.0877844691276550,-0.1098585277795792,-0.0510867424309254,-0.1181141063570976,0.0402333438396454,0.1207824200391769,-0.0417167469859123,-0.0302047990262508,-0.0136328181251884,-0.0591675490140915,-0.0624504387378693,-0.1021242290735245,-0.0549779087305069,-0.0633526965975761));
res += mul(Get(s5,dx,0), float4x4(0.1687418222427368,0.0231320746243000,-0.0271863844245672,0.0271400399506092,0.0932521149516106,-0.1216484606266022,0.0486564785242081,0.0511385649442673,-0.0628104880452156,-0.2766573131084442,0.0561098940670490,-0.0777794048190117,0.0622533448040485,0.0471994690597057,-0.0193121768534184,-0.0346762947738171));
res += mul(Get(s0,dx,dy), float4x4(-0.0630584955215454,0.1457517892122269,0.0135248573496938,0.0056939255446196,0.1098929718136787,0.1122110560536385,-0.0498797707259655,-0.1150778532028198,-0.0123735815286636,0.0043021016754210,0.0011969476472586,0.0174881797283888,0.0331591106951237,-0.0411497652530670,-0.0038930289447308,-0.0702176988124847));
res += mul(Get(s1,dx,dy), float4x4(-0.0174974929541349,0.0934307873249054,0.0387508422136307,-0.0080839404836297,-0.0759483501315117,0.1967512220144272,-0.0341059006750584,0.0295854620635509,-0.0370712243020535,0.0112948725000024,-0.0456176027655602,-0.0334041267633438,-0.1033865213394165,0.0310807097703218,0.0619283244013786,0.1273492127656937));
res += mul(Get(s2,dx,dy), float4x4(0.1381454914808273,0.0924175530672073,0.0147693725302815,-0.1142278909683228,0.2633991837501526,-0.2858562469482422,-0.0113083375617862,-0.0464957803487778,-0.0630677863955498,-0.0255021471530199,0.0547258369624615,0.0023076797369868,0.0415609106421471,-0.1246651187539101,-0.0190050490200520,-0.0570896565914154));
res += mul(Get(s3,dx,dy), float4x4(-0.0423075146973133,-0.0256916787475348,0.0389181934297085,-0.0398985929787159,-0.0218006577342749,0.0184836518019438,-0.0050849290564656,-0.0779603794217110,-0.0406383909285069,-0.0070243985392153,-0.0045917243696749,0.0012133653508499,-0.1133389547467232,0.0985393300652504,0.1011302024126053,0.1288237124681473));
res += mul(Get(s4,dx,dy), float4x4(0.0464870594441891,-0.1156435534358025,-0.0223638433963060,-0.1598744988441467,0.0857599526643753,-0.0831919088959694,-0.0014003824908286,0.0126086566597223,0.0163749083876610,-0.0720481723546982,0.0135821970179677,-0.0283574555069208,0.0314146131277084,-0.0437121726572514,-0.0165324900299311,-0.0276933182030916));
res += mul(Get(s5,dx,dy), float4x4(0.0367732904851437,0.1404107213020325,-0.0045327572152019,-0.0114562734961510,-0.0460833050310612,0.1351161152124405,-0.0235945712774992,0.0086990185081959,-0.0841248780488968,0.0186239257454872,0.0860552489757538,0.0964181870222092,0.1512909978628159,-0.0945690423250198,0.0358639396727085,-0.0135069712996483));
res = max(float4(0, 0, 0, 0), res) + float4(-0.0851566344499588,0.0113926054909825,1.3780070543289185,0.0220181271433830) * min(float4(0, 0, 0, 0), res);
return res;
}