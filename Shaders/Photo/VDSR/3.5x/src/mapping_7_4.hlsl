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
res += mul(Get(s0,-dx,-dy), float4x4(0.020285613834858,0.006460495758802,0.109665594995022,0.075487561523914,0.038336511701345,-0.015574287623167,-0.015657054260373,-0.137560814619064,-0.138636261224747,0.097532659769058,-0.053260754793882,-0.181401550769806,-0.207545280456543,-0.220054820179939,0.179634794592857,-0.177658960223198));
res += mul(Get(s0,-dx,0), float4x4(0.149713844060898,-0.178389608860016,-0.018739940598607,0.007153749000281,-0.080965816974640,0.143802955746651,-0.125723719596863,-0.133424490690231,-0.060842666774988,0.070083513855934,-0.187958389520645,-0.016250919550657,-0.131973609328270,-0.076541334390640,-0.216259941458702,0.052959479391575));
res += mul(Get(s0,-dx,dy), float4x4(-0.014854660257697,0.001070475322194,-0.048358295112848,0.045437958091497,0.126176476478577,-0.118218027055264,-0.130284845829010,-0.046654589474201,0.084085866808891,0.128797650337219,0.065052658319473,-0.076036222279072,0.083469212055206,-0.021610535681248,-0.030540198087692,-0.092611648142338));
res += mul(Get(s0,0,-dy), float4x4(-0.116338126361370,-0.067552804946899,0.125791236758232,0.166317775845528,0.116234675049782,0.180365815758705,-0.218156069517136,-0.086087755858898,0.096567414700985,0.061035707592964,0.050492644309998,-0.114790439605713,-0.167469918727875,-0.059121832251549,0.017169777303934,-0.027215279638767));
res += mul(Get(s0,0,0), float4x4(-0.281369268894196,-0.054197773337364,0.046461809426546,0.039568744599819,-0.051847152411938,0.103675276041031,-0.094949051737785,0.153322368860245,-0.096048653125763,-0.101020909845829,-0.003436606843024,0.039776612073183,-0.006398254539818,-0.008313652127981,-0.049502406269312,-0.148904219269753));
res += mul(Get(s0,0,dy), float4x4(0.255177140235901,-0.097709439694881,0.124618671834469,-0.103102132678032,0.027417952194810,0.051220867782831,0.059642281383276,-0.116224475204945,-0.071528948843479,0.056289032101631,0.004016810096800,-0.001836999901570,-0.089329689741135,-0.096526056528091,0.143294751644135,-0.014201200567186));
res += mul(Get(s0,dx,-dy), float4x4(0.211888760328293,-0.133336335420609,0.033557403832674,-0.090548552572727,0.004879225045443,0.004040060564876,-0.051084056496620,0.015870019793510,0.011177368462086,0.161957934498787,-0.167263418436050,-0.089822247624397,-0.000509405683260,-0.121049508452415,-0.036497216671705,-0.101930394768715));
res += mul(Get(s0,dx,0), float4x4(0.081369236111641,-0.099113553762436,-0.050304446369410,-0.015882741659880,0.000698028190527,0.137715786695480,-0.150793090462685,-0.052147846668959,0.171823799610138,-0.034299351274967,0.235325753688812,0.050746981054544,0.077259942889214,0.001212061499245,0.107184894382954,0.009095696732402));
res += mul(Get(s0,dx,dy), float4x4(0.098646856844425,-0.109393566846848,-0.085142739117146,0.019212197512388,0.016825979575515,0.049991995096207,-0.053251683712006,-0.048562269657850,0.154270276427269,-0.066101983189583,0.019017294049263,-0.035640552639961,-0.133128106594086,-0.011415995657444,0.023094316944480,0.225046887993813));
res += mul(Get(s1,-dx,-dy), float4x4(0.061795622110367,0.029390444979072,-0.000621468934696,0.147273927927017,-0.053811144083738,0.096978284418583,-0.140576362609863,0.129807546734810,-0.204854816198349,-0.110582493245602,0.196763470768929,0.101155154407024,0.149248108267784,-0.331382155418396,0.071303457021713,-0.128273546695709));
res += mul(Get(s1,-dx,0), float4x4(-0.069844134151936,0.023044060915709,0.152471259236336,-0.048401437699795,-0.015895670279860,0.018916536122561,-0.133436098694801,0.081828296184540,-0.036048099398613,0.025026090443134,0.173086717724800,-0.106326021254063,0.009221721440554,0.223571032285690,0.097057543694973,-0.138514399528503));
res += mul(Get(s1,-dx,dy), float4x4(0.017312761396170,0.121866255998611,-0.006827765144408,-0.179672688245773,-0.066467605531216,-0.045873273164034,0.052283316850662,-0.098811186850071,0.020946960896254,0.250813245773315,0.099416002631187,0.186686411499977,0.183945983648300,0.144906491041183,-0.068431459367275,0.131155401468277));
res += mul(Get(s1,0,-dy), float4x4(-0.116540387272835,0.001951784244739,0.158557578921318,-0.033811233937740,-0.092310331761837,0.024030135944486,0.190125390887260,-0.069608069956303,0.089840777218342,0.043998688459396,-0.214203894138336,0.012781418859959,-0.068655923008919,0.015799315646291,-0.137061700224876,-0.025791972875595));
res += mul(Get(s1,0,0), float4x4(0.012706177309155,0.072503164410591,0.061682071536779,-0.047481354326010,-0.105823472142220,-0.051213063299656,-0.290618419647217,-0.112590767443180,0.134379819035530,0.020475322380662,-0.114593945443630,0.070585899055004,-0.071919813752174,0.098896600306034,-0.082532055675983,0.317008137702942));
res += mul(Get(s1,0,dy), float4x4(-0.047964293509722,0.288813710212708,-0.067101344466209,-0.007189028896391,-0.014608266763389,-0.073264978826046,-0.023066388443112,-0.161272361874580,-0.175698906183243,-0.011211748234928,-0.118494108319283,-0.068976365029812,-0.115621976554394,0.162692740559578,0.115469515323639,-0.029911952093244));
res += mul(Get(s1,dx,-dy), float4x4(-0.033612109720707,0.167653322219849,0.047286365181208,0.002683968050405,0.135003730654716,-0.035964809358120,0.017830794677138,-0.096527807414532,-0.081843391060829,0.183595836162567,-0.149646133184433,0.015669163316488,-0.090822227299213,-0.022628819569945,0.092213839292526,0.104504264891148));
res += mul(Get(s1,dx,0), float4x4(-0.042248524725437,0.093419782817364,0.191689759492874,0.067439474165440,-0.048868540674448,0.146626248955727,0.021255642175674,-0.127309069037437,0.020180828869343,-0.142053410410881,0.101546220481396,-0.025910770520568,0.056500729173422,0.099341101944447,-0.123863808810711,-0.023989006876945));
res += mul(Get(s1,dx,dy), float4x4(0.094243034720421,-0.010667796246707,-0.142777070403099,0.041596021503210,0.049302611500025,0.058243177831173,-0.045683939009905,0.090870104730129,0.122406348586082,0.033779103308916,-0.002597060054541,0.083897247910500,-0.037058133631945,-0.051611661911011,0.063775949180126,-0.175115495920181));
res += mul(Get(s2,-dx,-dy), float4x4(0.046414609998465,-0.232230380177498,-0.269008845090866,-0.038624472916126,0.052314549684525,-0.007778307422996,-0.128991335630417,-0.113325670361519,0.016667569056153,0.086981900036335,-0.009473649784923,-0.145632684230804,-0.079976722598076,0.262225657701492,-0.089469522237778,-0.180457457900047));
res += mul(Get(s2,-dx,0), float4x4(0.037840876728296,-0.053317382931709,0.221363976597786,0.194262683391571,-0.039133574813604,0.085346609354019,-0.216712445020676,-0.125669911503792,0.208765223622322,0.084224268794060,-0.047774471342564,0.013504370115697,0.078161269426346,0.145740419626236,-0.104855328798294,0.050537619739771));
res += mul(Get(s2,-dx,dy), float4x4(0.038888599723577,0.090033307671547,0.048854347318411,0.052578903734684,0.076869122684002,0.099404558539391,-0.074527397751808,-0.183163091540337,0.151343688368797,0.085792146623135,-0.056020464748144,-0.128434762358665,0.080860279500484,-0.112633958458900,-0.043383784592152,0.019608708098531));
res += mul(Get(s2,0,-dy), float4x4(0.027186915278435,-0.075571313500404,0.023521848022938,-0.238542735576630,0.100335940718651,-0.058102246373892,-0.252907633781433,-0.251982241868973,0.278111129999161,0.112241446971893,-0.178010240197182,-0.056783374398947,-0.013001658953726,0.066873326897621,0.033154498785734,0.019718023017049));
res += mul(Get(s2,0,0), float4x4(-0.021688502281904,-0.051717180758715,0.084597609937191,-0.153631046414375,-0.088168874382973,0.064336068928242,0.002890875795856,0.157972678542137,0.151653647422791,0.003487288719043,-0.079015716910362,0.129484236240387,0.051290132105350,-0.103927858173847,-0.049890015274286,-0.235888168215752));
res += mul(Get(s2,0,dy), float4x4(0.017219621688128,0.107815064489841,0.143012866377831,0.130021288990974,0.130226314067841,-0.137614682316780,0.014661548659205,-0.161655440926552,0.177890196442604,0.062560252845287,-0.174679532647133,0.017864100635052,-0.163631215691566,-0.090971887111664,0.057528093457222,-0.039503082633018));
res += mul(Get(s2,dx,-dy), float4x4(0.164161071181297,-0.068449340760708,-0.139314159750938,-0.025888353586197,-0.112794689834118,-0.013787870295346,0.026007704436779,-0.010697567835450,0.000207039789530,0.105535134673119,0.000282111461274,0.058035366237164,-0.028732497245073,-0.095552861690521,0.023841856047511,-0.162050038576126));
res += mul(Get(s2,dx,0), float4x4(0.008181456476450,0.102009892463684,-0.079838871955872,-0.170140072703362,0.205875113606453,0.067308977246284,0.058575518429279,0.072747349739075,0.080344989895821,-0.144338801503181,-0.032176561653614,-0.203710809350014,0.172481253743172,0.204784840345383,0.012367215007544,0.107291325926781));
res += mul(Get(s2,dx,dy), float4x4(0.123615242540836,0.135099619626999,-0.060137744992971,-0.123099140822887,-0.042495142668486,-0.080041550099850,-0.015327984467149,-0.194426730275154,-0.033239528536797,-0.087384201586246,0.056423678994179,0.014949264936149,-0.224239185452461,-0.054108090698719,0.079636372625828,-0.034137930721045));
res += mul(Get(s3,-dx,-dy), float4x4(-0.025051679462194,-0.108227871358395,0.006959245540202,0.078666180372238,-0.073113664984703,0.105597630143166,0.186601683497429,0.096201360225677,-0.098739355802536,-0.053895492106676,0.024835743010044,0.065642766654491,-0.187700912356377,-0.025786019861698,-0.134522303938866,-0.157200872898102));
res += mul(Get(s3,-dx,0), float4x4(-0.064688131213188,-0.062458623200655,0.014865277335048,0.276143699884415,0.159561052918434,0.018407186493278,-0.104881294071674,0.057748381048441,-0.072768405079842,0.019591905176640,0.084003031253815,-0.136931031942368,-0.149457767605782,-0.065714307129383,-0.173093497753143,-0.017238760367036));
res += mul(Get(s3,-dx,dy), float4x4(-0.072263807058334,-0.039799623191357,0.096976615488529,-0.047256350517273,-0.117699965834618,0.129635766148567,0.086327098309994,0.105843417346478,0.057015236467123,0.005335773341358,-0.068682730197906,0.174064204096794,-0.090067610144615,0.128164514899254,0.107663072645664,-0.011477389372885));
res += mul(Get(s3,0,-dy), float4x4(0.129340946674347,0.071109071373940,-0.103740610182285,0.010448745451868,-0.200917854905128,0.021743951365352,-0.048329237848520,-0.080732055008411,-0.045131407678127,0.085203155875206,-0.004038238897920,-0.038681250065565,-0.089450776576996,0.181946679949760,0.108538493514061,0.024950928986073));
res += mul(Get(s3,0,0), float4x4(-0.251522302627563,0.214081794023514,0.051027592271566,0.001330739585683,-0.102317951619625,-0.141523793339729,-0.064558535814285,-0.033931370824575,0.038825608789921,0.105987608432770,-0.074652433395386,-0.062686316668987,0.273069649934769,-0.085004635155201,0.007100321818143,0.136951193213463));
res += mul(Get(s3,0,dy), float4x4(0.006645887158811,-0.005600966978818,-0.034755248576403,0.029380785301328,-0.080548353493214,0.213250264525414,-0.131560802459717,-0.075284339487553,-0.081199087202549,0.100211203098297,-0.116065956652164,-0.086123399436474,-0.228466540575027,0.072237044572830,0.098863065242767,-0.018471769988537));
res += mul(Get(s3,dx,-dy), float4x4(-0.066112384200096,-0.140497833490372,-0.195883810520172,-0.064137309789658,-0.120628058910370,0.011955215595663,0.032391734421253,0.079365573823452,-0.081368647515774,0.253033816814423,0.051082685589790,0.009497151710093,-0.006686463020742,0.095384418964386,0.187578260898590,0.009416435845196));
res += mul(Get(s3,dx,0), float4x4(-0.013067701831460,0.082305885851383,-0.113248668611050,-0.053174611181021,0.100483119487762,-0.124439246952534,-0.177031666040421,-0.018301699310541,0.092195175588131,0.156641334295273,-0.056943003088236,0.071649834513664,0.097938090562820,0.021296335384250,-0.190638586878777,0.146906033158302));
res += mul(Get(s3,dx,dy), float4x4(-0.102917633950710,0.097449630498886,-0.100665174424648,0.172229319810867,0.023163979873061,0.022686626762152,0.069507949054241,0.052197024226189,-0.136036574840546,-0.011584078893065,0.086065001785755,-0.034819066524506,0.061430484056473,0.000663663202431,-0.021663406863809,-0.029637746512890));
return max(float4(0,0,0,0), res);
}