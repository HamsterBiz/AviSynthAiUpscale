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
res += mul(Get(s0,-dx,-dy), float4x4(0.059930827468634,-0.081713750958443,-0.029434075579047,0.185316950082779,-0.054083600640297,0.018993055447936,0.047979153692722,-0.036339480429888,-0.058934502303600,-0.023196972906590,-0.006987536326051,-0.010124905034900,0.042082425206900,-0.005152518395334,-0.105138510465622,-0.018114132806659));
res += mul(Get(s0,-dx,0), float4x4(0.023567784577608,0.030909877270460,-0.006038025487214,-0.114933475852013,-0.091732949018478,0.021736571565270,-0.060360360890627,-0.028059286996722,-0.066327929496765,-0.111994855105877,-0.092548124492168,0.075520485639572,0.013909381814301,0.085326276719570,0.069536425173283,-0.016648683696985));
res += mul(Get(s0,-dx,dy), float4x4(-0.129581719636917,-0.079522669315338,0.193012565374374,-0.064893610775471,-0.175551697611809,0.239909395575523,0.005400258116424,-0.017663510516286,0.023959858343005,0.049250349402428,0.221730843186378,-0.044741664081812,-0.096011422574520,-0.123758099973202,0.107041746377945,-0.023860327899456));
res += mul(Get(s0,0,-dy), float4x4(-0.050357125699520,0.052556619048119,-0.095710292458534,-0.015005275607109,-0.122093863785267,0.111223936080933,-0.001564727746882,-0.036333307623863,0.006038620602340,-0.007231627590954,0.015553536824882,-0.072127297520638,-0.150240033864975,0.054143127053976,-0.037586193531752,0.013246771879494));
res += mul(Get(s0,0,0), float4x4(-0.018534108996391,-0.140359848737717,-0.077528193593025,0.047869756817818,0.217396080493927,-0.054350722581148,0.044132102280855,0.037096660584211,0.052666869014502,0.085699699819088,-0.016132770106196,0.102874599397182,-0.061063803732395,-0.063360035419464,0.106180325150490,-0.132441639900208));
res += mul(Get(s0,0,dy), float4x4(-0.004488353617489,-0.063704758882523,0.193261221051216,0.015747815370560,-0.061789408326149,0.047457352280617,-0.108112804591656,-0.018781259655952,-0.047119054943323,-0.084482461214066,-0.022667592391372,0.039008136838675,0.003160326741636,-0.132280677556992,0.072225525975227,0.035354863852262));
res += mul(Get(s0,dx,-dy), float4x4(-0.019482284784317,0.147414013743401,0.196317479014397,-0.077759563922882,0.104805357754230,0.107379496097565,0.014338066801429,-0.052027586847544,0.041177753359079,0.099895425140858,0.002154039684683,-0.064196452498436,-0.139494478702545,0.088483653962612,0.066677026450634,-0.213381201028824));
res += mul(Get(s0,dx,0), float4x4(-0.083583123981953,-0.081525132060051,-0.032827030867338,-0.093261308968067,-0.062051285058260,-0.015508990734816,0.004338500555605,-0.027598099783063,-0.063205793499947,-0.099404469132423,0.108947187662125,0.101473510265350,0.032772824168205,0.021866340190172,0.024642724543810,-0.009452641941607));
res += mul(Get(s0,dx,dy), float4x4(0.076942741870880,-0.040534734725952,-0.161547377705574,-0.130015894770622,0.068021006882191,-0.210310295224190,-0.125213518738747,0.135024517774582,0.065453425049782,0.127958342432976,-0.098930761218071,-0.029537536203861,0.126820191740990,-0.016221027821302,0.166473522782326,-0.103995129466057));
res += mul(Get(s1,-dx,-dy), float4x4(-0.039287574589252,0.019319823011756,0.070156358182430,0.038155402988195,0.117685578763485,-0.042893309146166,-0.106455199420452,0.057584390044212,-0.075494311749935,0.050202962011099,-0.047284908592701,0.021111425012350,-0.125709891319275,0.097440652549267,-0.066582471132278,-0.050254914909601));
res += mul(Get(s1,-dx,0), float4x4(-0.014753600582480,-0.038182940334082,0.056320775300264,-0.084962114691734,-0.195366114377975,0.018364800140262,-0.084969580173492,-0.048144880682230,0.104708239436150,0.056266739964485,-0.129169180989265,0.027246424928308,-0.175341323018074,0.143765300512314,-0.049460519105196,-0.046743419021368));
res += mul(Get(s1,-dx,dy), float4x4(-0.086898915469646,-0.114292748272419,-0.060402754694223,0.073165073990822,0.015559073537588,0.065218232572079,0.157727688550949,-0.012906778603792,-0.148174643516541,0.030133381485939,-0.047607410699129,0.014931520447135,0.050852920860052,0.081133127212524,-0.118508040904999,0.039444830268621));
res += mul(Get(s1,0,-dy), float4x4(-0.005030917935073,-0.177336037158966,-0.031490508466959,-0.060560386627913,0.035798490047455,-0.071464277803898,0.012511622160673,-0.064639091491699,-0.019471315667033,-0.006544938776642,-0.164642989635468,0.130329057574272,-0.161487042903900,0.046836223453283,-0.159818395972252,0.044825587421656));
res += mul(Get(s1,0,0), float4x4(-0.074023038148880,-0.143249675631523,0.035347558557987,-0.081004709005356,-0.011030606925488,-0.114259831607342,-0.121974445879459,-0.028884727507830,0.116984151303768,0.010663937777281,0.065456695854664,-0.010818423703313,0.033303331583738,0.117039658129215,-0.084455631673336,-0.017677748575807));
res += mul(Get(s1,0,dy), float4x4(0.087891578674316,-0.039257172495127,0.037278797477484,0.021933933719993,0.095876410603523,0.043308634310961,0.035790916532278,-0.078438170254230,0.045865397900343,0.161659315228462,0.082449741661549,-0.031539082527161,-0.152341336011887,-0.013886776752770,-0.111894279718399,0.019757190719247));
res += mul(Get(s1,dx,-dy), float4x4(0.063783854246140,0.056460339576006,-0.116334050893784,-0.031026408076286,-0.083733722567558,-0.059234578162432,0.131599053740501,0.033397685736418,-0.001231898320839,0.003084611613303,0.069559052586555,0.023431666195393,0.042231537401676,-0.024550324305892,0.006893392652273,-0.074787221848965));
res += mul(Get(s1,dx,0), float4x4(0.017772125080228,-0.009909315966070,0.029945490881801,-0.044756390154362,-0.010470658540726,-0.193992704153061,0.054081872105598,0.008948967792094,0.018973603844643,-0.030261397361755,0.081048771739006,-0.034050997346640,0.023058401420712,-0.067435503005981,-0.032503280788660,-0.008293668739498));
res += mul(Get(s1,dx,dy), float4x4(-0.024284491315484,0.011494315229356,0.028947748243809,-0.047639477998018,0.098485372960567,0.018626121804118,-0.139286652207375,0.058443199843168,-0.077153325080872,0.113562047481537,0.102582633495331,-0.112231664359570,0.014021629467607,0.145903363823891,0.037057500332594,-0.025449980050325));
res += mul(Get(s2,-dx,-dy), float4x4(-0.035763829946518,0.195971980690956,-0.083110921084881,0.058313600718975,0.039047710597515,0.030170207843184,-0.005662079434842,-0.083006136119366,-0.121443070471287,-0.012088146992028,-0.102906636893749,0.008167301304638,-0.032515853643417,0.092540070414543,0.155128523707390,0.114269152283669));
res += mul(Get(s2,-dx,0), float4x4(0.101341694593430,0.083573661744595,0.028237285092473,0.072331555187702,0.059957336634398,-0.176292419433594,-0.027040066197515,-0.110578775405884,-0.078915558755398,-0.071559540927410,0.038358204066753,-0.060655120760202,0.019101338461041,0.099909380078316,0.035492014139891,0.038653597235680));
res += mul(Get(s2,-dx,dy), float4x4(0.067334704101086,-0.051683362573385,0.017714116722345,-0.046776499599218,0.030141158029437,0.039970144629478,-0.192399650812149,0.035949025303125,0.050731476396322,0.042452402412891,-0.098240748047829,0.000759014161304,-0.023912547156215,-0.036829620599747,0.058279436081648,0.035842325538397));
res += mul(Get(s2,0,-dy), float4x4(-0.107351064682007,-0.101456850767136,-0.139986038208008,-0.162752747535706,0.019728921353817,0.031808137893677,0.178704127669334,-0.016112210229039,-0.027818834409118,0.082301378250122,0.059679415076971,0.070400267839432,-0.056594494730234,0.058021262288094,-0.005333617795259,-0.014947474934161));
res += mul(Get(s2,0,0), float4x4(-0.048035714775324,-0.076316319406033,-0.160628408193588,0.005010289140046,-0.115980237722397,-0.094229094684124,-0.054536215960979,-0.102943807840347,0.015934264287353,-0.145063683390617,0.038702894002199,-0.098354294896126,0.134032890200615,-0.011036928743124,0.083258144557476,-0.070549957454205));
res += mul(Get(s2,0,dy), float4x4(0.030640004202724,0.004976764321327,-0.175129726529121,0.097939498722553,0.140672713518143,-0.081649273633957,0.040603999048471,0.056382417678833,0.067343354225159,0.101252205669880,-0.010683693923056,0.078945681452751,-0.005996553692967,-0.018137237057090,-0.151401266455650,-0.038118891417980));
res += mul(Get(s2,dx,-dy), float4x4(-0.034895803779364,-0.108760803937912,-0.053054939955473,0.093160450458527,-0.016160292550921,-0.056383159011602,-0.149007529020309,0.114209972321987,-0.056315477937460,-0.087178282439709,0.155341520905495,0.104815423488617,-0.004782204516232,0.096905156970024,-0.088671252131462,0.033292304724455));
res += mul(Get(s2,dx,0), float4x4(0.086668208241463,-0.131177425384521,0.008190887980163,0.052074193954468,-0.109312310814857,-0.058342903852463,-0.043803498148918,0.018311377614737,0.063141368329525,-0.163612887263298,-0.133260682225227,-0.007946627214551,-0.041386861354113,0.019766077399254,-0.087566874921322,-0.078394353389740));
res += mul(Get(s2,dx,dy), float4x4(-0.109487265348434,-0.127624735236168,0.042595211416483,0.082171410322189,-0.085072271525860,0.069653153419495,0.140422970056534,0.019667346030474,-0.016827402636409,0.006251689512283,0.045576084405184,-0.009893481619656,-0.131894394755363,0.079218804836273,-0.092954367399216,-0.003544184146449));
res += mul(Get(s3,-dx,-dy), float4x4(0.092258729040623,0.027593374252319,0.215123131871223,-0.078897893428802,-0.015594903379679,-0.071388386189938,0.045632690191269,0.023583363741636,0.041422214359045,-0.010829574428499,-0.171556577086449,0.114208407700062,0.093742355704308,-0.149995699524879,-0.043043352663517,-0.088878467679024));
res += mul(Get(s3,-dx,0), float4x4(-0.093019664287567,-0.057532489299774,0.161399886012077,-0.127020761370659,-0.126143589615822,0.161850869655609,-0.008003314025700,0.000523002643604,0.214136183261871,0.029858523979783,0.063173212110996,-0.108081907033920,0.018642105162144,0.043872706592083,-0.079334259033203,-0.057069696485996));
res += mul(Get(s3,-dx,dy), float4x4(-0.002290530595928,0.044522177428007,-0.034657225012779,0.126521497964859,0.084899902343750,-0.136140167713165,0.129579380154610,-0.003312480868772,-0.166244357824326,-0.160017848014832,0.061299867928028,0.043771896511316,0.023852724581957,0.039961531758308,0.113360866904259,0.036056265234947));
res += mul(Get(s3,0,-dy), float4x4(-0.005371282808483,-0.026830101385713,0.070743143558502,0.056016862392426,-0.043423175811768,-0.130204007029533,-0.014973904006183,-0.062454175204039,-0.092439047992229,-0.165430396795273,-0.125052571296692,-0.129208594560623,-0.106849759817123,0.094929009675980,-0.056065361946821,0.030979204922915));
res += mul(Get(s3,0,0), float4x4(0.085740268230438,-0.107548959553242,-0.138047501444817,-0.028453122824430,0.205658629536629,0.089656352996826,0.047245681285858,0.097526036202908,-0.064778774976730,0.007066433783621,-0.074534378945827,0.038468137383461,-0.054134570062160,-0.029529886320233,0.071826249361038,-0.007071800064296));
res += mul(Get(s3,0,dy), float4x4(-0.032148733735085,0.014025212265551,-0.041865557432175,0.087086647748947,-0.003823660314083,-0.065013773739338,0.176840543746948,-0.027712853625417,0.024922315031290,-0.160318419337273,0.154386267066002,0.119628064334393,0.009785931557417,-0.115468539297581,0.144794255495071,0.020685449242592));
res += mul(Get(s3,dx,-dy), float4x4(-0.081958219408989,-0.017518371343613,0.013621181249619,-0.003750067669898,-0.024401152506471,-0.053606901317835,-0.097807437181473,-0.004592951387167,-0.039335809648037,0.137844920158386,0.056081119924784,0.004546587821096,-0.066729135811329,-0.060966961085796,0.113233380019665,0.036414023488760));
res += mul(Get(s3,dx,0), float4x4(-0.062060948461294,-0.051647227257490,0.007870906963944,0.034140203148127,0.002594610676169,-0.051881972700357,-0.012311242520809,-0.090493246912956,0.040929667651653,0.007340098265558,0.071295179426670,-0.102393440902233,0.065773576498032,-0.044198162853718,0.053731262683868,-0.014624175615609));
res += mul(Get(s3,dx,dy), float4x4(-0.000853366742376,0.005941987503320,0.088991075754166,0.030586943030357,0.015063530765474,0.073837757110596,-0.071478858590126,0.001440818887204,-0.119660601019859,0.101890094578266,-0.097116380929947,0.136544138193130,-0.056306820362806,-0.027640247717500,-0.105561658740044,0.021838525310159));
return max(float4(0,0,0,0), res);
}