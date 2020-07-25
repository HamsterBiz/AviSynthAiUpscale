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
res += mul(Get(s0,-dx,-dy), float4x4(-0.136672019958496,0.112738646566868,0.107591904699802,0.075867608189583,0.054528653621674,0.084535494446754,-0.039558842778206,0.211046382784843,-0.051014393568039,-0.009490194730461,-0.232227280735970,-0.053509607911110,0.010790226981044,-0.072612307965755,-0.047438897192478,-0.023206025362015));
res += mul(Get(s0,-dx,0), float4x4(0.001125605311245,0.045415427535772,-0.025632953271270,0.132441341876984,0.085869908332825,0.005517481826246,-0.091733604669571,-0.003502706997097,0.089633502066135,0.030701516196132,0.037877671420574,-0.081450469791889,0.081252604722977,0.070218026638031,0.173461392521858,-0.034970305860043));
res += mul(Get(s0,-dx,dy), float4x4(0.071444079279900,0.011710784398019,-0.050017297267914,0.073371060192585,-0.009995215572417,-0.057420823723078,0.060005534440279,0.038476087152958,-0.095660507678986,-0.256442934274673,0.004690021276474,-0.028724670410156,0.053761191666126,-0.102887518703938,-0.104739047586918,-0.065312266349792));
res += mul(Get(s0,0,-dy), float4x4(0.025289855897427,-0.041746493428946,0.026456214487553,0.046995554119349,-0.043168652802706,-0.036335937678814,0.149163484573364,0.150679305195808,0.080173231661320,-0.039417069405317,0.016122639179230,0.092719547450542,0.067274756729603,0.002353422110900,0.004834299907088,-0.039516694843769));
res += mul(Get(s0,0,0), float4x4(-0.088899217545986,0.052293028682470,0.240132719278336,-0.127159520983696,0.074391901493073,0.104556553065777,0.028522131964564,0.111709266901016,-0.168042734265327,0.220992967486382,0.016008200123906,-0.057412464171648,-0.127671658992767,0.108886927366257,0.148753270506859,0.093942992389202));
res += mul(Get(s0,0,dy), float4x4(0.060826860368252,0.199371367692947,-0.065003179013729,0.011766327545047,0.247315332293510,0.136393353343010,-0.078705698251724,-0.103392258286476,-0.258813768625259,-0.013027969747782,-0.041734896600246,-0.015702610835433,0.014856478199363,-0.057680975645781,-0.007919303141534,0.136040717363358));
res += mul(Get(s0,dx,-dy), float4x4(-0.312872469425201,-0.031022217124701,-0.021156908944249,-0.080925427377224,-0.029811346903443,0.097556881606579,0.005714881233871,-0.092169471085072,-0.035662114620209,-0.083129718899727,-0.190988525748253,-0.219762071967125,-0.067543014883995,0.043983612209558,0.008644594810903,-0.099630914628506));
res += mul(Get(s0,dx,0), float4x4(-0.084335386753082,0.160747990012169,0.046080209314823,0.163973346352577,0.153686329722404,-0.056692086160183,0.103896848857403,-0.101258084177971,0.041575487703085,-0.069295525550842,-0.140718102455139,-0.100119724869728,-0.037125911563635,0.079001203179359,-0.059146981686354,0.188265234231949));
res += mul(Get(s0,dx,dy), float4x4(0.117737747728825,-0.016396598890424,0.019664723426104,-0.139382883906364,-0.057365156710148,-0.136737421154976,0.184715986251831,0.108159080147743,0.134129285812378,-0.175955146551132,-0.041686423122883,-0.144550204277039,0.253452241420746,-0.006953977979720,0.050474088639021,0.094956286251545));
res += mul(Get(s1,-dx,-dy), float4x4(-0.149939879775047,0.208353728055954,0.175732061266899,0.003382422495633,-0.095524966716766,-0.078132584691048,0.081518173217773,-0.052640367299318,-0.062610693275928,-0.025249453261495,0.174667626619339,0.070939242839813,0.207749471068382,-0.177220106124878,-0.139334782958031,-0.030498282983899));
res += mul(Get(s1,-dx,0), float4x4(0.004448370542377,-0.124393761157990,0.045775420963764,0.155346244573593,-0.080913648009300,0.037602361291647,-0.054648969322443,-0.138028159737587,0.152570277452469,-0.054925747215748,-0.018133236095309,0.161753758788109,-0.052783034741879,-0.079195521771908,-0.023615961894393,-0.139798238873482));
res += mul(Get(s1,-dx,dy), float4x4(-0.036840289831161,0.034515317529440,0.042038396000862,0.023741068318486,0.043747432529926,-0.020943842828274,0.242969587445259,0.147518932819366,0.081189267337322,-0.038096882402897,-0.095702141523361,-0.037057556211948,0.062731675803661,0.079687871038914,-0.073960036039352,0.178681045770645));
res += mul(Get(s1,0,-dy), float4x4(0.040852241218090,-0.100050047039986,0.025948949158192,-0.119262680411339,-0.160139039158821,0.017460076138377,-0.056512098759413,-0.022641811519861,0.050162781029940,-0.042093228548765,-0.001573916990310,0.119763918220997,0.032248217612505,0.166140168905258,0.056578375399113,0.008585114963353));
res += mul(Get(s1,0,0), float4x4(0.202012270689011,-0.066291823983192,0.115991920232773,0.108614727854729,0.149827167391777,-0.248968482017517,0.121803276240826,-0.073624096810818,-0.007683259900659,0.208009421825409,0.044028759002686,-0.077617764472961,-0.034613221883774,0.040022376924753,-0.134573489427567,0.168474301695824));
res += mul(Get(s1,0,dy), float4x4(0.099402330815792,0.038412615656853,-0.039053410291672,0.206311836838722,-0.012542160227895,0.090810306370258,0.034196585416794,-0.049081120640039,-0.030599458143115,-0.053129930049181,-0.013487306423485,0.016361890360713,0.002438538242131,-0.005668936297297,-0.192818000912666,-0.022119192406535));
res += mul(Get(s1,dx,-dy), float4x4(-0.069584228098392,0.116756044328213,-0.055845167487860,-0.096245639026165,-0.022919362410903,0.190161332488060,0.123063489794731,0.001679751556367,0.045870292931795,-0.016245001927018,0.091992072761059,-0.033684898167849,0.064046435058117,0.117317035794258,-0.037441968917847,-0.216912209987640));
res += mul(Get(s1,dx,0), float4x4(-0.147153422236443,0.031409133225679,0.056833948940039,-0.126692280173302,0.070908196270466,0.018898615613580,-0.040849465876818,0.179121151566505,-0.183965295553207,-0.183222129940987,0.006406115368009,0.118795752525330,0.245518103241920,0.092951990664005,-0.205282062292099,0.149384781718254));
res += mul(Get(s1,dx,dy), float4x4(0.088181920349598,0.111788772046566,-0.053540784865618,0.074340105056763,0.058151476085186,0.131393015384674,-0.071107439696789,-0.020093003287911,0.062635019421577,-0.090125039219856,0.207768231630325,0.064369909465313,0.088028132915497,-0.245535522699356,-0.099525101482868,-0.047650780528784));
res += mul(Get(s2,-dx,-dy), float4x4(-0.011109218932688,-0.178380250930786,-0.019546220079064,0.148283645510674,-0.040631052106619,0.008497259579599,0.050542589277029,-0.064152553677559,-0.100120939314365,0.081310398876667,-0.056668888777494,0.175076067447662,-0.118484921753407,0.108076006174088,-0.172893643379211,-0.088148392736912));
res += mul(Get(s2,-dx,0), float4x4(-0.234650105237961,-0.063346013426781,-0.117771692574024,-0.076578587293625,-0.024522770196199,-0.030511565506458,0.108215078711510,-0.015077200718224,0.057351004332304,-0.009152831509709,-0.007771582342684,0.014635960571468,0.161434412002563,0.000159711096785,-0.148780092597008,-0.280887186527252));
res += mul(Get(s2,-dx,dy), float4x4(0.005702911876142,-0.057480912655592,0.204268336296082,0.111209124326706,-0.125232145190239,-0.021254543215036,-0.071689672768116,-0.088495306670666,0.133778169751167,-0.163875922560692,-0.031051119789481,0.104327365756035,-0.089554958045483,0.140805497765541,0.125354617834091,-0.148016735911369));
res += mul(Get(s2,0,-dy), float4x4(0.043137855827808,-0.146559655666351,0.063607044517994,0.102965310215950,-0.032079011201859,0.025667464360595,0.153415516018867,-0.066747866570950,0.072699837386608,0.221061944961548,0.017483619973063,-0.064950332045555,-0.030756870284677,0.146023541688919,-0.074609175324440,0.091184996068478));
res += mul(Get(s2,0,0), float4x4(-0.104112081229687,-0.015728188678622,-0.075553171336651,0.066279403865337,0.092354394495487,-0.068300172686577,-0.024882083758712,-0.006394699681550,-0.167333856225014,-0.036100700497627,-0.080300159752369,-0.006947611924261,0.034264825284481,-0.114228412508965,0.114493854343891,0.094047643244267));
res += mul(Get(s2,0,dy), float4x4(0.087638095021248,-0.064359173178673,-0.076895900070667,0.081485874950886,-0.244339466094971,0.099314101040363,-0.065104037523270,0.039345163851976,-0.078503824770451,0.025230456143618,-0.024621495977044,-0.180724620819092,-0.186049744486809,0.040469836443663,0.260202586650848,0.203219860792160));
res += mul(Get(s2,dx,-dy), float4x4(0.043551459908485,0.116047628223896,0.047816328704357,0.029169587418437,-0.165902078151703,0.045708619058132,-0.207882270216942,0.136650353670120,-0.092952847480774,0.022042790427804,0.025138290598989,0.006027576979250,-0.136886224150658,0.227041304111481,-0.031047575175762,0.075387731194496));
res += mul(Get(s2,dx,0), float4x4(0.030928907915950,-0.003437714651227,0.029118735343218,0.088677190244198,0.020200235769153,0.065655767917633,-0.006362574640661,0.208368614315987,-0.037463258951902,-0.148972228169441,-0.233394876122475,0.108129158616066,0.062890402972698,0.136134088039398,0.263196080923080,0.209353104233742));
res += mul(Get(s2,dx,dy), float4x4(-0.068496651947498,-0.056783188134432,-0.140271037817001,0.164470583200455,0.045341841876507,-0.076230958104134,-0.075461134314537,0.155268147587776,-0.072473451495171,0.126057088375092,-0.211485624313354,-0.109670095145702,0.009533983655274,-0.033311259001493,-0.096485771238804,-0.188965290784836));
res += mul(Get(s3,-dx,-dy), float4x4(-0.079735621809959,-0.177766025066376,0.106416486203671,-0.098452694714069,-0.044495768845081,-0.131764799356461,-0.003835718845949,0.100881680846214,-0.221197515726089,0.000335125601850,0.015084206126630,-0.125095233321190,0.062319368124008,0.018996462225914,-0.280395299196243,0.096737697720528));
res += mul(Get(s3,-dx,0), float4x4(0.149768203496933,0.115075834095478,-0.013207702897489,-0.026272118091583,0.002777832094580,0.003703436115757,-0.001241435878910,-0.103351026773453,0.088960744440556,-0.138178795576096,-0.036488037556410,0.108372241258621,0.050103105604649,-0.033425763249397,0.229187235236168,-0.002111331094056));
res += mul(Get(s3,-dx,dy), float4x4(0.015932623296976,0.016805423423648,-0.138096317648888,-0.012686373665929,0.024060562252998,-0.034639630466700,0.253833860158920,-0.012735789641738,-0.017574237659574,-0.012426450848579,0.177299544215202,-0.076623752713203,0.116474814713001,-0.000853214762174,-0.076062671840191,0.004592777229846));
res += mul(Get(s3,0,-dy), float4x4(0.036680210381746,0.046329658478498,0.165073588490486,0.161655157804489,-0.164523780345917,-0.040841545909643,-0.035643063485622,0.025549637153745,-0.011992613784969,0.090404205024242,-0.099884890019894,0.067082032561302,0.045035749673843,0.050070218741894,0.117475293576717,-0.082446411252022));
res += mul(Get(s3,0,0), float4x4(0.029485387727618,0.155674234032631,-0.112816810607910,-0.048404037952423,0.030989482998848,0.168157547712326,-0.047476042062044,-0.154039502143860,-0.062698118388653,0.094139121472836,-0.022697798907757,-0.177533268928528,-0.009788795374334,0.071548223495483,0.002815171610564,0.016404643654823));
res += mul(Get(s3,0,dy), float4x4(-0.060971274971962,0.063810914754868,0.004464966244996,-0.123153321444988,-0.116806767880917,-0.027543693780899,-0.036474578082561,-0.014155725017190,0.025172559544444,-0.194037765264511,-0.009740113280714,-0.203866109251976,-0.119581602513790,-0.081755153834820,-0.092772588133812,-0.094628222286701));
res += mul(Get(s3,dx,-dy), float4x4(-0.192628696560860,-0.400621116161346,0.159731343388557,-0.027287404984236,0.015865650027990,-0.141788899898529,0.041470140218735,0.220360577106476,-0.032933585345745,0.055153537541628,-0.181411087512970,0.109415449202061,0.020387390628457,-0.112461201846600,-0.011686266399920,-0.099957272410393));
res += mul(Get(s3,dx,0), float4x4(-0.000638850498945,-0.167623087763786,0.084641985595226,0.096046946942806,0.050865549594164,-0.107434324920177,0.025215493515134,0.054086592048407,-0.069957107305527,-0.029437310993671,-0.094462297856808,0.069906905293465,-0.046539667993784,-0.019273877143860,0.013027259148657,-0.069536961615086));
res += mul(Get(s3,dx,dy), float4x4(-0.165134072303772,-0.056966211646795,0.033059693872929,-0.014639028348029,0.164771214127541,-0.114545792341232,0.038813974708319,-0.011932088993490,-0.059137009084225,0.062596961855888,-0.153992936015129,0.013469494879246,0.009827382862568,0.133757278323174,-0.147899270057678,0.009193654172122));
return max(float4(0,0,0,0), res);
}