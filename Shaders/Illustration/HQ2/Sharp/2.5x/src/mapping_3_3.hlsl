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
res += mul(Get(s0,-dx,-dy), float4x4(-0.019781013950706,0.049023658037186,0.020859174430370,-0.046662505716085,-0.083778142929077,0.022369969636202,0.107158631086349,0.053525246679783,0.010846061632037,0.015007923357189,0.011579236947000,-0.003929992672056,-0.007541406434029,0.032743088901043,0.070042662322521,-0.121624670922756));
res += mul(Get(s0,-dx,0), float4x4(-0.000408249965403,0.001141100190580,-0.029499169439077,0.101715900003910,0.025436419993639,0.157132282853127,-0.076589561998844,-0.076181963086128,-0.209824904799461,0.094936601817608,0.073910363018513,0.017274338752031,0.308295518159866,0.099027350544930,0.093872807919979,-0.041117362678051));
res += mul(Get(s0,-dx,dy), float4x4(-0.183828607201576,0.084164626896381,-0.109938405454159,0.005252866074443,-0.129208505153656,0.110771909356117,-0.003525697859004,-0.057900175452232,-0.182518124580383,-0.053294666111469,0.000528656702954,-0.063163831830025,-0.032897263765335,-0.208410188555717,0.076806001365185,-0.148120179772377));
res += mul(Get(s0,0,-dy), float4x4(0.112251237034798,-0.047531545162201,-0.044700138270855,0.038275651633739,-0.041949372738600,0.171699360013008,-0.110174007713795,0.027669690549374,-0.097536936402321,-0.048645067960024,0.042546384036541,0.204080075025558,0.097257845103741,-0.092995651066303,-0.036337468773127,0.062044113874435));
res += mul(Get(s0,0,0), float4x4(0.036990743130445,0.049549825489521,0.046166937798262,-0.021376334130764,-0.008252568542957,0.019812101498246,-0.084649130702019,-0.051484711468220,-0.011865971609950,-0.063937529921532,0.051811128854752,0.004196372348815,-0.002672969829291,-0.016574345529079,0.015679446980357,0.183337569236755));
res += mul(Get(s0,0,dy), float4x4(-0.151813298463821,-0.057830940932035,0.024475859478116,-0.164488404989243,-0.038472585380077,0.084672257304192,-0.131656572222710,-0.111750066280365,-0.009480723179877,-0.072743333876133,0.241761490702629,-0.070598222315311,-0.157758489251137,0.015902193263173,0.041768454015255,0.061979368329048));
res += mul(Get(s0,dx,-dy), float4x4(0.179016157984734,-0.176582008600235,0.118272215127945,-0.143047749996185,0.018795618787408,-0.053322095423937,-0.085096955299377,-0.048611775040627,-0.074844680726528,-0.024864511564374,0.032553292810917,-0.140077039599419,0.181029453873634,0.120773330330849,0.026558890938759,-0.022465556859970));
res += mul(Get(s0,dx,0), float4x4(-0.009613868780434,0.081890381872654,-0.086757861077785,-0.055874682962894,-0.063666805624962,-0.017477734014392,0.033216461539268,-0.062579274177551,0.105578571557999,0.005108809098601,-0.178268045186996,-0.024962320923805,-0.093596696853638,-0.052898019552231,0.200531274080276,0.137695863842964));
res += mul(Get(s0,dx,dy), float4x4(-0.127360463142395,0.043790522962809,0.042329363524914,-0.031899686902761,-0.022550780326128,-0.154110744595528,-0.021663488820195,0.061369869858027,0.082658164203167,0.034341577440500,0.015846811234951,-0.042894512414932,0.007761210203171,-0.056643072515726,-0.139670133590698,0.031508065760136));
res += mul(Get(s1,-dx,-dy), float4x4(0.203794866800308,-0.048192951828241,0.071626439690590,-0.191089645028114,-0.021661251783371,0.187343999743462,0.045017726719379,-0.022511413320899,-0.115433037281036,0.085182316601276,-0.032893791794777,-0.011300755664706,-0.000558885978535,-0.091826461255550,-0.011479726061225,-0.083912596106529));
res += mul(Get(s1,-dx,0), float4x4(0.092694088816643,0.025287134572864,0.108362376689911,-0.010658797807992,-0.001306772464886,-0.105382844805717,-0.106823682785034,-0.003392085665837,-0.052136037498713,-0.003269108245149,-0.058364525437355,-0.239515751600266,0.046951081603765,0.015201697126031,0.082385554909706,-0.019798740744591));
res += mul(Get(s1,-dx,dy), float4x4(0.061999067664146,-0.003080243477598,-0.047734320163727,0.008210044354200,0.060076467692852,-0.030593257397413,-0.075999684631824,-0.095855258405209,-0.083618067204952,0.019154667854309,-0.069029323756695,-0.011681985110044,-0.091599851846695,-0.041270513087511,0.208709761500359,-0.147950261831284));
res += mul(Get(s1,0,-dy), float4x4(0.001163830631413,0.080084100365639,0.033124614506960,0.065640814602375,0.028072200715542,-0.086892053484917,-0.131701990962029,-0.098057381808758,-0.225829049944878,0.048066638410091,-0.033142875880003,0.015973599627614,0.111387409269810,0.125616341829300,-0.049456175416708,0.133537173271179));
res += mul(Get(s1,0,0), float4x4(0.040078651160002,-0.072248436510563,-0.017314085736871,-0.008484803140163,-0.057213492691517,0.129238203167915,-0.151649400591850,-0.016903899610043,0.219766870141029,-0.015610517002642,0.126045897603035,0.006393511313945,0.122875846922398,0.038472473621368,0.071859754621983,0.079147778451443));
res += mul(Get(s1,0,dy), float4x4(0.191026255488396,0.068900242447853,-0.092971295118332,0.110474318265915,0.148055642843246,-0.011444083414972,-0.071488298475742,0.075373433530331,-0.044669445604086,0.032755982130766,-0.000700738513842,-0.048776999115944,0.004688895307481,-0.001961073605344,-0.099406391382217,0.003816145472229));
res += mul(Get(s1,dx,-dy), float4x4(-0.045725822448730,0.015847088769078,0.006508123129606,-0.119065560400486,-0.068063542246819,0.011106696911156,-0.082308009266853,0.073965243995190,0.077142223715782,-0.101127378642559,0.040745306760073,-0.121094182133675,0.057357385754585,0.060012761503458,-0.121273934841156,-0.008389333263040));
res += mul(Get(s1,dx,0), float4x4(-0.024797223508358,-0.124808713793755,0.161555439233780,0.216144427657127,-0.020477117970586,-0.119492419064045,-0.058206748217344,0.179859772324562,0.006572724319994,0.015265367925167,0.183912217617035,-0.039587702602148,-0.103756815195084,0.045113358646631,-0.073598265647888,0.131154879927635));
res += mul(Get(s1,dx,dy), float4x4(-0.049779269844294,0.052871320396662,-0.028797022998333,0.109116971492767,0.007985990494490,-0.091144189238548,-0.153099045157433,-0.050423093140125,-0.092801585793495,-0.087179422378540,0.073467053472996,0.206046029925346,0.066552028059959,0.055207099765539,-0.036291435360909,0.030368182808161));
res += mul(Get(s2,-dx,-dy), float4x4(-0.039110492914915,-0.032783757895231,-0.150156006217003,0.027038909494877,-0.097008831799030,0.058165077120066,0.128169029951096,-0.178893819451332,-0.193020656704903,-0.079343944787979,-0.020322652533650,-0.195111081004143,-0.142655774950981,-0.063634939491749,0.071459926664829,-0.041307166218758));
res += mul(Get(s2,-dx,0), float4x4(0.129362478852272,-0.070491805672646,-0.129693344235420,0.030119327828288,-0.087006539106369,-0.009789533913136,-0.062908403575420,-0.108543284237385,-0.035906177014112,0.042333774268627,0.012812752276659,0.065883494913578,0.155736699700356,0.011737842112780,-0.102225713431835,0.103922367095947));
res += mul(Get(s2,-dx,dy), float4x4(-0.101494409143925,0.016330631449819,-0.001545517356135,0.153470203280449,0.103161759674549,0.213245034217834,0.088298171758652,0.054446022957563,-0.087462961673737,0.074744313955307,-0.103471301496029,-0.082400061190128,0.114271998405457,-0.103328607976437,0.021506970748305,0.035820469260216));
res += mul(Get(s2,0,-dy), float4x4(0.166062772274017,-0.207759916782379,0.070536226034164,0.031026132404804,-0.020672693848610,-0.008898427709937,-0.075892291963100,-0.054693959653378,-0.053863331675529,-0.059654902666807,-0.065981090068817,0.041518867015839,0.007795443292707,0.022208884358406,0.095519356429577,0.036974340677261));
res += mul(Get(s2,0,0), float4x4(-0.008909444324672,-0.035143602639437,0.076932646334171,0.001352668972686,-0.050361771136522,0.033911608159542,0.029268160462379,0.033746417611837,-0.077629633247852,0.194429963827133,-0.141979217529297,0.069637902081013,0.142256721854210,0.101925857365131,0.083429433405399,0.235016256570816));
res += mul(Get(s2,0,dy), float4x4(0.027127515524626,0.075019791722298,0.018754774704576,0.045704521238804,-0.000331266433932,-0.085999064147472,0.006218940485269,-0.011085632257164,-0.072282388806343,0.099837929010391,-0.028053518384695,-0.114002123475075,0.019517391920090,-0.103101506829262,-0.148735359311104,0.044465206563473));
res += mul(Get(s2,dx,-dy), float4x4(0.142562016844749,-0.026286823675036,-0.025304388254881,-0.037709776312113,0.072397977113724,-0.029416991397738,0.040577992796898,0.029722772538662,-0.043533898890018,0.104146145284176,-0.102726176381111,0.110945299267769,-0.094193115830421,-0.020120715722442,0.064553990960121,0.097647249698639));
res += mul(Get(s2,dx,0), float4x4(0.111508615314960,0.029891313984990,0.056014657020569,-0.111167915165424,-0.037460926920176,-0.114190541207790,-0.130878850817680,0.036918118596077,0.063754305243492,0.104547448456287,-0.035219147801399,0.061105415225029,0.100808463990688,-0.136257156729698,-0.017710611224174,-0.011344172060490));
res += mul(Get(s2,dx,dy), float4x4(-0.068589001893997,0.036232721060514,0.207200765609741,0.023156188428402,0.007362980861217,-0.002110207919031,0.026527555659413,-0.034052517265081,0.102076269686222,0.031078340485692,0.024520413950086,0.005833907518536,0.200459182262421,0.059203449636698,0.123904831707478,0.158853411674500));
res += mul(Get(s3,-dx,-dy), float4x4(-0.040247034281492,0.099724650382996,0.104791775345802,-0.013847731053829,-0.047637179493904,-0.020279664546251,0.087895661592484,0.025606544688344,-0.105067573487759,-0.001322164665908,-0.042103521525860,0.032060973346233,-0.159670382738113,0.010636250488460,-0.019093416631222,-0.076480641961098));
res += mul(Get(s3,-dx,0), float4x4(-0.067113280296326,0.122619591653347,-0.025404259562492,-0.080770373344421,0.082029357552528,0.078837543725967,-0.056896131485701,-0.084502585232258,0.067715153098106,0.076646313071251,-0.087860904633999,-0.161563053727150,0.159877732396126,0.038237854838371,0.050231408327818,-0.003105085808784));
res += mul(Get(s3,-dx,dy), float4x4(0.112622179090977,-0.086558893322945,0.024918878450990,0.001846850151196,-0.109689384698868,0.016148325055838,0.085163064301014,-0.010418199002743,0.030930770561099,0.159633830189705,-0.034589111804962,-0.065826267004013,-0.031188169494271,0.079304821789265,0.022710248827934,0.012588255107403));
res += mul(Get(s3,0,-dy), float4x4(0.018612524494529,-0.092803515493870,0.071723900735378,-0.165896400809288,0.037772938609123,-0.247889101505280,-0.057508241385221,0.093483120203018,-0.023585347458720,-0.103342920541763,-0.145710036158562,-0.056850928813219,0.086718440055847,0.021853474900126,-0.216347888112068,0.160297468304634));
res += mul(Get(s3,0,0), float4x4(-0.115037642419338,0.002227922668681,-0.211162582039833,0.122294284403324,0.072587966918945,-0.015741180628538,0.117125943303108,-0.061604458838701,-0.124789878726006,0.190723866224289,-0.013607616536319,-0.114788159728050,-0.055489555001259,-0.101181134581566,-0.066471785306931,0.038390792906284));
res += mul(Get(s3,0,dy), float4x4(0.117301568388939,-0.052295945584774,-0.049548223614693,-0.101826488971710,-0.107958167791367,0.056801307946444,0.082665435969830,-0.104256980121136,0.118669889867306,0.018092583864927,-0.015426491387188,0.103445760905743,0.061757259070873,-0.064630419015884,-0.035281412303448,-0.053426004946232));
res += mul(Get(s3,dx,-dy), float4x4(0.002303037093952,-0.046310562640429,-0.011260122992098,0.030220339074731,0.032048355787992,0.104735009372234,0.063033819198608,-0.040902398526669,0.023570656776428,-0.079278632998466,-0.062549181282520,0.093327410519123,0.082456678152084,-0.069095551967621,-0.047669384628534,0.076351709663868));
res += mul(Get(s3,dx,0), float4x4(-0.070747159421444,-0.215638160705566,-0.071843884885311,0.120851747691631,-0.149484872817993,0.005430730991066,-0.090365156531334,0.107602283358574,0.162407919764519,-0.076256200671196,0.058249384164810,-0.140902534127235,0.103732489049435,-0.060769319534302,-0.117008127272129,0.072547815740108));
res += mul(Get(s3,dx,dy), float4x4(-0.058639276772738,0.047055128961802,-0.194476962089539,0.070763699710369,0.058834642171860,0.081855475902557,-0.022059302777052,-0.010109068825841,0.002214672975242,0.023865966126323,-0.095617800951004,0.021329917013645,0.049595091491938,0.022526888176799,-0.003348213154823,0.010601767338812));
return max(float4(0,0,0,0), res);
}