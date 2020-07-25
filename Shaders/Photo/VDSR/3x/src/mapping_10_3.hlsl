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
res += mul(Get(s0,-dx,-dy), float4x4(-0.101446531713009,0.037273600697517,0.067014522850513,-0.065002083778381,-0.178704813122749,-0.083685740828514,-0.051188439130783,0.182040408253670,-0.073898322880268,-0.016696380451322,0.076534330844879,0.049312591552734,-0.085023075342178,-0.081747844815254,-0.100342743098736,-0.045323163270950));
res += mul(Get(s0,-dx,0), float4x4(-0.143202617764473,0.112367168068886,-0.169803291559219,-0.092077806591988,-0.155690461397171,-0.051928289234638,-0.272832393646240,0.074901416897774,0.107687085866928,-0.148276716470718,-0.112720094621181,0.060272455215454,-0.012616435997188,0.170084506273270,0.079877391457558,-0.017029264941812));
res += mul(Get(s0,-dx,dy), float4x4(-0.200250849127769,0.062638834118843,-0.010253253392875,-0.079084776341915,-0.053304497152567,0.091428250074387,0.039373725652695,0.034293275326490,0.111763462424278,-0.022578164935112,0.030372701585293,0.093824736773968,0.033805716782808,0.072963453829288,-0.053870320320129,0.160425990819931));
res += mul(Get(s0,0,-dy), float4x4(0.083243206143379,-0.032446142286062,-0.151445567607880,0.043791953474283,0.071125030517578,-0.234696552157402,-0.091447830200195,0.055108506232500,0.071082144975662,0.123304873704910,-0.115515500307083,0.006851475220174,-0.056644603610039,-0.164199084043503,-0.004323246423155,-0.036785103380680));
res += mul(Get(s0,0,0), float4x4(0.081117779016495,0.002022223314270,-0.131268411874771,0.231027424335480,-0.063689097762108,0.014548702165484,-0.073773406445980,0.031807009130716,-0.123013019561768,0.197270587086678,-0.197220683097839,0.169132709503174,-0.102789364755154,0.050139449536800,-0.115166313946247,0.000176010071300));
res += mul(Get(s0,0,dy), float4x4(0.013037719763815,0.125088587403297,0.105231925845146,-0.019946139305830,0.062911801040173,0.133209303021431,-0.064037352800369,0.010133809410036,-0.066872105002403,-0.037912957370281,-0.092997774481773,-0.041019394993782,0.005443095229566,-0.006320718210191,-0.022882236167789,0.195163741707802));
res += mul(Get(s0,dx,-dy), float4x4(-0.071382023394108,-0.103282593190670,-0.056669920682907,0.023166453465819,0.200123220682144,0.050690673291683,0.155815318226814,0.063804581761360,0.183820456266403,-0.023230429738760,-0.057336505502462,-0.011326563544571,-0.011746821925044,-0.030123343691230,-0.041768819093704,-0.032600380480289));
res += mul(Get(s0,dx,0), float4x4(-0.137011155486107,-0.121827438473701,-0.071074917912483,0.106436766684055,-0.001344189746305,-0.012348018586636,-0.025139911100268,-0.118424348533154,-0.067061103880405,0.084891326725483,-0.067050822079182,-0.051661256700754,0.006781538948417,-0.216421395540237,0.022427294403315,0.073601961135864));
res += mul(Get(s0,dx,dy), float4x4(0.002088962355629,0.159816741943359,0.164792701601982,-0.121347449719906,-0.073242112994194,0.141257703304291,-0.031366936862469,-0.148748993873596,0.001671979436651,-0.128987193107605,0.006884856615216,0.129990473389626,-0.054264184087515,0.076231658458710,0.107436589896679,-0.021580697968602));
res += mul(Get(s1,-dx,-dy), float4x4(-0.089986868202686,0.040723960846663,0.045560691505671,0.011348093859851,-0.054827138781548,0.107881873846054,-0.268227517604828,-0.022224409505725,-0.088831320405006,-0.076036371290684,-0.222277581691742,-0.078513301908970,0.190672859549522,0.085990399122238,0.060104124248028,0.036217983812094));
res += mul(Get(s1,-dx,0), float4x4(-0.048605110496283,0.079764716327190,-0.094748556613922,0.034103970974684,-0.174695819616318,-0.046051155775785,-0.018777655437589,-0.023249654099345,0.057825103402138,-0.137095540761948,0.021400332450867,-0.027078304439783,0.060409225523472,0.046079844236374,-0.191387116909027,-0.004152728710324));
res += mul(Get(s1,-dx,dy), float4x4(-0.010716930031776,0.011799786239862,0.126527041196823,-0.053700596094131,-0.014487554319203,0.120249196887016,-0.161382585763931,0.109362035989761,0.148231118917465,-0.172930404543877,0.007266059983522,0.061508934944868,-0.130857050418854,-0.005240730475634,-0.039669536054134,-0.124706037342548));
res += mul(Get(s1,0,-dy), float4x4(0.000564360641874,-0.073883734643459,0.108263269066811,-0.054104208946228,-0.158980250358582,0.075804106891155,0.130970180034637,0.133926823735237,0.157460689544678,-0.081762544810772,0.089097879827023,0.070383459329605,-0.004173461347818,0.167810663580894,-0.163045451045036,-0.111104957759380));
res += mul(Get(s1,0,0), float4x4(-0.229877188801765,0.110616363584995,-0.207345366477966,-0.063624314963818,-0.049478765577078,-0.133685261011124,0.081559792160988,-0.016382709145546,0.054182492196560,0.194666728377342,0.122569136321545,0.117445439100266,0.085062570869923,-0.039360046386719,-0.104292586445808,0.013098756782711));
res += mul(Get(s1,0,dy), float4x4(-0.032979045063257,-0.032749362289906,-0.056030564010143,-0.183578908443451,0.186502903699875,-0.110474102199078,0.031313657760620,-0.137224510312080,-0.019662484526634,0.068555660545826,-0.121927000582218,0.025606175884604,0.067000210285187,-0.122549846768379,-0.029458139091730,-0.035848800092936));
res += mul(Get(s1,dx,-dy), float4x4(-0.140163749456406,0.100053682923317,-0.023080110549927,0.031012468039989,-0.102913476526737,0.148483619093895,-0.014281554147601,0.101608924567699,0.057146675884724,-0.008278452791274,0.048738196492195,0.176482111215591,0.072796687483788,-0.026510566473007,0.035002961754799,0.128470256924629));
res += mul(Get(s1,dx,0), float4x4(0.065349422395229,-0.039778735488653,0.292829573154449,-0.028930019587278,-0.092043869197369,0.074698433279991,0.091355167329311,0.085317552089691,0.140607088804245,0.059157930314541,0.233126178383827,0.205211907625198,0.055549111217260,0.033311430364847,0.054571349173784,0.144103422760963));
res += mul(Get(s1,dx,dy), float4x4(0.015433652326465,-0.058611806482077,-0.059442315250635,0.003289547981694,0.072052508592606,-0.009926239028573,-0.079430058598518,0.133059144020081,0.055790971964598,0.020211504772305,-0.060425184667110,0.081663481891155,0.019854053854942,0.047059509903193,0.042811069637537,-0.051041230559349));
res += mul(Get(s2,-dx,-dy), float4x4(-0.039234895259142,0.028640540316701,0.039959672838449,0.172024756669998,-0.090497858822346,0.026934986934066,-0.022416993975639,-0.086663663387299,-0.080944426357746,0.128185495734215,-0.124761953949928,-0.005642878822982,0.017062887549400,0.050189543515444,-0.206886887550354,-0.135670334100723));
res += mul(Get(s2,-dx,0), float4x4(-0.115943968296051,0.051955543458462,-0.014696798287332,-0.045007374137640,-0.125300526618958,0.147540971636772,0.172211110591888,0.015199291519821,0.012607013806701,-0.009781727567315,-0.131323888897896,-0.065420448780060,-0.064263425767422,0.073135025799274,-0.157040193676949,-0.052534144371748));
res += mul(Get(s2,-dx,dy), float4x4(-0.010274209082127,0.009961739182472,0.183029204607010,0.009153055027127,0.157918140292168,-0.100119270384312,-0.151590764522552,-0.068634219467640,-0.065732277929783,-0.131830051541328,-0.064919881522655,0.036002553999424,-0.078654728829861,0.175390347838402,-0.010943291708827,0.113135248422623));
res += mul(Get(s2,0,-dy), float4x4(0.043006651103497,-0.169918462634087,-0.087388262152672,-0.215021297335625,-0.071711637079716,-0.023924287408590,-0.201058387756348,-0.143793612718582,0.110595904290676,0.065303437411785,0.283092051744461,0.072522461414337,0.013965891674161,0.234107762575150,-0.055215906351805,-0.152802929282188));
res += mul(Get(s2,0,0), float4x4(-0.033331919461489,-0.142563775181770,0.016742855310440,0.164013728499413,-0.119528874754906,-0.140598550438881,-0.016020750626922,-0.161208167672157,-0.031100191175938,-0.102320574223995,0.256592065095901,0.170152232050896,-0.055806316435337,0.056475508958101,0.005588937085122,-0.015447160229087));
res += mul(Get(s2,0,dy), float4x4(0.051077935844660,-0.001592070912011,-0.127289697527885,0.002326648682356,-0.122958764433861,-0.037245970219374,-0.090008236467838,-0.107494957745075,0.103155538439751,-0.081903763115406,-0.038209617137909,-0.147216796875000,-0.052086051553488,0.011787416413426,-0.117191009223461,0.027245422825217));
res += mul(Get(s2,dx,-dy), float4x4(-0.012160802260041,-0.091642424464226,-0.118150874972343,-0.071897782385349,-0.026336355134845,0.082973882555962,0.089057534933090,-0.033118095248938,-0.089584022760391,-0.043057929724455,-0.155263528227806,0.015241270884871,-0.102033205330372,-0.096833035349846,-0.071159683167934,-0.173960119485855));
res += mul(Get(s2,dx,0), float4x4(0.069931380450726,-0.029089819639921,0.037839829921722,0.181666597723961,-0.052549440413713,0.085842609405518,0.158667042851448,-0.224455296993256,0.094454884529114,-0.191833540797234,-0.126027822494507,-0.187071144580841,-0.049148760735989,0.010459091514349,-0.084354333579540,0.062171448022127));
res += mul(Get(s2,dx,dy), float4x4(-0.211390793323517,-0.035100799053907,-0.024750286713243,-0.016040578484535,0.009939352981746,0.180698752403259,-0.058326814323664,0.106295317411423,-0.093094088137150,0.053049426525831,0.117312781512737,-0.057452805340290,-0.133303716778755,0.021108217537403,0.139722436666489,0.099506780505180));
res += mul(Get(s3,-dx,-dy), float4x4(0.020850980654359,0.021705800667405,0.222802981734276,0.037914741784334,-0.163606405258179,0.023830968886614,0.085904382169247,-0.080026067793369,0.065726660192013,-0.037434220314026,0.120865084230900,-0.115457117557526,0.073449678719044,0.041355185210705,0.010308030061424,0.066881120204926));
res += mul(Get(s3,-dx,0), float4x4(-0.113295897841454,0.178609520196915,0.173416957259178,0.042001310735941,0.048894394189119,0.042502902448177,0.018389174714684,0.133844137191772,0.087246097624302,-0.042508300393820,-0.011738137342036,0.003334073117003,-0.060135662555695,0.187628939747810,0.041442733258009,-0.033170819282532));
res += mul(Get(s3,-dx,dy), float4x4(-0.075439564883709,0.050503276288509,-0.045383039861917,0.114873953163624,-0.044602509588003,-0.104377545416355,0.056951224803925,-0.042305458337069,0.103591345250607,0.137985303997993,-0.023795416578650,0.012232235632837,-0.024656785652041,-0.166387915611267,0.032105684280396,-0.188055694103241));
res += mul(Get(s3,0,-dy), float4x4(-0.008943199180067,0.064368188381195,-0.077420331537724,0.116843938827515,0.055262431502342,-0.039311129599810,0.014470727182925,0.038769733160734,0.006858508568257,-0.088526524603367,-0.253619700670242,-0.044539567083120,-0.233584478497505,-0.072899989783764,0.024591987952590,0.070364095270634));
res += mul(Get(s3,0,0), float4x4(-0.037351857870817,-0.014945965260267,0.093398302793503,0.110360063612461,-0.186300128698349,0.055489126592875,-0.081106007099152,-0.247641444206238,-0.029143951833248,-0.189404562115669,-0.089711919426918,-0.089148178696632,0.098936110734940,0.128987967967987,-0.017175577580929,0.002237885259092));
res += mul(Get(s3,0,dy), float4x4(-0.094016209244728,-0.019884888082743,0.011150186881423,0.134859338402748,-0.188734605908394,-0.105305388569832,0.013475975953043,-0.075222462415695,0.085795640945435,0.148636013269424,-0.003868853673339,0.055195789784193,-0.094710424542427,-0.024977931752801,-0.015485389158130,-0.116154968738556));
res += mul(Get(s3,dx,-dy), float4x4(0.045342624187469,-0.078707516193390,0.086381241679192,-0.100761197507381,0.083291240036488,-0.077883556485176,0.126406431198120,-0.287619709968567,0.030983766540885,0.006142093800008,-0.082428403198719,-0.026075994595885,0.003560391720384,0.033764198422432,-0.099112220108509,-0.209464088082314));
res += mul(Get(s3,dx,0), float4x4(0.060125298798084,-0.140195339918137,0.004508791491389,0.000659541634377,0.047055374830961,-0.032697807997465,-0.081805869936943,-0.161297202110291,0.034051407128572,0.067452467978001,0.016422288492322,0.072572261095047,0.135688886046410,0.063347086310387,-0.008760120719671,0.051035776734352));
res += mul(Get(s3,dx,dy), float4x4(0.071900382637978,-0.104984343051910,0.080764323472977,0.004490275401622,-0.075347132980824,-0.156681030988693,-0.021937817335129,-0.179146081209183,0.015933321788907,0.025831064209342,0.005276659969240,-0.006483432836831,-0.290275543928146,0.137323051691055,0.093294419348240,-0.135335639119148));
return max(float4(0,0,0,0), res);
}