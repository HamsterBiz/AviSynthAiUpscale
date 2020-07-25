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
res += mul(Get(s0,-dx,-dy), float4x4(0.035485286265612,-0.067028157413006,-0.062194541096687,0.045398414134979,-0.010126272216439,0.000658196455333,0.008382469415665,0.009634960442781,-0.002092594979331,-0.003354937303811,-0.051758620887995,-0.028506543487310,-0.002926439745352,0.041604902595282,0.024492518976331,-0.036103226244450));
res += mul(Get(s0,-dx,0), float4x4(-0.037162709981203,-0.022443702444434,0.018750276416540,-0.059701077640057,-0.073600061237812,-0.044144902378321,-0.049216888844967,0.048029847443104,-0.011266748420894,0.016366545110941,-0.013426235876977,0.001356094377115,-0.032243374735117,-0.090240612626076,-0.016866981983185,0.034464742988348));
res += mul(Get(s0,-dx,dy), float4x4(0.006705849431455,0.039604771882296,0.033089555799961,0.062888786196709,0.008081923238933,0.022781770676374,-0.050148263573647,-0.002754966495559,-0.015514747239649,0.006230084225535,-0.026669543236494,0.054618891328573,-0.013243041932583,0.025996103882790,-0.021994605660439,-0.032321725040674));
res += mul(Get(s0,0,-dy), float4x4(-0.011180923320353,-0.002880583750084,-0.133764624595642,0.007167354226112,-0.010470306500793,0.007875601761043,0.032058402895927,0.099306024610996,-0.058543082326651,-0.004090373404324,-0.030262758955359,-0.014203556813300,-0.073185861110687,0.056369274854660,-0.001483781263232,-0.031797170639038));
res += mul(Get(s0,0,0), float4x4(0.088157854974270,-0.106574170291424,0.006662580650300,-0.042654059827328,-0.008184246718884,-0.074034780263901,-0.080886930227280,0.095226086676121,0.006613548379391,-0.066011510789394,0.010823345743120,-0.048599075525999,0.013220939785242,-0.007458431180567,-0.009734750725329,0.046865031123161));
res += mul(Get(s0,0,dy), float4x4(-0.070263192057610,-0.136002406477928,-0.009150835685432,0.012000435031950,-0.083478920161724,-0.015913624316454,-0.017927339300513,0.058734394609928,0.050398871302605,-0.005391540471464,-0.022940045222640,0.041155271232128,-0.021463518962264,-0.014778368175030,0.024324033409357,0.066720083355904));
res += mul(Get(s0,dx,-dy), float4x4(-0.012407579459250,0.005065786186606,0.043577972799540,0.042172864079475,0.083940550684929,0.042087502777576,0.031852323561907,0.021316917613149,0.038502596318722,-0.024110721424222,-0.016209769994020,-0.022829813882709,0.019074564799666,-0.001337316934951,0.005475971382111,-0.039250016212463));
res += mul(Get(s0,dx,0), float4x4(-0.041500009596348,-0.147733464837074,0.074582844972610,-0.036657631397247,-0.131987944245338,-0.011683196760714,-0.037818670272827,0.081369504332542,0.000268911040621,0.020784586668015,0.007607931271195,-0.014881559647620,0.027282046154141,0.030972942709923,0.027611030265689,0.080881819128990));
res += mul(Get(s0,dx,dy), float4x4(-0.008950035087764,-0.072091706097126,-0.040640015155077,0.033537734299898,-0.100513488054276,-0.034279406070709,-0.046554729342461,0.034976307302713,-0.062035340815783,-0.000866638554726,0.042712770402431,-0.017765758559108,0.056670766323805,0.039936784654856,0.032630387693644,-0.037619579583406));
res += mul(Get(s1,-dx,-dy), float4x4(-0.003882448887452,-0.039969287812710,0.019737439230084,-0.027206508442760,0.035422239452600,-0.033113282173872,0.028754597529769,0.046332169324160,-0.091183297336102,-0.046581264585257,-0.090207569301128,-0.054229747503996,0.067132636904716,0.088038399815559,-0.042766600847244,-0.042007606476545));
res += mul(Get(s1,-dx,0), float4x4(-0.024112738668919,0.019836744293571,-0.028534850105643,-0.002854494610801,-0.004673018120229,-0.023460632190108,0.033761002123356,-0.012288641184568,-0.043143030256033,-0.076075635850430,-0.057732958346605,0.001374416635372,-0.119020871818066,0.028909357264638,-0.089156031608582,0.038526225835085));
res += mul(Get(s1,-dx,dy), float4x4(-0.006094738375396,-0.021087411791086,0.075612962245941,-0.065210059285164,0.025626057758927,-0.046350423246622,0.063357576727867,0.004352050367743,-0.009599188342690,0.041275285184383,-0.043428558856249,0.016731087118387,-0.085030682384968,0.139706864953041,-0.043276812881231,-0.005632352083921));
res += mul(Get(s1,0,-dy), float4x4(0.030077999457717,-0.033279851078987,-0.024765094742179,0.045756865292788,0.021706311032176,-0.014602559618652,0.022727908566594,0.007712466176599,-0.024932570755482,-0.005991416051984,0.019410787150264,0.042036484926939,-0.026015160605311,-0.057015817612410,-0.025744995102286,0.092047348618507));
res += mul(Get(s1,0,0), float4x4(0.009207190945745,0.022108899429440,-0.047134477645159,-0.009420717135072,0.005186100490391,-0.011134879663587,0.045842707157135,-0.007804669439793,-0.023980457335711,-0.100909627974033,0.041785161942244,-0.014160174876451,0.007317479234189,-0.039103865623474,0.086320146918297,0.073938414454460));
res += mul(Get(s1,0,dy), float4x4(0.023879278451204,0.032225646078587,0.078608654439449,0.026791753247380,0.010292449966073,-0.019653890281916,0.046053271740675,-0.055318132042885,-0.010565266944468,-0.084849581122398,-0.014630382880569,0.024005485698581,-0.089548923075199,-0.038737680763006,0.078316897153854,-0.091689400374889));
res += mul(Get(s1,dx,-dy), float4x4(-0.037199933081865,0.041645336896181,0.011242253705859,0.017989361658692,-0.006036091130227,-0.024755664169788,0.007155917119235,-0.013773637823761,-0.012225084006786,0.045488495379686,-0.058041770011187,-0.071324884891510,0.039942458271980,-0.047685090452433,-0.049653485417366,-0.033847350627184));
res += mul(Get(s1,dx,0), float4x4(0.045544970780611,-0.020455945283175,0.000580544699915,0.072940774261951,0.012835757806897,-0.052870772778988,-0.032991617918015,-0.063385866582394,-0.008516920730472,0.044571690261364,-0.063754163682461,-0.027252878993750,0.028099546208978,-0.061928246170282,-0.019769525155425,0.041317194700241));
res += mul(Get(s1,dx,dy), float4x4(-0.014005153439939,0.031500201672316,-0.011147257871926,-0.005033252760768,-0.062483273446560,0.018445888534188,0.048139858990908,0.012904223985970,0.061177898198366,0.022012302652001,-0.032313354313374,0.018358709290624,-0.121960006654263,0.032842785120010,-0.000823768496048,0.008281951770186));
res += mul(Get(s2,-dx,-dy), float4x4(-0.238877162337303,-0.144531190395355,0.180826082825661,0.156338497996330,-0.036267146468163,0.034212578088045,-0.017564464360476,-0.028316080570221,-0.044938527047634,0.023800203576684,0.000860539206769,0.008363251574337,-0.143003821372986,-0.135811790823936,0.158498868346214,0.357533633708954));
res += mul(Get(s2,-dx,0), float4x4(-0.158574119210243,-0.160548940300941,0.168114021420479,-0.076633095741272,0.017999297007918,-0.020910922437906,-0.036334894597530,-0.014322972856462,0.130059584975243,0.005862004589289,-0.030808007344604,-0.105093687772751,-0.086908631026745,0.008376110345125,0.194762110710144,-0.034816816449165));
res += mul(Get(s2,-dx,dy), float4x4(0.208377540111542,-0.140807613730431,0.109830439090729,-0.064731672406197,-0.030362889170647,0.008782705292106,-0.005812767893076,0.051620755344629,-0.085316449403763,0.072941489517689,-0.031927306205034,-0.141025096178055,0.055764961987734,-0.079207792878151,0.011877655051649,-0.181614816188812));
res += mul(Get(s2,0,-dy), float4x4(0.036344248801470,-0.013038051314652,-0.085061229765415,0.068036355078220,-0.122083626687527,0.001783330808394,-0.095323316752911,0.040217116475105,-0.115962393581867,-0.074751876294613,0.010736622847617,0.044395327568054,-0.043466728180647,0.006398456636816,-0.142193496227264,0.196090951561928));
res += mul(Get(s2,0,0), float4x4(0.210618004202843,0.011222659610212,-0.013849316164851,0.056941237300634,-0.044713355600834,0.105027437210083,0.058948650956154,-0.025709901005030,0.030450839549303,0.054544195532799,-0.012667252682149,0.081063851714134,0.102821514010429,-0.030074937269092,-0.110279388725758,-0.177416518330574));
res += mul(Get(s2,0,dy), float4x4(-0.018740996718407,0.286551207304001,0.161032870411873,-0.072106339037418,0.065809078514576,-0.007493982557207,0.058235157281160,-0.005058675538749,-0.053360212594271,0.048816736787558,0.051404040306807,-0.045703336596489,0.117545053362846,0.057719439268112,-0.135779023170471,-0.187047585844994));
res += mul(Get(s2,dx,-dy), float4x4(-0.075218901038170,0.037191648036242,-0.056798242032528,-0.015679735690355,-0.028516644611955,-0.069128565490246,-0.043105360120535,-0.061858896166086,-0.021591370925307,-0.071997135877609,-0.057259686291218,-0.007721753790975,-0.000181286799489,0.042113106697798,-0.096320383250713,0.215963110327721));
res += mul(Get(s2,dx,0), float4x4(0.213265657424927,0.307504266500473,-0.186307162046432,-0.027981827035546,-0.082077369093895,-0.021737702190876,0.097283340990543,-0.009518194012344,-0.012531175278127,0.022897120565176,-0.000185168959433,-0.017580429092050,0.014751190319657,-0.015616944991052,0.116691298782825,-0.132180154323578));
res += mul(Get(s2,dx,dy), float4x4(-0.048728443682194,-0.132503390312195,-0.237084805965424,-0.115071058273315,0.065641924738884,0.002016274724156,-0.020604338496923,0.025088317692280,0.073585174977779,0.014500015415251,-0.060176275670528,-0.045363038778305,0.098950356245041,0.106405951082706,0.033474218100309,-0.125072166323662));
res += mul(Get(s3,-dx,-dy), float4x4(-0.177015185356140,-0.051904164254665,0.175987526774406,0.133312344551086,-0.030685668811202,0.049088068306446,0.113178193569183,0.088308170437813,0.019313627853990,0.014013743959367,0.072356045246124,0.004853493068367,0.000946976593696,-0.001962257549167,0.044935692101717,0.068217225372791));
res += mul(Get(s3,-dx,0), float4x4(-0.092131786048412,-0.044613402336836,0.130523383617401,0.017960166558623,-0.149396538734436,-0.077523291110992,0.062613822519779,0.045136447995901,-0.004555527586490,-0.091725155711174,0.056106846779585,0.005279643926769,0.001822039834224,-0.010976776480675,0.005743058398366,-0.038785461336374));
res += mul(Get(s3,-dx,dy), float4x4(0.128355860710144,-0.085263878107071,-0.037542551755905,-0.083130039274693,0.063899517059326,-0.000774336978793,-0.054907724261284,0.055835541337729,0.047273330390453,-0.003509229514748,-0.048352323472500,0.023438282310963,0.026096155866981,-0.063293866813183,0.075479321181774,-0.004762609489262));
res += mul(Get(s3,0,-dy), float4x4(-0.006208532024175,0.029616825282574,-0.089907661080360,0.191159173846245,0.002115220762789,-0.028234492987394,-0.090928234159946,-0.069044850766659,-0.096189819276333,0.038634598255157,0.070050291717052,0.072051264345646,-0.044879298657179,0.012047263793647,-0.067631989717484,-0.014626646414399));
res += mul(Get(s3,0,0), float4x4(-0.094243608415127,0.136850491166115,0.056975658982992,0.066604621708393,0.056403532624245,-0.032213617116213,-0.084402725100517,-0.019377378746867,-0.106251277029514,0.058274213224649,0.091810449957848,-0.042976841330528,0.003059592796490,-0.089719139039516,-0.039764184504747,-0.048212219029665));
res += mul(Get(s3,0,dy), float4x4(0.117736838757992,0.026754340156913,0.084250330924988,-0.050278212875128,0.037390671670437,0.018080914393067,0.000494179257657,-0.141353562474251,-0.014336229301989,0.041515570133924,0.009054476395249,-0.089164637029171,-0.021934591233730,0.113632164895535,-0.042295645922422,0.017646577209234));
res += mul(Get(s3,dx,-dy), float4x4(-0.035415664315224,0.264700502157211,-0.090046152472496,0.014597408473492,0.051909755915403,-0.024442315101624,0.054797962307930,0.011436521075666,-0.012246453203261,0.014121286571026,0.030734691768885,0.012968717142940,-0.029463803395629,-0.131557747721672,0.034374512732029,0.018417738378048));
res += mul(Get(s3,dx,0), float4x4(-0.118763938546181,-0.081277713179588,-0.038057394325733,-0.037152949720621,-0.049155134707689,-0.013413147069514,0.103965967893600,-0.049352541565895,-0.020772660151124,-0.043169006705284,0.019188210368156,0.002281212713569,-0.029514616355300,0.030658898875117,-0.017116127535701,0.015460337512195));
res += mul(Get(s3,dx,dy), float4x4(0.220352426171303,-0.036284916102886,-0.069436982274055,-0.055384334176779,-0.069707415997982,-0.048827953636646,0.112730294466019,-0.031361486762762,0.034146524965763,-0.016210393980145,0.057157900184393,-0.037146776914597,-0.007336663082242,-0.114528164267540,-0.025234472006559,0.002934273798019));
return max(float4(0,0,0,0), res);
}