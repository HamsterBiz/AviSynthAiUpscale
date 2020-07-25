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
res += mul(Get(s0,-dx,-dy), float4x4(0.013059156946838,-0.081289403140545,-0.010706272907555,-0.061962574720383,0.005858490243554,-0.102346576750278,-0.002894583391026,-0.137938857078552,0.116113424301147,-0.162515297532082,0.026902325451374,0.123409099876881,0.182436928153038,-0.196807593107224,0.038956537842751,0.114255107939243));
res += mul(Get(s0,-dx,0), float4x4(0.024146316573024,-0.049276616424322,-0.062061555683613,0.097482517361641,-0.210194170475006,0.030495900660753,0.083352938294411,-0.133977249264717,0.028488747775555,0.096559949219227,0.099300734698772,0.087364301085472,0.251699388027191,-0.104817651212215,-0.128240138292313,-0.049025412648916));
res += mul(Get(s0,-dx,dy), float4x4(0.027126131579280,0.103393815457821,0.079336941242218,-0.009133778512478,-0.090291842818260,-0.179054319858551,-0.078185856342316,0.143573939800262,-0.002452527871355,0.071334868669510,-0.145000830292702,-0.070729039609432,0.257214546203613,-0.011173613369465,0.120057448744774,-0.069408915936947));
res += mul(Get(s0,0,-dy), float4x4(0.053589727729559,-0.045973487198353,0.101302966475487,0.026141559705138,0.063795648515224,0.145237922668457,-0.013088180683553,-0.031235024333000,-0.062918156385422,0.032294355332851,0.219276547431946,0.053100205957890,-0.027521096169949,0.077348783612251,0.010719450190663,0.017933284863830));
res += mul(Get(s0,0,0), float4x4(-0.094010956585407,-0.021154340356588,-0.095965385437012,0.065506592392921,0.108785025775433,-0.055903770029545,0.078517414629459,0.017712706699967,0.141265466809273,0.040152084082365,-0.030504837632179,-0.135161995887756,-0.016280572861433,0.036297999322414,-0.031921736896038,0.058658108115196));
res += mul(Get(s0,0,dy), float4x4(0.103886365890503,-0.074903421103954,0.037491578608751,0.008303541690111,-0.057486027479172,0.217906042933464,0.065978556871414,0.024036368355155,-0.115882091224194,-0.007401189301163,-0.053448852151632,-0.125281348824501,-0.000059049471020,0.102586634457111,-0.005701842252165,-0.126480594277382));
res += mul(Get(s0,dx,-dy), float4x4(-0.097166746854782,0.111626222729683,0.072151027619839,0.005236275494099,0.015285808593035,-0.070572026073933,0.041336894035339,-0.025289965793490,-0.135677158832550,0.002018602099270,0.053110059350729,-0.157553166151047,-0.067879900336266,-0.050247915089130,0.035314720124006,-0.047607019543648));
res += mul(Get(s0,dx,0), float4x4(-0.038709681481123,-0.181398451328278,0.033854726701975,0.099150650203228,-0.038185510784388,-0.092462956905365,0.209063693881035,0.014790490269661,-0.035597253590822,-0.047715999186039,-0.131141662597656,-0.025947757065296,-0.044785365462303,0.117008894681931,0.027990538626909,0.011051363311708));
res += mul(Get(s0,dx,dy), float4x4(-0.126800596714020,0.032240886241198,0.224544748663902,0.096101909875870,-0.084801778197289,0.054840546101332,-0.080457456409931,-0.041923217475414,-0.192264884710312,0.103790208697319,0.051665745675564,0.046425972133875,0.120092131197453,0.018998064100742,-0.041041504591703,-0.051036991178989));
res += mul(Get(s1,-dx,-dy), float4x4(-0.053823154419661,-0.023084891960025,0.048242088407278,-0.025038333609700,-0.044533282518387,0.046607550233603,0.169137522578239,-0.172167181968689,-0.010229124687612,-0.093420572578907,-0.160785689949989,0.064046218991280,-0.017596421763301,0.271964639425278,0.051773644983768,0.024327667430043));
res += mul(Get(s1,-dx,0), float4x4(0.201020956039429,-0.226563185453415,0.067543886601925,-0.059433076530695,-0.093781538307667,0.072041325271130,-0.056176830083132,-0.153386041522026,-0.020538637414575,0.083762876689434,-0.195178121328354,-0.132902324199677,0.055174987763166,0.116421535611153,-0.000261929555563,0.137274593114853));
res += mul(Get(s1,-dx,dy), float4x4(0.024180490523577,0.014919663779438,-0.074139378964901,0.166389167308807,0.156126573681831,0.139159366488457,0.052491910755634,0.164618328213692,0.066777408123016,0.077057778835297,0.009670695289969,-0.129602983593941,-0.146241754293442,0.167658343911171,0.197432577610016,-0.028832782059908));
res += mul(Get(s1,0,-dy), float4x4(0.002184689743444,0.222720012068748,-0.094780109822750,-0.191991046071053,0.125368252396584,0.085078947246075,0.035173557698727,0.082062862813473,0.023926591500640,0.048030603677034,-0.114119544625282,-0.008033618330956,-0.242528200149536,0.025763550773263,0.151286751031876,0.147316992282867));
res += mul(Get(s1,0,0), float4x4(-0.013897929340601,0.035143066197634,-0.026697874069214,0.010467551648617,0.001210886053741,0.240111872553825,-0.100108906626701,-0.057925198227167,-0.182861804962158,0.096450440585613,-0.049123883247375,0.053459376096725,0.014181178994477,-0.141822800040245,0.141403228044510,0.077102743089199));
res += mul(Get(s1,0,dy), float4x4(0.009198672138155,-0.056671861559153,-0.086617104709148,0.183579370379448,-0.001091116224416,-0.151483356952667,-0.154231309890747,0.021099166944623,-0.008727903477848,0.023697244003415,0.107575237751007,-0.156375735998154,-0.087385617196560,-0.071207679808140,-0.192594885826111,-0.143927812576294));
res += mul(Get(s1,dx,-dy), float4x4(-0.123944282531738,0.218247145414352,0.125904768705368,-0.036188773810863,0.114795841276646,-0.139662966132164,-0.009495426900685,0.198950037360191,0.174958869814873,0.094438925385475,0.061251517385244,0.086873106658459,-0.035366497933865,0.170344397425652,-0.041476953774691,-0.091772921383381));
res += mul(Get(s1,dx,0), float4x4(0.127704039216042,-0.006006424315274,-0.138467043638229,0.021415123715997,-0.002108961343765,0.082391351461411,0.148895263671875,-0.093848004937172,0.221989959478378,0.122551903128624,-0.159311607480049,-0.047469034790993,-0.023043284192681,-0.091618895530701,-0.033028855919838,-0.010142160579562));
res += mul(Get(s1,dx,dy), float4x4(-0.105369761586189,0.135820791125298,0.011840938590467,-0.213023543357849,-0.069166570901871,-0.090441443026066,-0.163730055093765,0.051510252058506,0.177046090364456,0.110191933810711,-0.006610406562686,-0.197989374399185,0.010924625210464,0.103094972670078,-0.096135362982750,0.120862208306789));
res += mul(Get(s2,-dx,-dy), float4x4(0.040174409747124,0.050554137676954,-0.053086850792170,0.059373680502176,-0.104010790586472,0.112124659121037,-0.041531141847372,-0.214163064956665,-0.078524015843868,0.150497868657112,0.041877761483192,-0.133911445736885,-0.123841308057308,-0.044051870703697,-0.108687512576580,-0.079801663756371));
res += mul(Get(s2,-dx,0), float4x4(-0.080366402864456,-0.122050009667873,0.106660395860672,-0.136069536209106,-0.026481617242098,0.113759316504002,0.088854283094406,0.003131462261081,-0.088308647274971,0.195568591356277,-0.000767683959566,-0.069916218519211,-0.084751278162003,0.023673398420215,0.101514726877213,0.121465064585209));
res += mul(Get(s2,-dx,dy), float4x4(-0.021215265616775,0.098216168582439,-0.083031073212624,0.153977796435356,-0.061619341373444,0.043135300278664,-0.071408517658710,-0.061488557606936,0.117711231112480,0.176432937383652,0.006702911574394,0.199784740805626,0.017833510413766,-0.074704393744469,0.102690562605858,-0.091149106621742));
res += mul(Get(s2,0,-dy), float4x4(-0.105612680315971,-0.100694358348846,0.131323829293251,0.022716991603374,0.071865595877171,-0.033508922904730,-0.018600432202220,-0.047613851726055,-0.020637534558773,-0.128221705555916,-0.008279412984848,-0.022640427574515,-0.016110604628921,0.127140596508980,-0.099432416260242,-0.104279622435570));
res += mul(Get(s2,0,0), float4x4(0.009250344708562,0.056454129517078,0.137728467583656,0.096609488129616,0.058915376663208,-0.197244107723236,0.121955022215843,-0.059989720582962,-0.136084914207458,-0.010073405690491,-0.067956395447254,-0.125995606184006,-0.102161243557930,-0.096627689898014,-0.015936138108373,-0.196031987667084));
res += mul(Get(s2,0,dy), float4x4(-0.146813437342644,-0.080780275166035,-0.038883384317160,-0.058626130223274,0.117289438843727,-0.092254295945168,-0.107512541115284,-0.029458794742823,0.134038254618645,-0.216562598943710,-0.009167438372970,-0.050668001174927,0.091537095606327,-0.206981956958771,0.048972468823195,-0.011958923190832));
res += mul(Get(s2,dx,-dy), float4x4(-0.081150792539120,-0.022182179614902,0.175129294395447,-0.106478378176689,-0.166414156556129,0.030473999679089,-0.075059212744236,0.026179343461990,-0.013953970745206,0.178306713700294,-0.003020226489753,0.017073860391974,-0.142751172184944,0.075576573610306,-0.066295087337494,-0.072092339396477));
res += mul(Get(s2,dx,0), float4x4(-0.009939719922841,0.006195940542966,0.146301537752151,-0.105081237852573,-0.145583510398865,0.011829873546958,0.088483124971390,-0.074545033276081,0.257451504468918,0.109265953302383,-0.013382041826844,-0.013246621936560,-0.220738217234612,0.100714027881622,0.081819042563438,0.013057438656688));
res += mul(Get(s2,dx,dy), float4x4(-0.019808243960142,-0.143096238374710,-0.031807780265808,0.111331269145012,0.208750531077385,-0.008453042246401,-0.194689944386482,-0.098429724574089,0.164030939340591,0.095354311168194,0.217869982123375,0.007464205380529,-0.129477962851524,0.048139695078135,-0.133207172155380,-0.110377557575703));
res += mul(Get(s3,-dx,-dy), float4x4(0.091230876743793,-0.180609628558159,0.084708601236343,-0.125042364001274,-0.050705734640360,0.192707762122154,-0.262420773506165,0.073968805372715,0.211498618125916,0.000549005519133,0.015804374590516,0.017889384180307,0.219830319285393,0.089955873787403,-0.143147930502892,-0.156217440962791));
res += mul(Get(s3,-dx,0), float4x4(-0.034471008926630,0.153915613889694,0.018967492505908,-0.210982277989388,0.114811949431896,-0.093650333583355,-0.144382372498512,0.079309552907944,0.038695015013218,0.054017346352339,-0.049588289111853,-0.096794992685318,-0.099408596754074,-0.032541640102863,0.115401700139046,0.023276980966330));
res += mul(Get(s3,-dx,dy), float4x4(0.110009826719761,0.252062559127808,0.197059705853462,0.307894557714462,-0.022175202146173,0.094489246606827,0.064167700707912,0.050804320722818,0.006458502728492,-0.021412277594209,-0.034795075654984,-0.175877615809441,-0.045338064432144,0.097272701561451,0.034509688615799,-0.082328051328659));
res += mul(Get(s3,0,-dy), float4x4(-0.046954553574324,-0.136274799704552,0.229204341769218,0.050733245909214,0.101260073482990,-0.017767559736967,0.066542573273182,0.018298231065273,0.136493235826492,-0.098664633929729,0.092850394546986,-0.003616626840085,-0.031991716474295,0.081806167960167,-0.014570594765246,-0.054932508617640));
res += mul(Get(s3,0,0), float4x4(0.019867988303304,0.198581144213676,-0.047683488577604,0.240554228425026,0.200488492846489,0.051684807986021,0.104371793568134,-0.010244465433061,-0.101960465312004,0.000145769998198,0.146335065364838,0.101453125476837,-0.086714997887611,-0.020762098953128,-0.009402137249708,-0.023862412199378));
res += mul(Get(s3,0,dy), float4x4(-0.147865325212479,0.111795924603939,-0.020687948912382,0.071428269147873,0.089801445603371,0.061956435441971,0.020476669073105,0.200365781784058,-0.056057270616293,-0.040316112339497,0.040170956403017,0.149992734193802,-0.013105796650052,-0.110105462372303,-0.188691496849060,0.008003101684153));
res += mul(Get(s3,dx,-dy), float4x4(0.108941093087196,-0.105281323194504,-0.101537525653839,-0.162443712353706,0.115163996815681,-0.124244056642056,-0.231070876121521,-0.049505662173033,-0.001322447322309,-0.163044139742851,-0.156837701797485,-0.005339933093637,0.146995052695274,-0.025317471474409,-0.012558359652758,0.039482537657022));
res += mul(Get(s3,dx,0), float4x4(-0.087489329278469,-0.075879551470280,-0.040424298495054,0.099060453474522,0.068723559379578,-0.118611164391041,-0.008057594299316,-0.146813720464706,-0.002202250296250,0.077980883419514,-0.057781994342804,-0.093763463199139,-0.092046320438385,-0.140701368451118,-0.052778858691454,-0.007423230446875));
res += mul(Get(s3,dx,dy), float4x4(-0.001038116985001,-0.234692916274071,0.091612763702869,-0.053247217088938,-0.038154255598783,-0.024609541520476,0.137386932969093,-0.151708543300629,0.090154491364956,-0.010614952072501,-0.047535505145788,-0.070313878357410,0.081255964934826,0.019008489325643,-0.013130992650986,0.128555521368980));
return max(float4(0,0,0,0), res);
}