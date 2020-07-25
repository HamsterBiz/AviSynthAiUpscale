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
res += mul(Get(s0,-dx,-dy), float4x4(0.253622084856033,-0.020315567031503,0.212609320878983,0.041329883038998,-0.038580495864153,0.106745541095734,0.035785939544439,0.169098228216171,-0.053048651665449,-0.076255097985268,-0.137821704149246,-0.062368839979172,-0.025298759341240,0.126627504825592,-0.175430402159691,0.068106919527054));
res += mul(Get(s0,-dx,0), float4x4(-0.012697459198534,0.070471987128258,0.032470181584358,-0.131216362118721,0.162642568349838,0.118326857686043,0.081962943077087,0.253018081188202,-0.023964047431946,-0.004477341193706,-0.051172651350498,0.109968952834606,-0.129569485783577,-0.013891832903028,-0.070508882403374,0.085528247058392));
res += mul(Get(s0,-dx,dy), float4x4(-0.163607016205788,-0.083504587411880,-0.196701303124428,-0.088037714362144,0.002386782784015,-0.113927684724331,0.016007723286748,0.016399467363954,-0.048204485327005,-0.080433458089828,0.141317874193192,0.075032077729702,0.229041963815689,-0.116590283811092,-0.006984419655055,0.033759549260139));
res += mul(Get(s0,0,-dy), float4x4(0.067660585045815,-0.114041201770306,-0.098453752696514,0.276212066411972,0.145364075899124,0.036405522376299,0.056639373302460,-0.195722386240959,0.129688724875450,0.013697154819965,-0.010072033852339,-0.143059149384499,-0.064293757081032,-0.063710279762745,-0.070620067417622,-0.231408491730690));
res += mul(Get(s0,0,0), float4x4(0.085520252585411,0.033890731632710,0.085973650217056,-0.033228073269129,0.359757333993912,-0.266361773014069,-0.132260784506798,0.086732044816017,0.288885205984116,0.012205139733851,-0.263737350702286,-0.237489953637123,-0.012706989422441,0.051151026040316,-0.053460877388716,0.146571129560471));
res += mul(Get(s0,0,dy), float4x4(-0.187063038349152,0.132766932249069,-0.081337727606297,-0.028118833899498,-0.038761045783758,0.117502823472023,0.043192375451326,0.027133395895362,-0.207435339689255,0.073110826313496,-0.018574248999357,0.067599847912788,-0.055858183652163,-0.030976278707385,0.058560226112604,0.082906663417816));
res += mul(Get(s0,dx,-dy), float4x4(0.104857124388218,-0.196784853935242,-0.026108361780643,-0.140673711895943,-0.000944344035815,-0.033010281622410,0.083969935774803,-0.235794812440872,0.041313398629427,0.030100772157311,-0.043074037879705,0.040893644094467,-0.060586072504520,-0.065060153603554,0.103128343820572,-0.088827729225159));
res += mul(Get(s0,dx,0), float4x4(-0.174897432327271,-0.155983790755272,0.038289431482553,-0.115324437618256,0.078623779118061,0.106297612190247,0.031166654080153,0.153345376253128,-0.111478179693222,-0.016220957040787,-0.042822219431400,0.252522438764572,-0.165146678686142,-0.008773649111390,-0.078392378985882,0.055951304733753));
res += mul(Get(s0,dx,dy), float4x4(0.003330397186801,-0.039883844554424,0.015351982787251,0.293560028076172,0.330588251352310,0.053253140300512,-0.034271635115147,-0.215172946453094,-0.110128626227379,-0.066734209656715,-0.052850540727377,-0.195913672447205,0.064316250383854,-0.114518441259861,0.032925277948380,-0.052368778735399));
res += mul(Get(s1,-dx,-dy), float4x4(0.165977224707603,-0.036441329866648,-0.050928957760334,0.104689434170723,0.025008697062731,-0.058577902615070,0.063364289700985,-0.006144519429654,-0.183741018176079,-0.038920179009438,-0.020533923059702,0.023326307535172,-0.084522351622581,-0.113144680857658,-0.119603134691715,0.180161044001579));
res += mul(Get(s1,-dx,0), float4x4(-0.022499529644847,-0.010829230770469,0.006892477627844,-0.036736946552992,0.008706251159310,-0.034923024475574,-0.079429551959038,0.084904611110687,-0.040458880364895,-0.048793841153383,0.041753925383091,0.044305164366961,-0.057041123509407,-0.089949943125248,0.106763057410717,0.041724815964699));
res += mul(Get(s1,-dx,dy), float4x4(0.131344556808472,-0.130105942487717,-0.037510205060244,0.137103021144867,-0.035327892750502,-0.105929762125015,0.107058003544807,0.146547421813011,0.160467579960823,-0.182792112231255,0.010554801672697,-0.188867583870888,0.026559144258499,0.006039335858077,-0.172776490449905,0.099925607442856));
res += mul(Get(s1,0,-dy), float4x4(-0.144667014479637,0.003617566078901,0.032303728163242,0.093608886003494,0.164822235703468,0.030346084386110,0.188085168600082,0.117041729390621,-0.027970630675554,-0.089646197855473,-0.061546493321657,0.204111978411674,-0.067728057503700,0.026577921584249,0.093739785254002,-0.070922657847404));
res += mul(Get(s1,0,0), float4x4(-0.166343167424202,-0.060827210545540,0.072917133569717,-0.316339969635010,0.019063025712967,-0.043791625648737,0.134238615632057,0.197047024965286,-0.032749220728874,0.047936562448740,-0.054160915315151,-0.067621752619743,0.070567809045315,-0.157587230205536,-0.051152233034372,-0.134000763297081));
res += mul(Get(s1,0,dy), float4x4(-0.092579379677773,-0.156226724386215,-0.096741043031216,-0.050057310611010,0.039772734045982,0.174591019749641,0.191294521093369,0.054046079516411,0.200158819556236,0.031276527792215,0.045151036232710,-0.073571652173996,0.189987018704414,0.111182801425457,0.048323754221201,-0.006085374858230));
res += mul(Get(s1,dx,-dy), float4x4(0.049155358225107,-0.165693342685699,-0.059509757906199,-0.067633979022503,-0.097216285765171,-0.178736045956612,0.053787745535374,0.101905263960361,-0.083489790558815,-0.109291955828667,-0.091689765453339,-0.109633579850197,-0.071667328476906,0.027476381510496,-0.032084934413433,-0.140049904584885));
res += mul(Get(s1,dx,0), float4x4(-0.135749831795692,-0.121098205447197,-0.031367789953947,0.154526963829994,-0.068891331553459,-0.076825551688671,-0.016223391517997,0.021389693021774,0.022369751706719,0.016899921000004,-0.071741215884686,0.047467850148678,0.031584668904543,-0.006768641062081,-0.060825638473034,-0.001966597046703));
res += mul(Get(s1,dx,dy), float4x4(-0.110282793641090,-0.124978095293045,0.026876423507929,-0.211967691779137,-0.174315631389618,0.124914236366749,0.060018315911293,0.146733716130257,0.012289573438466,0.047166410833597,0.107343159615993,-0.068443782627583,-0.041768860071898,-0.086751289665699,0.161946609616280,0.178842246532440));
res += mul(Get(s2,-dx,-dy), float4x4(0.058467339724302,0.065003536641598,0.177863791584969,0.149141862988472,-0.062344189733267,0.024342780932784,-0.071218453347683,0.207480445504189,0.003697326406837,-0.084249794483185,0.112385094165802,0.093323558568954,0.185586094856262,-0.020879279822111,-0.092413544654846,0.118046388030052));
res += mul(Get(s2,-dx,0), float4x4(0.043573461472988,-0.101716056466103,-0.081715986132622,-0.089278057217598,-0.218864560127258,-0.185497835278511,-0.129257738590240,-0.075778655707836,0.200587213039398,0.164856404066086,0.012664020992815,0.094195291399956,0.026330482214689,-0.021802557632327,0.044796552509069,-0.046476092189550));
res += mul(Get(s2,-dx,dy), float4x4(0.088754631578922,-0.009563778527081,-0.071358606219292,-0.094100326299667,-0.005328184459358,0.010965070687234,-0.006300278939307,0.012903552502394,0.085785999894142,0.158435672521591,0.113908261060715,0.024794457480311,-0.165904894471169,0.200258150696754,0.084054082632065,-0.323515921831131));
res += mul(Get(s2,0,-dy), float4x4(-0.042493846267462,0.191392153501511,-0.056393951177597,-0.059222608804703,-0.091025114059448,0.063999176025391,0.026582607999444,0.108051501214504,0.039451211690903,0.036608431488276,0.139578923583031,0.009314361959696,0.028090352192521,0.124754108488560,-0.210353553295135,0.135382041335106));
res += mul(Get(s2,0,0), float4x4(0.041979383677244,0.044332824647427,-0.010714029893279,-0.013471187092364,-0.066633753478527,-0.033322244882584,0.063934795558453,-0.084774985909462,0.083232000470161,-0.022685106843710,0.024240089580417,-0.022128811106086,-0.081086330115795,0.125305384397507,0.009267997927964,-0.024452101439238));
res += mul(Get(s2,0,dy), float4x4(-0.004565782379359,0.097181223332882,-0.085992254316807,-0.069256156682968,-0.095251835882664,0.011410542763770,-0.090685553848743,-0.100388571619987,0.132509618997574,0.054243437945843,0.066281013190746,0.203583553433418,-0.150751233100891,-0.138092651963234,0.014862461946905,0.076290935277939));
res += mul(Get(s2,dx,-dy), float4x4(-0.142390668392181,-0.001178064732812,0.176246181130409,-0.080868981778622,0.027151102200150,0.068458832800388,0.133785665035248,-0.036216758191586,0.006782260723412,-0.043010756373405,-0.208045184612274,0.089144006371498,-0.173240661621094,-0.134255185723305,0.311626076698303,0.177620813250542));
res += mul(Get(s2,dx,0), float4x4(0.021802479401231,-0.042239282280207,0.113667070865631,0.064340248703957,0.004298366140574,0.145996823906898,0.051273912191391,0.159471362829208,-0.006221885327250,0.017714882269502,-0.070819579064846,-0.158544629812241,-0.187773138284683,0.194473296403885,0.071856640279293,-0.184168845415115));
res += mul(Get(s2,dx,dy), float4x4(-0.055760022252798,-0.029343070462346,-0.112253457307816,-0.029376648366451,-0.019576050341129,-0.146669238805771,0.058007117360830,-0.075303830206394,-0.115907110273838,0.102042041718960,-0.019945392385125,0.175247892737389,-0.146798804402351,-0.004920351784676,-0.007193917874247,-0.003744709538296));
res += mul(Get(s3,-dx,-dy), float4x4(0.047860860824585,0.051389317959547,-0.153562843799591,0.001324274926446,-0.058452729135752,0.047762382775545,-0.033118546009064,-0.065326817333698,0.138702139258385,0.175904557108879,0.220291078090668,-0.071460306644440,-0.076447546482086,-0.094153009355068,0.368495732545853,-0.075252339243889));
res += mul(Get(s3,-dx,0), float4x4(0.055856786668301,0.057166617363691,-0.033234503120184,0.093717224895954,0.112390302121639,0.106892034411430,-0.015458361245692,0.026255819946527,0.205070659518242,0.098418407142162,0.121581077575684,0.089028201997280,0.033777404576540,-0.139111354947090,-0.139389991760254,-0.052202884107828));
res += mul(Get(s3,-dx,dy), float4x4(-0.050012093037367,0.000188734993571,-0.048719551414251,0.021239742636681,-0.178938731551170,-0.117675274610519,0.073674067854881,0.045199986547232,0.034750685095787,-0.002699521370232,0.396760493516922,0.154606014490128,-0.023470640182495,-0.221486613154411,-0.030177921056747,-0.057840522378683));
res += mul(Get(s3,0,-dy), float4x4(0.124745808541775,-0.013749581761658,0.034500613808632,0.058649018406868,-0.086888179183006,-0.144284695386887,-0.072735354304314,-0.155867218971252,0.137702614068985,0.057521112263203,-0.115037880837917,-0.083225235342979,-0.187162473797798,-0.068257197737694,-0.019296614453197,0.135851442813873));
res += mul(Get(s3,0,0), float4x4(0.010862020775676,0.005897789262235,0.013734907843173,0.097140669822693,0.116212159395218,-0.176689147949219,-0.129351928830147,-0.207232207059860,-0.019324600696564,-0.181061863899231,0.044956181198359,-0.006601924076676,0.078672729432583,0.001408107113093,-0.006347051821649,0.066808283329010));
res += mul(Get(s3,0,dy), float4x4(0.086917072534561,0.162632003426552,0.117962077260017,-0.051149189472198,0.080730207264423,0.222813799977303,0.065593622624874,0.055500138550997,0.078499935567379,-0.003652245970443,0.147064760327339,-0.076675295829773,-0.106946662068367,0.134076058864594,0.052052367478609,-0.073479548096657));
res += mul(Get(s3,dx,-dy), float4x4(0.218572035431862,0.003160424996167,0.080937691032887,-0.065326012670994,0.019208338111639,0.087562069296837,0.003546413732693,0.143957793712616,-0.132784515619278,-0.018027212470770,-0.225431978702545,0.032221604138613,-0.275290906429291,-0.123690180480480,0.079674713313580,0.077132098376751));
res += mul(Get(s3,dx,0), float4x4(0.052837889641523,0.098801299929619,-0.124830730259418,0.039173468947411,0.083528965711594,-0.247639715671539,0.153218254446983,0.081854157149792,-0.028121707960963,-0.185673490166664,-0.146545201539993,-0.117191910743713,-0.112464539706707,0.056457173079252,0.004618452861905,0.080856576561928));
res += mul(Get(s3,dx,dy), float4x4(0.070011273026466,-0.046166550368071,-0.033276349306107,0.040571752935648,0.104044303297997,0.032745979726315,0.208900123834610,0.091393165290356,0.001510842819698,-0.150120034813881,0.004844155628234,0.044107656925917,-0.118983268737793,0.106126584112644,-0.150262802839279,-0.055385109037161));
return max(float4(0,0,0,0), res);
}