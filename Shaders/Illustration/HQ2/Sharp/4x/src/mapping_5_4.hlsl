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
res += mul(Get(s0,-dx,-dy), float4x4(0.050432313233614,0.074329867959023,-0.150686949491501,-0.082266345620155,-0.021616686135530,-0.097264207899570,-0.258735030889511,-0.118247255682945,0.001043288735673,-0.013964232057333,0.075065910816193,-0.052455436438322,-0.017664231359959,0.002875102683902,-0.027310747653246,0.012107827700675));
res += mul(Get(s0,-dx,0), float4x4(0.026512101292610,-0.058560747653246,-0.026975050568581,0.122962586581707,-0.015141246840358,0.077903755009174,-0.147856414318085,-0.051291316747665,-0.071408405900002,0.090867236256599,0.028383739292622,0.230306029319763,-0.067116409540176,0.035246327519417,-0.166592136025429,0.027242675423622));
res += mul(Get(s0,-dx,dy), float4x4(0.159132122993469,-0.015788855031133,-0.036433782428503,0.074890829622746,-0.097487248480320,-0.041570756584406,-0.149310678243637,-0.020148558542132,-0.007699641399086,-0.052390243858099,-0.240533918142319,0.090020649135113,-0.132716700434685,0.016878345981240,0.008436956442893,-0.155098408460617));
res += mul(Get(s0,0,-dy), float4x4(0.105115927755833,0.079879477620125,-0.099041335284710,-0.094993211328983,-0.192252203822136,-0.142414227128029,0.032133832573891,-0.211287021636963,0.329920709133148,-0.179821670055389,-0.000363100582035,-0.089693970978260,-0.137640267610550,-0.050917215645313,0.091151513159275,-0.070513069629669));
res += mul(Get(s0,0,0), float4x4(0.027600357308984,0.222913995385170,0.003789032343775,0.008569895289838,-0.129650801420212,-0.014239627867937,0.016689600422978,-0.116396762430668,-0.016685513779521,-0.075236909091473,0.117427952587605,-0.078690201044083,-0.073075801134109,0.059544071555138,0.243775278329849,0.041385665535927));
res += mul(Get(s0,0,dy), float4x4(-0.003011418739334,0.180168390274048,0.004186581820250,-0.006745858117938,0.141309127211571,-0.015797108411789,-0.031453974545002,0.074663102626801,0.175416156649590,-0.152483627200127,0.008466232568026,-0.136548891663551,0.021143443882465,0.145367369055748,-0.126628085970879,0.140190884470940));
res += mul(Get(s0,dx,-dy), float4x4(-0.124069161713123,-0.039485510438681,-0.020993672311306,-0.110937781631947,0.070576183497906,0.041034087538719,-0.109837882220745,-0.048632062971592,0.117303259670734,-0.031077336519957,-0.103430494666100,0.063746981322765,0.168848931789398,0.093732163310051,-0.076827339828014,0.161357745528221));
res += mul(Get(s0,dx,0), float4x4(-0.056861527264118,-0.150560930371284,0.268493622541428,-0.000106874831545,-0.065836101770401,-0.010663874447346,0.017298642545938,0.107738219201565,0.049052465707064,-0.020575122907758,0.144395321607590,-0.217788845300674,0.111920267343521,0.120413310825825,0.005629508290440,0.206930637359619));
res += mul(Get(s0,dx,dy), float4x4(-0.086771972477436,-0.045883905142546,0.043954469263554,0.040362413972616,0.136479571461678,-0.043371282517910,-0.016515268012881,0.055245265364647,-0.164318948984146,-0.134344816207886,-0.159740090370178,0.239424601197243,-0.126764059066772,-0.147049039602280,0.112027019262314,0.021776296198368));
res += mul(Get(s1,-dx,-dy), float4x4(-0.339126735925674,-0.223983392119408,-0.023171735927463,-0.127687171101570,0.003784059779719,0.149819359183311,0.113787360489368,0.059819728136063,-0.015354258008301,0.130840286612511,-0.017040686681867,-0.014508333988488,0.014678729698062,-0.039069294929504,-0.022296480834484,0.093161806464195));
res += mul(Get(s1,-dx,0), float4x4(0.048202704638243,-0.002374296542257,-0.160186544060707,0.029015218839049,-0.090701021254063,-0.132593244314194,-0.024465033784509,0.116192661225796,0.124779641628265,-0.032091848552227,-0.007549109868705,-0.063363097608089,-0.016642550006509,0.140389695763588,0.053351756185293,-0.108830422163010));
res += mul(Get(s1,-dx,dy), float4x4(-0.029192857444286,-0.144682392477989,0.152095124125481,-0.166603967547417,0.111486203968525,0.010015280917287,0.017266614362597,0.097258917987347,-0.037205390632153,-0.073272839188576,-0.099614754319191,-0.016980336979032,0.266087591648102,0.129032611846924,-0.154838964343071,-0.105467505753040));
res += mul(Get(s1,0,-dy), float4x4(0.159835308790207,0.086839258670807,-0.279680490493774,0.027408093214035,-0.055420443415642,-0.008570189587772,0.103609301149845,-0.038542948663235,0.063005380332470,-0.087831810116768,-0.015376302413642,-0.128745004534721,0.112827338278294,-0.149344846606255,0.101874954998493,0.101409524679184));
res += mul(Get(s1,0,0), float4x4(0.009534300304949,-0.004273940809071,0.071886010468006,0.158371359109879,0.166020572185516,-0.003144949907437,0.001504726475105,0.035490643233061,0.104019403457642,-0.001313012326136,-0.079609833657742,-0.136600419878960,0.085863471031189,0.045013274997473,0.117433696985245,-0.012995303608477));
res += mul(Get(s1,0,dy), float4x4(0.117660962045193,0.041320413351059,-0.051295910030603,-0.133352965116501,-0.047706723213196,0.189797401428223,-0.094541817903519,-0.031389467418194,-0.061315782368183,0.171604990959167,0.024483671411872,0.055244579911232,0.079474255442619,-0.197541564702988,0.083083450794220,-0.215453758835793));
res += mul(Get(s1,dx,-dy), float4x4(-0.070941865444183,-0.112815842032433,-0.075576953589916,0.091468550264835,-0.154643207788467,0.012076770886779,0.152335703372955,0.039148166775703,-0.066749341785908,0.059031307697296,0.094361178576946,-0.199571564793587,0.148611575365067,0.122863598167896,0.033926159143448,-0.137497216463089));
res += mul(Get(s1,dx,0), float4x4(-0.013108846731484,-0.020246952772141,0.036836825311184,0.012208542786539,0.123719178140163,0.049772765487432,0.014820354990661,-0.018152214586735,0.226250767707825,-0.015153159387410,0.222024366259575,0.045065559446812,0.160625085234642,0.103086426854134,0.044353872537613,0.009333705529571));
res += mul(Get(s1,dx,dy), float4x4(-0.112375244498253,-0.060724344104528,0.149206236004829,-0.333245217800140,0.120274506509304,-0.049994297325611,0.086465999484062,-0.118355825543404,0.100556381046772,-0.126036867499352,0.022764585912228,-0.098408110439777,-0.159309521317482,-0.054992385208607,-0.085316739976406,0.110646769404411));
res += mul(Get(s2,-dx,-dy), float4x4(0.073559261858463,0.010129010304809,-0.003692531492561,-0.031445369124413,-0.065752014517784,-0.228919833898544,-0.009041640907526,-0.143169417977333,-0.027731847018003,-0.030251160264015,0.081336364150047,-0.110816538333893,0.233673214912415,-0.141051352024078,-0.205851197242737,-0.096177145838737));
res += mul(Get(s2,-dx,0), float4x4(0.027504121884704,-0.056519679725170,-0.100668467581272,-0.068773858249187,0.271394789218903,-0.024647569283843,-0.274609893560410,0.130320534110069,0.028845407068729,0.189462795853615,0.088959738612175,0.187653958797455,0.236155316233635,-0.214006796479225,0.322763293981552,0.031351249665022));
res += mul(Get(s2,-dx,dy), float4x4(-0.239529743790627,0.087544329464436,0.122457250952721,0.112549223005772,0.059393160045147,0.158147618174553,-0.198241010308266,0.025519084185362,0.083699233829975,-0.017728598788381,-0.127392530441284,0.043923161923885,-0.110514767467976,-0.039920609444380,-0.000809892546386,0.107767388224602));
res += mul(Get(s2,0,-dy), float4x4(-0.019179545342922,-0.110633082687855,-0.160960212349892,0.091477185487747,0.090678282082081,0.123116306960583,-0.006332741584629,-0.025963205844164,-0.005886061117053,-0.073473557829857,-0.219998106360435,-0.002609131392092,0.003650522092357,0.041873440146446,-0.178442329168320,0.014434203505516));
res += mul(Get(s2,0,0), float4x4(0.162730798125267,-0.014410573989153,-0.033608656376600,0.079200707376003,0.213030219078064,-0.062428712844849,-0.031461801379919,0.083877012133598,0.139162540435791,0.094366610050201,-0.012260630726814,-0.175379276275635,-0.016890011727810,-0.013944990932941,0.033623315393925,0.035071585327387));
res += mul(Get(s2,0,dy), float4x4(0.009514903649688,-0.018999913707376,-0.034600447863340,-0.186129346489906,0.016965085640550,0.032582055777311,-0.091843165457249,0.030147528275847,0.156170472502708,0.162771373987198,-0.067030869424343,-0.087430559098721,0.091756515204906,-0.120507791638374,-0.297934621572495,-0.117560066282749));
res += mul(Get(s2,dx,-dy), float4x4(-0.014312655664980,0.091011747717857,-0.069221809506416,-0.166309371590614,-0.139374256134033,-0.084792047739029,0.057560533285141,0.026966759935021,-0.017737869173288,0.099908985197544,0.081148572266102,0.026533583179116,0.027732981368899,-0.038859225809574,0.083519212901592,0.021740792319179));
res += mul(Get(s2,dx,0), float4x4(-0.085626438260078,0.055727660655975,-0.026267083361745,-0.061325687915087,0.075016058981419,-0.265227913856506,0.028514513745904,-0.215483322739601,-0.146266371011734,-0.066818982362747,-0.153865113854408,0.161511346697807,0.061952237039804,0.142588645219803,0.175618171691895,-0.142349198460579));
res += mul(Get(s2,dx,dy), float4x4(0.082286372780800,0.029319290071726,0.142733573913574,0.056195326149464,0.225707277655602,-0.127856522798538,-0.135892376303673,-0.042165674269199,-0.100122690200806,-0.044850405305624,0.028015727177262,-0.142685934901237,0.006040181498975,0.103465773165226,0.222541704773903,0.011075615882874));
res += mul(Get(s3,-dx,-dy), float4x4(0.199162527918816,-0.033378865569830,0.291323572397232,-0.069267317652702,0.157743230462074,-0.026786573231220,0.105821184813976,-0.101565502583981,-0.106989346444607,-0.091049030423164,-0.130216926336288,-0.017014054581523,0.105392076075077,-0.080373212695122,0.095406167209148,0.009822939522564));
res += mul(Get(s3,-dx,0), float4x4(0.106120318174362,0.025596292689443,-0.000342485727742,-0.042211011052132,0.009955122135580,0.016157194972038,-0.048427548259497,-0.070456430315971,0.060597542673349,-0.077375106513500,-0.043152447789907,0.031640201807022,0.054351788014174,-0.146282628178596,-0.095811009407043,-0.088640488684177));
res += mul(Get(s3,-dx,dy), float4x4(0.144337654113770,-0.106898769736290,-0.012956962920725,-0.052830349653959,0.024598171934485,-0.105174228549004,-0.151238009333611,-0.004534695297480,-0.187432616949081,0.018646594136953,0.054150015115738,0.090152010321617,0.041904270648956,0.102832138538361,0.196769624948502,-0.208910256624222));
res += mul(Get(s3,0,-dy), float4x4(-0.285935878753662,-0.118179589509964,-0.104850262403488,0.012443257495761,-0.158281281590462,-0.160824760794640,0.327462255954742,0.015455616638064,0.119226835668087,0.009949525818229,-0.089440546929836,-0.235073670744896,0.094027414917946,0.040234103798866,0.053035736083984,0.087212383747101));
res += mul(Get(s3,0,0), float4x4(0.139300808310509,-0.040912456810474,0.229121550917625,0.089380748569965,0.174115523695946,-0.177257761359215,-0.110699400305748,-0.027218956500292,-0.030056845396757,-0.116958454251289,0.189452737569809,-0.071410045027733,-0.069809183478355,-0.200067117810249,-0.009480498731136,-0.194106921553612));
res += mul(Get(s3,0,dy), float4x4(-0.209676876664162,0.065418012440205,-0.012649603188038,-0.208604380488396,-0.019644314423203,0.191534191370010,-0.019162185490131,0.096872068941593,-0.038972564041615,-0.184290453791618,-0.135183990001678,-0.043794166296721,-0.028956850990653,-0.098089143633842,-0.071712933480740,-0.008168241009116));
res += mul(Get(s3,dx,-dy), float4x4(0.092389822006226,0.028302526101470,-0.035583894699812,0.054621636867523,0.135649532079697,0.084324017167091,-0.091128647327423,0.178040146827698,0.095022007822990,0.050099164247513,0.076766341924667,-0.104897141456604,0.038916368037462,-0.023224966600537,-0.139754191040993,-0.130446985363960));
res += mul(Get(s3,dx,0), float4x4(0.002029279945418,-0.218284428119659,0.020716086030006,-0.044213011860847,-0.086762048304081,0.118556328117847,-0.186406999826431,0.030996674671769,0.085610248148441,-0.003739822888747,0.137508362531662,-0.107830099761486,-0.193192526698112,-0.153670266270638,-0.045674797147512,-0.127313420176506));
res += mul(Get(s3,dx,dy), float4x4(-0.013678049668670,0.032510399818420,-0.094979479908943,-0.067705117166042,-0.134447887539864,-0.158330738544464,0.102985560894012,0.205413401126862,-0.081401057541370,-0.014739651232958,-0.131226330995560,0.164517745375633,0.111010357737541,-0.133777648210526,0.110673703253269,-0.009642623364925));
return max(float4(0,0,0,0), res);
}