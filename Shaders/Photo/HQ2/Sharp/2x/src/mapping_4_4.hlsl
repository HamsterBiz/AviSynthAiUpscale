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
res += mul(Get(s0,-dx,-dy), float4x4(0.174549981951714,0.037433322519064,0.020342530682683,-0.080119326710701,0.025049146264791,-0.161314263939857,0.084405362606049,-0.065473921597004,-0.028122574090958,0.016429364681244,0.044228117913008,-0.048574917018414,0.023261640220881,0.035012654960155,0.017614440992475,0.042609728872776));
res += mul(Get(s0,-dx,0), float4x4(0.166932031512260,0.025831103324890,0.045524116605520,0.112347088754177,0.006943010259420,0.055144473910332,0.016940873116255,0.074855864048004,0.074327118694782,-0.042807798832655,0.070783771574497,-0.129399538040161,0.031714342534542,0.120875537395477,0.027952924370766,-0.122297175228596));
res += mul(Get(s0,-dx,dy), float4x4(0.037073157727718,0.055365066975355,-0.103043727576733,-0.014874796383083,0.075471423566341,0.122848778963089,-0.012246066704392,-0.098012641072273,-0.113038443028927,0.025681992992759,-0.128076285123825,-0.010481928475201,0.053001344203949,0.105597183108330,-0.224564805626869,0.032081011682749));
res += mul(Get(s0,0,-dy), float4x4(0.074880488216877,0.069560050964355,-0.097716301679611,-0.051150038838387,0.051429402083158,0.062559247016907,-0.010627644136548,-0.106757141649723,0.068526208400726,0.092052146792412,0.059045027941465,-0.041021808981895,-0.133601963520050,-0.030216436833143,-0.061210963875055,-0.070931971073151));
res += mul(Get(s0,0,0), float4x4(-0.176553398370743,0.138468235731125,0.081050857901573,-0.062789112329483,0.007963114418089,0.066929183900356,-0.033280421048403,-0.079051360487938,-0.102225683629513,0.061990559101105,0.028860788792372,-0.086655579507351,-0.064394854009151,-0.152662023901939,-0.039565537124872,-0.025706589221954));
res += mul(Get(s0,0,dy), float4x4(-0.078704908490181,0.032865393906832,0.068460524082184,-0.046052362769842,0.103443801403046,-0.017652731388807,0.002733643166721,0.111347444355488,-0.105846494436264,-0.087001942098141,-0.034331206232309,-0.013756318017840,-0.103310577571392,-0.088005073368549,-0.042130753397942,-0.083906948566437));
res += mul(Get(s0,dx,-dy), float4x4(0.002751628402621,0.010112634859979,-0.114257983863354,-0.214923337101936,-0.159181058406830,-0.031147282570601,0.041548367589712,0.018927890807390,-0.002619681414217,0.078725606203079,-0.075019255280495,0.026722595095634,-0.096400700509548,-0.013073452748358,-0.101746879518032,0.041722204536200));
res += mul(Get(s0,dx,0), float4x4(-0.015709480270743,-0.197326511144638,0.105844736099243,-0.107126533985138,-0.036704380065203,-0.080215357244015,0.046638283878565,-0.029064901173115,0.147890940308571,0.133052781224251,0.071434728801250,0.010959050618112,0.029299423098564,-0.035833120346069,0.088367313146591,0.067462347447872));
res += mul(Get(s0,dx,dy), float4x4(-0.044849202036858,-0.011857352219522,0.039718985557556,0.045046303421259,-0.060001291334629,-0.116597652435303,-0.249792754650116,-0.050383381545544,-0.125093623995781,-0.187195688486099,-0.223228946328163,-0.084966190159321,0.118157662451267,-0.120487995445728,-0.083865582942963,-0.019424553960562));
res += mul(Get(s1,-dx,-dy), float4x4(-0.005516993347555,-0.077480956912041,-0.111653089523315,0.016362633556128,0.031111204996705,0.048118341714144,-0.036713391542435,-0.011482322588563,0.060740660876036,-0.116811119019985,0.113948322832584,0.048617251217365,0.092176839709282,-0.093446731567383,0.023945240303874,0.020761471241713));
res += mul(Get(s1,-dx,0), float4x4(0.025380419567227,0.014351486228406,0.033770035952330,-0.067454494535923,0.049173448234797,-0.093880847096443,0.123411484062672,-0.162284463644028,-0.048729516565800,0.125624462962151,-0.132962897419930,0.128239542245865,-0.060233872383833,0.086161509156227,-0.103055797517300,-0.029024720191956));
res += mul(Get(s1,-dx,dy), float4x4(0.072613611817360,0.122698947787285,-0.156649649143219,-0.268576502799988,-0.037207242101431,-0.040060192346573,0.039898220449686,0.118802435696125,-0.104914359748363,0.115039899945259,0.051732800900936,0.005775186698884,0.012939113192260,0.206487312912941,-0.066432498395443,0.004628632217646));
res += mul(Get(s1,0,-dy), float4x4(-0.071598090231419,-0.150859788060188,-0.049886889755726,0.033477928489447,-0.103878587484360,0.010531157255173,0.017194472253323,-0.062861509621143,-0.020354073494673,-0.141222476959229,0.037382956594229,0.161772802472115,-0.051790323108435,-0.106931991875172,0.046482924371958,-0.041051317006350));
res += mul(Get(s1,0,0), float4x4(-0.150873199105263,0.052209883928299,-0.148792311549187,0.068016022443771,0.039688501507044,-0.040289252996445,0.065140932798386,0.204625770449638,-0.117553859949112,-0.004752318840474,0.044101785868406,0.002709960099310,0.019989345222712,0.085331715643406,0.116450101137161,0.168078720569611));
res += mul(Get(s1,0,dy), float4x4(-0.041255306452513,-0.013320362195373,0.039436101913452,0.041759256273508,0.060041509568691,-0.006390925962478,0.046306610107422,-0.024673879146576,-0.119259104132652,0.174480736255646,-0.131572812795639,0.015561932697892,-0.068084128201008,0.090359814465046,0.032667063176632,-0.087141282856464));
res += mul(Get(s1,dx,-dy), float4x4(-0.107184343039989,0.079102180898190,-0.062378562986851,-0.008294708095491,-0.034195985645056,-0.036936379969120,-0.026942662894726,-0.092889375984669,0.198620334267616,0.217508941888809,0.138222336769104,-0.011367434635758,0.096907414495945,0.155788615345955,-0.010952403768897,0.110674276947975));
res += mul(Get(s1,dx,0), float4x4(0.067820012569427,-0.103408157825470,-0.049053244292736,-0.028546003624797,0.030107548460364,-0.175131022930145,0.015689792111516,0.112514555454254,-0.097882017493248,-0.001013151253574,-0.036285951733589,-0.175332188606262,0.008405440486968,-0.098784476518631,0.074525862932205,-0.038148254156113));
res += mul(Get(s1,dx,dy), float4x4(-0.003576338523999,-0.041694615036249,-0.022578483447433,0.033271074295044,0.016237996518612,0.057475931942463,-0.046510327607393,-0.165407061576843,0.083210676908493,0.055518440902233,0.009354554116726,0.033755186945200,0.038367260247469,-0.081261299550533,-0.031479842960835,-0.083090834319592));
res += mul(Get(s2,-dx,-dy), float4x4(-0.116892859339714,0.071932680904865,0.044647805392742,0.024231621995568,0.129160329699516,0.009184272028506,-0.007994564250112,0.167112961411476,0.114848040044308,0.028821988031268,-0.124538257718086,0.000124371828861,0.102957345545292,0.048382159322500,-0.082521401345730,-0.042024511843920));
res += mul(Get(s2,-dx,0), float4x4(0.073083676397800,0.053220205008984,0.036322850733995,-0.056413438171148,0.110313072800636,-0.038613125681877,-0.083447486162186,0.093294881284237,-0.019363507628441,0.010087449103594,-0.039445661008358,0.045989099889994,-0.062364723533392,0.087175883352757,-0.232897326350212,0.077226713299751));
res += mul(Get(s2,-dx,dy), float4x4(-0.153002947568893,-0.129681840538979,-0.057214371860027,-0.057860795408487,0.099599033594131,0.042099971324205,0.086956158280373,0.015539588406682,-0.050050970166922,-0.119698017835617,0.116346880793571,-0.045825388282537,-0.250024825334549,0.030983824282885,0.027597861364484,0.200096458196640));
res += mul(Get(s2,0,-dy), float4x4(0.067803300917149,-0.139487281441689,-0.195364803075790,0.112918391823769,0.060190804302692,0.014627019874752,-0.060468196868896,-0.018837461248040,-0.105273939669132,0.218761190772057,-0.000145781188621,0.062648326158524,-0.005001949612051,0.069116182625294,-0.070473618805408,0.095039561390877));
res += mul(Get(s2,0,0), float4x4(-0.157437577843666,0.041734620928764,-0.028250973671675,0.015741385519505,0.083943419158459,0.028700619935989,0.322888493537903,0.138128474354744,0.054942976683378,0.095808081328869,-0.010623726993799,0.039049413055182,-0.205535054206848,-0.042531590908766,-0.177288606762886,0.012067984789610));
res += mul(Get(s2,0,dy), float4x4(0.077819719910622,-0.163375690579414,-0.178044930100441,0.084486953914165,-0.082101128995419,-0.226886987686157,-0.110345415771008,0.023386772722006,-0.050385825335979,0.020073547959328,-0.017576076090336,-0.117118388414383,0.033433459699154,0.045586761087179,0.109992191195488,-0.069211088120937));
res += mul(Get(s2,dx,-dy), float4x4(-0.072373189032078,0.156799048185349,-0.049266800284386,0.061907999217510,-0.097945556044579,-0.077118024230003,0.000516362255439,-0.091844245791435,0.132788300514221,-0.164208799600601,-0.063730865716934,-0.139760807156563,-0.045623403042555,-0.034717973321676,0.047583673149347,0.064475722610950));
res += mul(Get(s2,dx,0), float4x4(-0.005311804823577,0.121716968715191,-0.112711638212204,0.044665411114693,0.027882423251867,-0.086944505572319,0.059815220534801,-0.037257224321365,-0.123811297118664,0.056014526635408,-0.027979770675302,0.065221652388573,0.127745166420937,0.007008137647063,0.127844095230103,0.092777423560619));
res += mul(Get(s2,dx,dy), float4x4(0.012732120230794,-0.021636661142111,0.011490169912577,0.131088510155678,0.025316502898932,0.017078569158912,-0.011922487057745,0.019489997997880,0.088752500712872,0.088517047464848,-0.039868488907814,-0.042507659643888,0.053086284548044,-0.194980114698410,-0.117485284805298,0.054099060595036));
res += mul(Get(s3,-dx,-dy), float4x4(-0.201017141342163,0.120509117841721,0.034500263631344,0.105996146798134,-0.170232877135277,-0.139682784676552,-0.170870393514633,0.033214740455151,0.079445555806160,0.075197748839855,-0.067113965749741,0.051615711301565,0.000157175483764,0.079743690788746,-0.071052916347980,0.018683500587940));
res += mul(Get(s3,-dx,0), float4x4(-0.141982853412628,0.091621845960617,-0.146858304738998,-0.082845583558083,0.031771261245012,0.084424123167992,-0.087168663740158,-0.059539314359426,0.044924512505531,-0.106346808373928,0.093839690089226,-0.057449381798506,0.022966198623180,-0.104309275746346,0.122756280004978,-0.009686034172773));
res += mul(Get(s3,-dx,dy), float4x4(-0.034062594175339,-0.065709806978703,-0.000965752580669,0.031124481931329,0.087549865245819,0.010060002095997,0.128898575901985,-0.013468771241605,-0.041534740477800,0.075204841792583,0.048215318471193,-0.015282518230379,-0.190568223595619,-0.103604376316071,0.143422082066536,-0.036212556064129));
res += mul(Get(s3,0,-dy), float4x4(-0.108685418963432,0.039229054003954,0.015931533649564,-0.004690967965871,0.155434578657150,0.071212507784367,0.023451330140233,-0.070291958749294,-0.072088249027729,0.010870154947042,-0.160315886139870,0.058103594928980,-0.079638883471489,0.073963612318039,-0.100578650832176,0.003917058929801));
res += mul(Get(s3,0,0), float4x4(0.132002055644989,0.049617528915405,0.064631551504135,0.026657557114959,0.137702584266663,0.034527517855167,-0.134688898921013,-0.086651496589184,0.076730675995350,0.156580060720444,-0.062702633440495,-0.008639981038868,0.042088031768799,0.176684007048607,0.119457080960274,-0.014468580484390));
res += mul(Get(s3,0,dy), float4x4(0.001687304582447,-0.094779387116432,-0.012760340236127,0.045666061341763,-0.050457008183002,0.109827220439911,-0.064930230379105,-0.005825276486576,0.075193271040916,-0.108553551137447,0.142091825604439,0.011666405014694,0.059199061244726,-0.028649544343352,0.066421777009964,-0.167259663343430));
res += mul(Get(s3,dx,-dy), float4x4(-0.118054233491421,0.087798491120338,0.031821869313717,0.092439033091068,0.132889866828918,0.039597280323505,-0.043623909354210,-0.171246096491814,0.074503742158413,0.160382598638535,-0.039053700864315,0.127885222434998,0.092996947467327,0.075903743505478,0.007193095050752,0.020656097680330));
res += mul(Get(s3,dx,0), float4x4(0.031983952969313,-0.044792909175158,-0.148764401674271,0.103576034307480,-0.139900520443916,0.014500447548926,0.130466669797897,0.083268202841282,-0.091943211853504,0.226844504475594,-0.045217514038086,-0.030495647341013,-0.128890439867973,0.030355682596564,0.135751411318779,0.024852795526385));
res += mul(Get(s3,dx,dy), float4x4(-0.085068188607693,0.130073115229607,-0.033200647681952,-0.231609299778938,-0.175624862313271,-0.041515871882439,-0.121949650347233,-0.094192609190941,0.145047739148140,0.042304180562496,0.100023858249187,-0.207321375608444,0.110013760626316,0.029095537960529,-0.123872309923172,0.051243569701910));
res = max(float4(0,0,0,0), res);
return res;
}