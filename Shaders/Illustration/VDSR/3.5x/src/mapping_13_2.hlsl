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
res += mul(Get(s0,-dx,-dy), float4x4(-0.035884208977222,-0.092307992279530,-0.043884024024010,-0.149508014321327,-0.014445211738348,0.009743013419211,-0.189716458320618,0.169544905424118,0.206350848078728,0.048477102071047,-0.204283580183983,0.032351300120354,-0.042326912283897,-0.090888202190399,0.120984561741352,-0.053916558623314));
res += mul(Get(s0,-dx,0), float4x4(-0.011356049217284,0.113767817616463,-0.080400653183460,-0.146268218755722,0.368183135986328,-0.110347241163254,-0.045875664800406,0.019716400653124,-0.005666110198945,-0.149219781160355,-0.080614708364010,0.040596991777420,-0.192720100283623,0.146716937422752,-0.100003160536289,0.188734456896782));
res += mul(Get(s0,-dx,dy), float4x4(-0.090267017483711,0.085777729749680,0.144035458564758,-0.122947260737419,0.084541499614716,0.175498887896538,-0.068723373115063,0.028978465124965,-0.019957823678851,-0.135293275117874,0.036965474486351,0.062388774007559,0.035599295049906,-0.117371886968613,-0.142364352941513,0.202810063958168));
res += mul(Get(s0,0,-dy), float4x4(-0.130361437797546,-0.038174137473106,-0.100234262645245,-0.184221342206001,0.152430295944214,0.166051164269447,0.055678706616163,-0.114061944186687,0.069325827062130,-0.008104514330626,-0.202917069196701,0.059084378182888,-0.011583704501390,0.062652811408043,-0.066912598907948,0.019185554236174));
res += mul(Get(s0,0,0), float4x4(0.025972206145525,-0.162453740835190,0.160948708653450,-0.089456900954247,0.289737701416016,-0.048985179513693,0.098970487713814,0.096963725984097,-0.067466475069523,0.138512179255486,0.096819959580898,-0.076864190399647,0.221941292285919,0.271691501140594,0.025135196745396,0.121284283697605));
res += mul(Get(s0,0,dy), float4x4(0.079966716468334,-0.073680825531483,0.318660616874695,0.157240718603134,0.176889702677727,0.125247836112976,0.012433270923793,-0.121878065168858,-0.032223094254732,-0.252326697111130,0.073520325124264,0.008532980456948,0.018734604120255,-0.024112528190017,-0.312840491533279,0.021670380607247));
res += mul(Get(s0,dx,-dy), float4x4(-0.190552949905396,0.029674947261810,-0.248017847537994,-0.136069640517235,0.140552654862404,0.031778376549482,0.100195653736591,0.016336502507329,0.020501362159848,0.016549738124013,-0.096883691847324,-0.272041141986847,0.011250827461481,0.340760320425034,-0.121930480003357,0.215311467647552));
res += mul(Get(s0,dx,0), float4x4(0.330477803945541,-0.244350537657738,-0.087387807667255,-0.245502933859825,0.102791763842106,-0.151584640145302,-0.023485003039241,-0.001906697754748,-0.150227576494217,0.007285056635737,-0.132530361413956,0.022748991847038,-0.093002274632454,-0.003283710917458,-0.067292951047421,0.036722220480442));
res += mul(Get(s0,dx,dy), float4x4(0.007831124588847,-0.162747010588646,-0.058115057647228,-0.015106097795069,0.069866508245468,-0.063116885721684,-0.121743291616440,0.069326326251030,-0.002987977350131,0.051927793771029,0.066525191068649,0.023894105106592,-0.171484410762787,0.345809131860733,-0.028399715200067,0.120281688868999));
res += mul(Get(s1,-dx,-dy), float4x4(0.059028003364801,-0.020183673128486,0.001186266774312,0.024563753977418,-0.037801835685968,-0.114943459630013,0.008383094333112,-0.209401771426201,0.122448630630970,0.004541789181530,0.240482613444328,-0.016095358878374,0.222214192152023,-0.048616394400597,0.217268735170364,0.170399785041809));
res += mul(Get(s1,-dx,0), float4x4(-0.040681432932615,0.271893233060837,0.153029814362526,-0.094672091305256,0.030217498540878,0.106393270194530,-0.035652860999107,-0.084383301436901,-0.080435439944267,-0.030849670991302,0.105069018900394,-0.141535192728043,0.194564461708069,-0.116996981203556,-0.281331896781921,-0.153426721692085));
res += mul(Get(s1,-dx,dy), float4x4(0.035847935825586,0.151244446635246,0.099162541329861,-0.106713756918907,-0.080799467861652,0.162876620888710,-0.073669187724590,0.264118045568466,0.047667771577835,-0.231254890561104,0.050903484225273,-0.051488347351551,0.041485734283924,0.025439091026783,-0.022035164758563,-0.099922500550747));
res += mul(Get(s1,0,-dy), float4x4(0.137200489640236,0.042827825993299,0.070012100040913,-0.037869624793530,-0.152680203318596,-0.197526305913925,0.014740955084562,0.071937121450901,0.121475033462048,0.089524738490582,-0.137752190232277,0.065851226449013,0.128107085824013,0.087028652429581,0.190064743161201,0.182155624032021));
res += mul(Get(s1,0,0), float4x4(0.005177713930607,0.257169783115387,-0.178598389029503,-0.185332015156746,0.099727720022202,-0.021235255524516,0.098038025200367,0.009117987006903,0.050608374178410,-0.008092520758510,-0.064646616578102,-0.068347074091434,-0.272775918245316,-0.021655287593603,0.023171734064817,0.057703368365765));
res += mul(Get(s1,0,dy), float4x4(-0.042459711432457,0.220989689230919,0.062500223517418,0.096095129847527,-0.161167293787003,0.074805155396461,-0.139044731855392,-0.143655121326447,0.097418449819088,-0.066191852092743,0.084506608545780,-0.367150843143463,0.095552869141102,0.173168808221817,-0.055364686995745,-0.062166810035706));
res += mul(Get(s1,dx,-dy), float4x4(-0.168859273195267,0.060242716223001,-0.006369877606630,-0.128186240792274,0.138368070125580,0.027384812012315,0.149161368608475,0.047743368893862,0.112114422023296,-0.020837306976318,-0.318696558475494,0.106570459902287,-0.063111186027527,-0.100898988544941,0.186653405427933,0.246539503335953));
res += mul(Get(s1,dx,0), float4x4(-0.065088637173176,0.097195886075497,-0.041709236800671,-0.045142799615860,0.072591461241245,0.127454832196236,-0.003213729709387,-0.068396061658859,0.087067387998104,0.134415537118912,0.028019513934851,-0.057645712047815,0.021584514528513,0.047251783311367,0.314115226268768,0.175742909312248));
res += mul(Get(s1,dx,dy), float4x4(-0.217876628041267,-0.018676107749343,-0.025496209040284,0.065912671387196,0.038768615573645,-0.076559513807297,0.048197954893112,0.044676508754492,0.047747276723385,0.019625157117844,-0.060740109533072,0.044212758541107,-0.008243125863373,0.161016464233398,0.068231746554375,-0.126212790608406));
res += mul(Get(s2,-dx,-dy), float4x4(-0.037396803498268,0.205290496349335,-0.051073040813208,-0.043576184660196,0.024180203676224,-0.031339492648840,-0.185501813888550,0.009642383083701,-0.209041580557823,0.026701614260674,-0.047264985740185,-0.073209904134274,0.080352790653706,-0.087022140622139,-0.090926952660084,-0.113695025444031));
res += mul(Get(s2,-dx,0), float4x4(-0.177861735224724,0.106354445219040,-0.061948552727699,-0.127550169825554,-0.059294592589140,-0.074852012097836,-0.105436332523823,0.020963251590729,0.008629594929516,0.231658503413200,-0.136577591300011,-0.006334215402603,-0.070097453892231,0.073970377445221,0.052401117980480,-0.016972430050373));
res += mul(Get(s2,-dx,dy), float4x4(-0.096791364252567,-0.080276057124138,-0.038909111171961,0.029599910601974,-0.128261372447014,0.035982061177492,-0.216303989291191,0.090135015547276,0.196920588612556,-0.106034122407436,-0.179847136139870,-0.009687789715827,0.005290493834764,-0.085761256515980,0.044311486184597,0.172886192798615));
res += mul(Get(s2,0,-dy), float4x4(0.051922682672739,0.135105296969414,-0.021534470841289,0.199796229600906,-0.093304380774498,-0.010010169818997,-0.143979415297508,0.050738811492920,-0.204923674464226,0.163633316755295,0.091992326080799,-0.063535958528519,-0.151375487446785,-0.143494367599487,0.001312718493864,-0.093134477734566));
res += mul(Get(s2,0,0), float4x4(0.115558646619320,0.270768731832504,-0.189110577106476,-0.075727656483650,-0.009823253378272,-0.051843862980604,-0.055889401584864,0.280715584754944,-0.013986206613481,-0.029204260557890,-0.091320924460888,-0.052593719214201,0.134503334760666,-0.014360600151122,-0.027167588472366,-0.149252891540527));
res += mul(Get(s2,0,dy), float4x4(0.107748776674271,0.080207653343678,-0.079028539359570,-0.054613176733255,-0.101266019046307,0.109562970697880,0.041993658989668,-0.066552028059959,0.279685169458389,0.001239446690306,0.281839132308960,0.020128475502133,-0.013001768849790,0.175274595618248,0.407579898834229,0.055615063756704));
res += mul(Get(s2,dx,-dy), float4x4(0.049458913505077,-0.112927988171577,0.024479731917381,-0.018348135054111,-0.037159703671932,0.165468230843544,-0.019547449424863,-0.085448585450649,0.148574173450470,-0.068013049662113,-0.068911001086235,0.051657307893038,0.014296125620604,-0.168164148926735,0.130044788122177,-0.050791624933481));
res += mul(Get(s2,dx,0), float4x4(-0.017442226409912,0.068778708577156,0.038043644279242,0.001551338587888,-0.038465667515993,0.080479301512241,0.162345871329308,0.080399565398693,0.127222806215286,-0.038634646683931,-0.031955569982529,0.075576215982437,-0.153074607253075,-0.009159458801150,0.023733284324408,-0.128239721059799));
res += mul(Get(s2,dx,dy), float4x4(0.089953795075417,0.157339721918106,-0.040613967925310,0.054450068622828,0.083212099969387,0.132107853889465,-0.079883813858032,0.010281769558787,0.070215888321400,-0.042674943804741,-0.190618619322777,0.130393907427788,0.080685526132584,0.092967949807644,0.310347169637680,-0.082232609391212));
res += mul(Get(s3,-dx,-dy), float4x4(-0.057874999940395,-0.053401842713356,-0.055785324424505,0.060396298766136,0.062874987721443,-0.046390891075134,-0.052087634801865,-0.046385314315557,0.074455857276917,-0.050176389515400,0.110185809433460,0.008515216410160,-0.169659003615379,-0.190014809370041,-0.294633209705353,0.007625742349774));
res += mul(Get(s3,-dx,0), float4x4(-0.017491823062301,-0.080191791057587,-0.138097763061523,-0.130731984972954,-0.002034853678197,-0.067008592188358,-0.026970867067575,-0.059148542582989,0.071342162787914,-0.051106262952089,0.093647561967373,-0.056006561964750,-0.057094350457191,0.150346964597702,-0.123473495244980,-0.257158547639847));
res += mul(Get(s3,-dx,dy), float4x4(-0.088217660784721,0.265486627817154,-0.055990763008595,-0.077670484781265,0.140110611915588,0.209291666746140,0.239046350121498,-0.014301384799182,-0.025533646345139,0.154878854751587,-0.036027804017067,-0.148070126771927,0.013381137512624,0.045447684824467,0.096694648265839,0.073305554687977));
res += mul(Get(s3,0,-dy), float4x4(-0.012942532077432,-0.019688095897436,-0.167871996760368,-0.140248060226440,-0.009601897560060,0.053680591285229,0.023155344650149,-0.055629048496485,-0.049923542886972,0.090131618082523,0.149369716644287,0.139438420534134,0.021263059228659,-0.019399791955948,0.251188486814499,-0.088053651154041));
res += mul(Get(s3,0,0), float4x4(-0.109662517905235,0.003706501564011,-0.003715042024851,0.104474753141403,-0.025625791400671,-0.038316220045090,0.058697670698166,0.000909817521460,0.181598708033562,0.015112643130124,-0.091311432421207,-0.115440621972084,0.047454215586185,0.129346191883087,0.132941350340843,-0.059331905096769));
res += mul(Get(s3,0,dy), float4x4(-0.130389988422394,0.016166470944881,0.029234003275633,0.074793294072151,0.024767432361841,-0.010108830407262,-0.077233821153641,0.166248396039009,0.041380923241377,-0.036685515195131,-0.094226390123367,-0.126902595162392,-0.037592638283968,0.137511640787125,0.189776733517647,-0.068081371486187));
res += mul(Get(s3,dx,-dy), float4x4(0.109468415379524,-0.135472401976585,-0.047883216291666,-0.099954903125763,-0.175811529159546,0.040177226066589,-0.004380750469863,-0.059530943632126,-0.121646299958229,-0.144776076078415,0.078503966331482,0.015660900622606,0.047269366681576,0.045875627547503,-0.098863758146763,-0.047426123172045));
res += mul(Get(s3,dx,0), float4x4(-0.087961025536060,0.097040571272373,0.157081618905067,0.070559121668339,-0.121833607554436,0.054305631667376,-0.036558978259563,-0.136700809001923,-0.012214307673275,0.187921896576881,-0.054639358073473,0.004366171546280,-0.029095675796270,0.006090914364904,0.130094632506371,-0.150614887475967));
res += mul(Get(s3,dx,dy), float4x4(-0.046455319970846,0.138524964451790,0.176041021943092,-0.048660419881344,-0.005734463687986,-0.076447308063507,0.011363442055881,0.085229158401489,-0.304438918828964,-0.022174483165145,0.004599430132657,-0.059422254562378,0.147335246205330,-0.072800889611244,-0.042898517102003,-0.013205851428211));
return max(float4(0,0,0,0), res);
}