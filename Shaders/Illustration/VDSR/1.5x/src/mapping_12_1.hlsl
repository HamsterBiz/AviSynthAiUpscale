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
res += mul(Get(s0,-dx,-dy), float4x4(0.032997820526361,0.049334000796080,0.028302529826760,0.130438253283501,-0.067023277282715,-0.053846590220928,0.075847402215004,0.010991532355547,-0.045697636902332,-0.052919749170542,0.081826955080032,-0.021802060306072,0.016876185312867,0.021957507357001,0.135692894458771,-0.057303573936224));
res += mul(Get(s0,-dx,0), float4x4(-0.001657444168814,0.124713115394115,-0.005007635802031,0.023966575041413,0.013149608857930,-0.070139117538929,-0.070161953568459,-0.108673788607121,0.031567852944136,-0.033483255654573,0.070394910871983,-0.030498353764415,-0.018488092347980,-0.013272142037749,0.101030968129635,-0.119711369276047));
res += mul(Get(s0,-dx,dy), float4x4(-0.044853106141090,0.067140057682991,-0.105773419141769,0.033497497439384,0.024757273495197,0.014226767234504,-0.009649557992816,-0.017854392528534,0.024721663445234,0.029169980436563,0.022123312577605,0.077058389782906,-0.003823020728305,-0.036256216466427,0.030702566727996,-0.007430181372911));
res += mul(Get(s0,0,-dy), float4x4(0.008385161869228,-0.045296967029572,-0.005977598484606,-0.033680271357298,0.045036830008030,0.024495692923665,-0.013796342536807,-0.020548272877932,-0.061595425009727,0.028143489733338,0.085259765386581,-0.082534946501255,-0.046073175966740,-0.134074419736862,0.109372697770596,-0.031409345567226));
res += mul(Get(s0,0,0), float4x4(0.008631482720375,-0.074877589941025,-0.024863315746188,0.087461262941360,0.007289499044418,0.003758695209399,-0.076428942382336,0.028098421171308,0.024077467620373,-0.002665359759703,0.059078484773636,-0.125146016478539,0.093370668590069,0.028401987627149,0.027965001761913,-0.042310234159231));
res += mul(Get(s0,0,dy), float4x4(-0.102229699492455,-0.066146872937679,0.035085223615170,0.003816648852080,0.036393661051989,0.045466721057892,0.032650418579578,-0.005976548884064,-0.002322429791093,-0.012702215462923,0.053628187626600,0.009182084351778,-0.086171463131905,0.012193272821605,-0.138663858175278,0.039010077714920));
res += mul(Get(s0,dx,-dy), float4x4(-0.062359262257814,-0.039988335222006,-0.051787000149488,-0.101224586367607,0.060875233262777,0.020397532731295,0.161878794431686,-0.079718008637428,-0.012343673035502,0.055856913328171,0.194138705730438,-0.049138411879539,-0.084382854402065,0.011042531579733,-0.051892809569836,-0.045362282544374));
res += mul(Get(s0,dx,0), float4x4(0.026057034730911,-0.080221891403198,0.109166823327541,-0.092652298510075,-0.118799984455109,0.008600402623415,0.023693516850471,0.007330291904509,-0.019310956820846,-0.113375030457973,0.001726381829940,0.091254182159901,0.075243338942528,0.057792484760284,0.246000885963440,-0.096303515136242));
res += mul(Get(s0,dx,dy), float4x4(-0.011410185135901,0.006340292282403,0.000423520395998,-0.029126107692719,0.059877365827560,-0.061378516256809,-0.025804627686739,0.115267857909203,-0.082807078957558,0.115908481180668,-0.083388172090054,-0.063138693571091,-0.079931125044823,0.020279584452510,0.051991593092680,0.019750008359551));
res += mul(Get(s1,-dx,-dy), float4x4(-0.089295789599419,0.097928330302238,-0.002307637594640,-0.103257216513157,-0.017999952659011,-0.064172178506851,0.065968155860901,0.004982950631529,0.137266293168068,-0.093330435454845,-0.077232427895069,0.068053662776947,0.051297355443239,0.056413400918245,-0.004395646974444,0.019313745200634));
res += mul(Get(s1,-dx,0), float4x4(0.041528631001711,0.025979518890381,-0.043259076774120,0.001961694797501,-0.085783332586288,-0.010548640973866,0.075143828988075,-0.032659728080034,0.058379210531712,0.038668010383844,-0.003898356342688,0.046748597174883,-0.086321569979191,0.053921066224575,-0.003046703292057,0.039106406271458));
res += mul(Get(s1,-dx,dy), float4x4(0.029981687664986,0.051319472491741,0.051346186548471,0.032222215086222,0.000051595077821,0.006916363257915,-0.131582155823708,-0.036811638623476,-0.079656518995762,-0.092896364629269,0.047654971480370,0.098507270216942,0.025916598737240,-0.061304114758968,0.019939471036196,0.025638299062848));
res += mul(Get(s1,0,-dy), float4x4(-0.004673419985920,0.071685589849949,-0.001326984609477,0.032613418996334,-0.031317684799433,-0.098040096461773,0.054489988833666,-0.025894504040480,0.017420064657927,0.031140010803938,0.215412318706512,-0.004755162633955,0.059108857065439,-0.071629337966442,-0.046887408941984,-0.082674577832222));
res += mul(Get(s1,0,0), float4x4(-0.034726776182652,0.046546716243029,-0.053166951984167,0.035823058336973,0.016656588762999,0.010887653566897,0.002254543593153,-0.047433439642191,-0.009158263914287,0.062889941036701,0.110604941844940,-0.085285879671574,-0.025461308658123,0.037351455539465,-0.016226783394814,-0.014622322283685));
res += mul(Get(s1,0,dy), float4x4(-0.048451419919729,-0.013891982845962,-0.001493870397098,-0.005351260304451,-0.113803468644619,0.012795615009964,0.097760200500488,0.003649620804936,-0.109907701611519,0.003438512096182,-0.026882825419307,-0.006516140419990,-0.043147943913937,-0.048342712223530,-0.020288633182645,-0.072706371545792));
res += mul(Get(s1,dx,-dy), float4x4(-0.037430573254824,0.006650483235717,-0.094927981495857,0.048526756465435,-0.052264746278524,0.011512394994497,0.048206459730864,0.085167378187180,0.018719308078289,-0.009596768766642,-0.071462646126747,0.089900217950344,0.021275224164128,0.020094873383641,0.014520780183375,-0.064916208386421));
res += mul(Get(s1,dx,0), float4x4(-0.001859461888671,-0.034255661070347,-0.024965737015009,-0.000845826929435,0.028024697676301,0.022107504308224,-0.099215343594551,0.123854741454124,0.011559032835066,0.056244716048241,-0.082661949098110,-0.004001644439995,-0.002987668616697,-0.014049740508199,-0.029922176152468,0.040850065648556));
res += mul(Get(s1,dx,dy), float4x4(0.027908751741052,-0.036805894225836,-0.001229105633684,-0.099758885800838,-0.050147768110037,-0.080714426934719,-0.033363237977028,0.113953933119774,0.017652917653322,-0.104186311364174,-0.084595657885075,0.005695593543351,-0.024554707109928,0.061144925653934,-0.002897562226281,-0.005584600381553));
res += mul(Get(s2,-dx,-dy), float4x4(-0.017090922221541,0.055555295199156,0.072146549820900,0.005600962787867,-0.055786371231079,0.010244524106383,-0.028510613366961,0.001293097389862,-0.044543415307999,0.121421150863171,-0.059642825275660,-0.062663212418556,-0.030277412384748,-0.034633222967386,-0.054052524268627,-0.011340005323291));
res += mul(Get(s2,-dx,0), float4x4(-0.023223042488098,0.005952386651188,0.037638075649738,-0.031324226409197,0.026162886992097,-0.015384720638394,0.020569318905473,-0.020927194505930,-0.048782296478748,0.028657099232078,0.212494134902954,-0.000975230941549,0.029748450964689,0.078670859336853,-0.102191068232059,-0.061928093433380));
res += mul(Get(s2,-dx,dy), float4x4(-0.108362369239330,0.065399385988712,0.062528066337109,0.054103381931782,-0.016197472810745,-0.067169077694416,0.042469900101423,0.006648660637438,-0.098424464464188,-0.092234805226326,0.068456187844276,0.135594800114632,-0.012831226922572,0.081838004291058,-0.035286497324705,0.012712221592665));
res += mul(Get(s2,0,-dy), float4x4(-0.055789224803448,-0.032146796584129,0.051555238664150,-0.045701183378696,-0.013081153854728,-0.030747408047318,-0.040071595460176,-0.023044994100928,0.032458886504173,0.024295108392835,0.168083399534225,-0.001960080815479,-0.039558589458466,0.013341208919883,0.058727078139782,-0.147328212857246));
res += mul(Get(s2,0,0), float4x4(0.022758642211556,0.051773276180029,0.097047016024590,-0.094756424427032,0.067774251103401,-0.034176215529442,-0.101699367165565,0.059707131236792,-0.010597900487483,0.127936437726021,-0.195713356137276,-0.130198970437050,0.013381842523813,0.014349990524352,0.120375908911228,0.036825899034739));
res += mul(Get(s2,0,dy), float4x4(0.000944400089793,-0.090827301144600,0.028772568330169,0.021163688972592,0.007800193037838,-0.031547773629427,0.023283295333385,-0.076586753129959,-0.104528039693832,-0.150377914309502,0.006335760466754,-0.073544315993786,-0.064052268862724,0.031135967001319,-0.192710340023041,-0.081738449633121));
res += mul(Get(s2,dx,-dy), float4x4(0.040010277181864,0.018582062795758,0.031486522406340,0.024627197533846,-0.006894117221236,-0.011105497367680,0.043901279568672,-0.057238742709160,0.014347188174725,-0.017749251797795,0.236321911215782,-0.075508579611778,-0.037386897951365,0.016706997528672,-0.192196875810623,0.052921019494534));
res += mul(Get(s2,dx,0), float4x4(-0.115006446838379,-0.009495072998106,-0.018142465502024,-0.001941515598446,-0.117511540651321,-0.011923613026738,-0.027664577588439,-0.004431365989149,0.081620350480080,-0.077248521149158,-0.003241616534069,0.131038025021553,-0.026120658963919,0.002125219209120,0.031261794269085,0.000541321001947));
res += mul(Get(s2,dx,dy), float4x4(0.087906613945961,0.022549415007234,-0.071383818984032,0.115761145949364,-0.013900730758905,-0.034610755741596,0.044561207294464,-0.031678635627031,-0.046692930161953,-0.165664464235306,0.091903135180473,-0.005965024698526,-0.139547616243362,-0.051950655877590,0.016010435298085,-0.089838020503521));
res += mul(Get(s3,-dx,-dy), float4x4(0.018863322213292,0.107047058641911,0.012723161838949,0.064904138445854,-0.033343032002449,0.037548229098320,0.071531631052494,0.009932999499142,0.056003842502832,0.012884924188256,-0.130103155970573,-0.082677274942398,0.048633273690939,-0.112085707485676,0.002266032854095,0.120449252426624));
res += mul(Get(s3,-dx,0), float4x4(0.144063830375671,0.091901361942291,0.086093410849571,-0.053579803556204,-0.009303484112024,0.033647414296865,0.056699935346842,0.184173136949539,0.039325859397650,-0.033068094402552,0.172806099057198,0.135699450969696,0.012562620453537,0.045007657259703,-0.024964625015855,-0.000611223396845));
res += mul(Get(s3,-dx,dy), float4x4(0.016176050528884,-0.059618644416332,-0.009174838662148,-0.068565741181374,-0.114298924803734,-0.058472923934460,-0.021577123552561,0.051902800798416,-0.030065219849348,-0.015733631327748,-0.119271591305733,-0.018085004761815,0.005167203489691,-0.036909528076649,-0.063453368842602,0.050775755196810));
res += mul(Get(s3,0,-dy), float4x4(0.035181201994419,-0.011325369589031,-0.034036491066217,-0.019681958481669,0.111708372831345,-0.010169721208513,-0.065620593726635,-0.079294413328171,0.003841246943921,-0.066501699388027,-0.142229437828064,0.033830884844065,-0.036046106368303,0.093368314206600,-0.035835236310959,-0.018929680809379));
res += mul(Get(s3,0,0), float4x4(0.067848905920982,-0.009676151908934,-0.041176885366440,-0.050052490085363,0.022944904863834,0.090927802026272,0.152347713708878,0.086570113897324,-0.033527698367834,0.043306339532137,0.160468548536301,0.042348340153694,-0.072556175291538,0.032308742403984,0.009025714360178,-0.039986383169889));
res += mul(Get(s3,0,dy), float4x4(-0.060316193848848,0.049957495182753,0.009257572703063,-0.090540662407875,-0.024562412872910,0.117041528224945,0.138528674840927,-0.021008752286434,-0.030773790553212,0.021200947463512,-0.022284185513854,-0.094643302261829,-0.009296809323132,-0.053138613700867,-0.103740513324738,0.057766787707806));
res += mul(Get(s3,dx,-dy), float4x4(-0.033437382429838,-0.028679130598903,0.078544706106186,0.030062703415751,0.139316678047180,-0.016638528555632,0.048017371445894,-0.113024175167084,-0.007783695124090,-0.034994743764400,-0.030111746862531,-0.091545566916466,-0.047505505383015,-0.045155152678490,-0.077033944427967,-0.043700627982616));
res += mul(Get(s3,dx,0), float4x4(-0.107728347182274,0.036890394985676,0.039834383875132,0.037006732076406,-0.094203896820545,0.034552663564682,0.078585132956505,0.025838633999228,-0.018938964232802,-0.018926925957203,0.027686506509781,0.085150524973869,-0.073401667177677,0.040204901248217,0.059114295989275,-0.096873395144939));
res += mul(Get(s3,dx,dy), float4x4(0.039015412330627,-0.067285276949406,0.010986207984388,0.024095036089420,-0.070979297161102,0.054485637694597,0.213970050215721,0.026636911556125,0.035724624991417,0.045441977679729,-0.060278009623289,-0.042214825749397,0.066178873181343,-0.067933417856693,0.003614245215431,-0.081859849393368));
return max(float4(0,0,0,0), res);
}