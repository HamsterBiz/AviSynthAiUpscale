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
res += mul(Get(s0,-dx,-dy), float4x4(-0.091502875089645,0.189716070890427,0.159349650144577,-0.147021412849426,-0.156918257474899,0.039852168411016,0.105589255690575,0.170870095491409,-0.102755486965179,0.161239534616470,-0.090330980718136,0.025099374353886,-0.073404319584370,0.044229928404093,-0.126566633582115,-0.077165611088276));
res += mul(Get(s0,-dx,0), float4x4(0.051219236105680,0.049868665635586,-0.055766388773918,-0.081608414649963,-0.027514288201928,0.000749562517740,-0.035232070833445,-0.043499011546373,0.012398984283209,0.062429703772068,0.071993008255959,-0.188775599002838,-0.051137633621693,0.057954352349043,-0.046201307326555,0.078225225210190));
res += mul(Get(s0,-dx,dy), float4x4(-0.069738060235977,0.029839146882296,-0.052668042480946,-0.118664048612118,-0.148818328976631,0.025504294782877,0.049021027982235,0.022699398919940,0.014823887497187,0.079310342669487,-0.065081499516964,0.158683046698570,0.021494708955288,-0.080429464578629,0.056513469666243,0.064351044595242));
res += mul(Get(s0,0,-dy), float4x4(-0.068788088858128,0.129854500293732,0.051372479647398,-0.089370943605900,-0.012415598146617,-0.034737657755613,-0.064860343933105,0.065157651901245,-0.060210399329662,-0.078514963388443,0.082963354885578,-0.108911857008934,-0.069147638976574,0.060730185359716,-0.040012899786234,-0.069671139121056));
res += mul(Get(s0,0,0), float4x4(0.099218226969242,-0.016672955825925,0.063005261123180,0.035211473703384,-0.203523486852646,-0.077501043677330,-0.040416814386845,-0.052005141973495,0.305400401353836,0.062768146395683,0.074082963168621,-0.108989171683788,0.018662957474589,-0.019884344190359,0.008182865567505,-0.075663067400455));
res += mul(Get(s0,0,dy), float4x4(-0.035993792116642,-0.069273710250854,-0.139624223113060,-0.070238329470158,-0.066109359264374,0.050011094659567,0.107282720506191,0.017402766272426,0.101081110537052,0.037023801356554,0.113673478364944,-0.073793277144432,0.068795584142208,-0.001116909203120,0.089378692209721,0.143983483314514));
res += mul(Get(s0,dx,-dy), float4x4(-0.096774488687515,-0.143417060375214,-0.069437295198441,0.116423875093460,-0.030399866402149,0.120710343122482,0.015474967658520,-0.127606019377708,0.078833177685738,0.111199118196964,0.036893453449011,-0.020242756232619,-0.027809994295239,0.070585094392300,0.133977219462395,0.063707537949085));
res += mul(Get(s0,dx,0), float4x4(0.003648190526292,0.126173168420792,-0.100577197968960,0.022463701665401,-0.029198739677668,-0.118254907429218,0.044257074594498,0.087951868772507,0.001204529078677,0.092808932065964,0.064871937036514,-0.117994002997875,-0.108444735407829,0.038846533745527,-0.007693982683122,-0.091767415404320));
res += mul(Get(s0,dx,dy), float4x4(-0.080843493342400,-0.020161595195532,0.035694040358067,0.010912330821157,0.006570191122591,0.120182894170284,0.070193275809288,0.169280543923378,-0.158775538206100,-0.005281688645482,-0.037675809115171,0.260579943656921,0.012873775325716,0.100907027721405,-0.072563067078590,-0.023033743724227));
res += mul(Get(s1,-dx,-dy), float4x4(0.031517568975687,-0.052435271441936,-0.061932507902384,-0.022394686937332,-0.054905861616135,-0.070916205644608,-0.152910441160202,0.049796838313341,-0.053224962204695,0.082733675837517,0.072186619043350,0.043765224516392,-0.027043653652072,-0.220019876956940,-0.050803035497665,0.117775700986385));
res += mul(Get(s1,-dx,0), float4x4(-0.120221644639969,-0.046377263963223,0.157686665654182,0.038696363568306,0.025590984150767,-0.087529532611370,0.126164644956589,0.110676936805248,-0.020568132400513,0.148306399583817,0.021321497857571,-0.070370018482208,0.116014271974564,0.107336215674877,-0.030220741406083,-0.099269613623619));
res += mul(Get(s1,-dx,dy), float4x4(0.101192846894264,-0.028388356789947,-0.159373849630356,0.073972076177597,-0.090518184006214,-0.085618570446968,-0.029201885685325,-0.025800550356507,-0.015402756631374,0.062834002077579,-0.009647333994508,-0.126606091856956,0.200748890638351,-0.001240142271854,-0.050236973911524,0.013198951259255));
res += mul(Get(s1,0,-dy), float4x4(-0.002135065151379,-0.015641989186406,0.015748893842101,0.069110207259655,0.017878966405988,0.040900833904743,-0.022978687658906,-0.069251053035259,0.014779176563025,0.070592463016510,0.107455141842365,0.035307068377733,-0.053058627992868,0.037987831979990,0.169630303978920,0.022264013066888));
res += mul(Get(s1,0,0), float4x4(-0.058662138879299,0.006484096404165,-0.028903942555189,0.067988269031048,0.293900072574615,-0.003331396961585,-0.033782888203859,0.039645634591579,0.042173907160759,-0.004349025897682,-0.104214809834957,0.013084820471704,0.003903976874426,-0.092899523675442,-0.052041415125132,0.027186565101147));
res += mul(Get(s1,0,dy), float4x4(-0.043412752449512,-0.072431780397892,-0.009402387775481,0.016234543174505,-0.010179006494582,-0.081737488508224,-0.081192724406719,0.041881941258907,0.002460427349433,-0.080708533525467,-0.088322035968304,0.037791401147842,0.034703858196735,-0.012913001701236,-0.001552971778437,-0.067880801856518));
res += mul(Get(s1,dx,-dy), float4x4(0.077564001083374,0.199782818555832,-0.153409808874130,0.128698483109474,-0.052251577377319,-0.172171533107758,0.057700760662556,0.032614544034004,-0.082944616675377,-0.173079386353493,-0.019806819036603,-0.142983183264732,0.113114610314369,0.014423973858356,-0.042179908603430,-0.065201409161091));
res += mul(Get(s1,dx,0), float4x4(-0.000508398574311,0.031436331570148,-0.125645965337753,-0.071934320032597,0.063528075814247,-0.124951906502247,-0.031694922596216,0.014614114537835,-0.030120361596346,0.031734157353640,-0.162562549114227,-0.058391775935888,0.014122350141406,0.194570943713188,0.014353427104652,-0.043621227145195));
res += mul(Get(s1,dx,dy), float4x4(-0.013477933593094,0.151076883077621,0.136317729949951,0.174263089895248,-0.062994718551636,-0.016603900119662,0.029988968744874,0.061113324016333,-0.030873237177730,-0.110516533255577,0.043861888349056,0.020858174189925,-0.014521075412631,0.060738477855921,0.003938569687307,0.007090048398823));
res += mul(Get(s2,-dx,-dy), float4x4(0.044678114354610,-0.047837477177382,0.057823326438665,0.009253045544028,0.061838779598475,-0.084070414304733,-0.045876786112785,0.050294030457735,-0.017303865402937,0.003154763719067,-0.051873169839382,0.184439852833748,0.038137190043926,0.083958595991135,-0.149298712611198,-0.174585342407227));
res += mul(Get(s2,-dx,0), float4x4(-0.112034380435944,-0.004375116899610,-0.107683017849922,0.149660140275955,0.017882533371449,0.059728380292654,-0.013172985985875,0.021259659901261,0.001795794116333,0.043022185564041,0.145694538950920,-0.059881761670113,-0.031012829393148,0.000879088533111,-0.020827196538448,0.045621830970049));
res += mul(Get(s2,-dx,dy), float4x4(0.025183213874698,-0.074282526969910,-0.035016581416130,-0.147350028157234,-0.107670307159424,0.063686862587929,0.040777139365673,0.051302868872881,0.125886932015419,0.038745895028114,0.023609364405274,0.000204415235203,-0.063917927443981,0.100132867693901,-0.115971907973289,-0.044888384640217));
res += mul(Get(s2,0,-dy), float4x4(-0.038567502051592,0.116621732711792,-0.158079341053963,0.066045001149178,-0.115065105259418,-0.012931085191667,-0.139191299676895,-0.010921894572675,0.113211371004581,-0.034277696162462,-0.083413302898407,0.061016775667667,0.019601216539741,-0.033620603382587,0.014040318317711,-0.049847550690174));
res += mul(Get(s2,0,0), float4x4(-0.146836087107658,-0.004145164974034,0.019807258620858,0.073730699717999,0.073065474629402,0.106904186308384,-0.076748460531235,0.047987487167120,-0.059830237179995,0.064983628690243,0.033823825418949,0.003045011777431,0.038034107536077,0.034797612577677,-0.062939994037151,0.031530220061541));
res += mul(Get(s2,0,dy), float4x4(-0.046244222670794,0.116975106298923,0.076059818267822,-0.009252182208002,0.057188849896193,0.027323313057423,-0.038583930581808,-0.013628216460347,0.060343332588673,-0.089036360383034,-0.184008315205574,0.085490353405476,0.046358842402697,-0.014790703542531,-0.045550607144833,-0.157175183296204));
res += mul(Get(s2,dx,-dy), float4x4(-0.026808243244886,-0.014629960060120,0.029508382081985,-0.099213749170303,-0.068454973399639,-0.129940465092659,0.021178130060434,0.164146065711975,0.073009699583054,0.039738412946463,0.079741545021534,-0.006257640663534,-0.133800700306892,-0.045614067465067,0.133065178990364,-0.065738961100578));
res += mul(Get(s2,dx,0), float4x4(-0.004719809163362,-0.009502962231636,-0.073782488703728,-0.054067004472017,-0.084402568638325,-0.107903204858303,-0.019679900258780,-0.052630625665188,0.072113819420338,-0.136158242821693,-0.185911267995834,0.091782517731190,-0.057026334106922,0.032233148813248,-0.096249118447304,0.041103243827820));
res += mul(Get(s2,dx,dy), float4x4(-0.055649839341640,-0.118194885551929,0.041200421750546,-0.045038342475891,-0.019979899749160,-0.064057506620884,-0.014208700507879,0.065238766372204,0.039175391197205,-0.001313948305324,0.045256122946739,-0.021112147718668,0.025704717263579,0.016513895243406,0.064685821533203,-0.187656939029694));
res += mul(Get(s3,-dx,-dy), float4x4(-0.001227852539159,-0.131006076931953,-0.067177809774876,-0.099225066602230,0.017176283523440,0.091864474117756,0.016005197539926,0.047162462025881,-0.098106995224953,-0.015997206792235,-0.017075875774026,-0.140626356005669,-0.029867136850953,0.039018176496029,-0.016371501609683,-0.047094892710447));
res += mul(Get(s3,-dx,0), float4x4(-0.031972803175449,-0.008832179941237,-0.035918585956097,-0.070875614881516,-0.018754942342639,0.040206689387560,0.075376965105534,0.133848577737808,0.043527264147997,-0.042904429137707,-0.148332968354225,0.023644514381886,-0.070970557630062,0.010614959523082,0.030039919540286,-0.024206977337599));
res += mul(Get(s3,-dx,dy), float4x4(-0.020920865237713,0.041982617229223,0.106568045914173,-0.041290588676929,0.074170410633087,0.048104591667652,-0.151976659893990,0.011245317757130,0.115662038326263,-0.014478965662420,-0.104306213557720,0.037494737654924,0.002247240860015,-0.127955555915833,0.095737099647522,0.012780046090484));
res += mul(Get(s3,0,-dy), float4x4(-0.076851740479469,-0.042346403002739,0.039183381944895,0.052422095090151,-0.117385767400265,0.069235749542713,-0.079510264098644,0.135651275515556,0.002830372191966,0.136136427521706,0.026631094515324,0.017272476106882,-0.029668765142560,0.008119274862111,0.098969653248787,0.025845147669315));
res += mul(Get(s3,0,0), float4x4(0.090223357081413,-0.087238147854805,0.036038532853127,-0.113850891590118,-0.011051716282964,0.053149387240410,-0.107857212424278,0.148084595799446,-0.153771802783012,0.102063700556755,-0.147505640983582,-0.081713028252125,0.065982490777969,-0.074865117669106,-0.044326163828373,-0.055681452155113));
res += mul(Get(s3,0,dy), float4x4(-0.022502591833472,0.016876369714737,0.096341475844383,-0.010410126298666,0.020174313336611,-0.021852249279618,-0.132316797971725,-0.043540190905333,-0.032045237720013,0.168221876025200,0.128228098154068,-0.033025141805410,-0.029319867491722,-0.006894472055137,-0.023694016039371,-0.084492027759552));
res += mul(Get(s3,dx,-dy), float4x4(-0.094051636755466,0.058143906295300,-0.051371667534113,0.049214478582144,-0.066910192370415,-0.145519524812698,0.048635400831699,-0.037500027567148,0.142576321959496,-0.035287450999022,-0.112181901931763,0.088044844567776,-0.121132664382458,-0.082783028483391,0.009417521767318,0.005439545493573));
res += mul(Get(s3,dx,0), float4x4(0.012167287059128,0.082190252840519,-0.015772605314851,0.038673426955938,-0.000862437766045,0.003987933974713,-0.038551818579435,0.046616483479738,-0.063752710819244,-0.153041347861290,-0.004716792609543,0.015513643622398,-0.035786997526884,-0.046366665512323,0.135583490133286,0.009992406703532));
res += mul(Get(s3,dx,dy), float4x4(-0.084052301943302,0.208918407559395,0.032090447843075,0.005876606330276,0.045983530580997,-0.124067880213261,-0.091447152197361,-0.064788267016411,0.087488964200020,0.110585600137711,-0.061817508190870,-0.016091845929623,-0.101484216749668,0.137936905026436,0.074875518679619,-0.004428972024471));
return max(float4(0,0,0,0), res);
}