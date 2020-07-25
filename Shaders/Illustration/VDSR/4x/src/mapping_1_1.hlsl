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
res += mul(Get(s0,-dx,-dy), float4x4(0.099002107977867,0.143868744373322,-0.121196590363979,-0.203496843576431,0.095896802842617,0.032794184982777,-0.070283353328705,0.161598071455956,-0.069244630634785,-0.081993944942951,-0.047835949808359,-0.011788204312325,-0.043922290205956,0.070439994335175,-0.078278116881847,-0.211967751383781));
res += mul(Get(s0,-dx,0), float4x4(-0.165260985493660,-0.054702635854483,-0.006510278210044,-0.037718597799540,0.074369437992573,0.108642406761646,0.080032333731651,-0.092941358685493,0.112160973250866,0.054452568292618,-0.019883370026946,0.178642705082893,0.188276052474976,-0.026885738596320,-0.004822196438909,-0.023084547370672));
res += mul(Get(s0,-dx,dy), float4x4(-0.112240679562092,0.068360835313797,-0.053612645715475,-0.055654946714640,0.003513734787703,-0.024735055863857,0.013053392991424,-0.061356123536825,0.150915235280991,0.064411439001560,-0.268827587366104,0.007667738478631,-0.210027232766151,0.033711992204189,-0.025780439376831,0.039728648960590));
res += mul(Get(s0,0,-dy), float4x4(-0.162360921502113,0.177414506673813,0.147430539131165,0.016396703198552,-0.088180705904961,0.129253104329109,0.072726175189018,0.034262567758560,0.093025058507919,0.242212876677513,0.027529833838344,-0.013033685274422,0.146792978048325,-0.203761503100395,0.253816872835159,-0.008664478547871));
res += mul(Get(s0,0,0), float4x4(0.105715148150921,-0.153605490922928,0.013493266887963,-0.186128914356232,0.027809789404273,0.053824558854103,0.034045726060867,0.099814981222153,0.159752026200294,-0.090990729629993,-0.135378062725067,0.129196032881737,0.013934055343270,-0.072796620428562,0.064984694123268,0.017418371513486));
res += mul(Get(s0,0,dy), float4x4(0.108130119740963,0.057529725134373,0.053293328732252,-0.225253775715828,0.127196401357651,-0.084413260221481,0.114601530134678,0.013427971862257,0.183063670992851,-0.109159693121910,-0.122500173747540,0.042431466281414,-0.024338459596038,0.027089716866612,0.019906261935830,0.046222794800997));
res += mul(Get(s0,dx,-dy), float4x4(-0.123288422822952,-0.004001194611192,-0.212331771850586,0.184054300189018,-0.067582957446575,0.058241102844477,-0.037768606096506,-0.181990668177605,-0.009069030173123,-0.200141981244087,0.260357528924942,0.092937551438808,0.060941282659769,0.026432003825903,-0.141762927174568,0.042113959789276));
res += mul(Get(s0,dx,0), float4x4(0.145222574472427,0.010788911022246,-0.073137640953064,0.101353138685226,-0.082059957087040,-0.090330645442009,0.163597404956818,0.050595197826624,-0.183676183223724,-0.167374834418297,-0.051420453935862,-0.012474494054914,-0.066560730338097,-0.008816004730761,0.099247969686985,-0.075150340795517));
res += mul(Get(s0,dx,dy), float4x4(-0.088048212230206,-0.107999980449677,0.012080571614206,0.112090006470680,0.179924339056015,-0.048413697630167,-0.161821514368057,0.108659453690052,-0.162822797894478,-0.190405949950218,0.085974328219891,0.046347994357347,0.035876803100109,-0.038204371929169,0.059165630489588,0.068418845534325));
res += mul(Get(s1,-dx,-dy), float4x4(-0.155590638518333,-0.028779951855540,0.018450086936355,-0.187901273369789,0.094464026391506,-0.094023220241070,-0.205699488520622,-0.009008131921291,-0.180132836103439,-0.187053263187408,-0.145179048180580,-0.138566091656685,0.177392736077309,-0.229902431368828,-0.106404989957809,-0.001454357523471));
res += mul(Get(s1,-dx,0), float4x4(-0.228698581457138,-0.087364792823792,-0.157718762755394,0.004882688168436,0.241157755255699,-0.119054578244686,-0.176005169749260,-0.000544444774278,0.136377856135368,0.282877892255783,0.042125932872295,-0.210384115576744,-0.235130608081818,-0.134452685713768,0.042301326990128,-0.000448257516837));
res += mul(Get(s1,-dx,dy), float4x4(-0.008655928075314,-0.039917506277561,0.044091682881117,-0.122689247131348,0.254337310791016,-0.089593023061752,0.090578861534595,0.033261053264141,-0.142001226544380,-0.031577389687300,0.107143953442574,-0.017999660223722,0.007830704562366,0.090467877686024,0.103994332253933,0.019380018115044));
res += mul(Get(s1,0,-dy), float4x4(0.161729350686073,-0.215971738100052,0.113523326814175,-0.076369144022465,0.051953867077827,-0.043133996427059,-0.035058531910181,0.004298838786781,0.002191882813349,-0.106971345841885,-0.026004491373897,-0.001005058875307,0.089650481939316,0.002992632798851,-0.222820565104485,-0.004900020081550));
res += mul(Get(s1,0,0), float4x4(-0.138880074024200,-0.055043596774340,-0.009873112663627,0.203357189893723,-0.158384636044502,0.134486868977547,-0.114369809627533,0.054800417274237,-0.020002469420433,0.023225991055369,-0.012516800314188,-0.016463257372379,0.017990410327911,0.064288109540939,0.014805037528276,-0.052854284644127));
res += mul(Get(s1,0,dy), float4x4(-0.095938250422478,-0.051311288028955,0.038602899760008,-0.164104983210564,-0.128591522574425,-0.103342331945896,0.045490242540836,-0.069025099277496,-0.037614092230797,0.153941795229912,0.091265201568604,-0.040158107876778,-0.107779093086720,-0.117103457450867,0.065263144671917,0.058072183281183));
res += mul(Get(s1,dx,-dy), float4x4(0.100003562867641,0.182391539216042,-0.012304757721722,0.007610219065100,0.243723019957542,0.105679988861084,0.083057224750519,0.023523589596152,-0.125995174050331,-0.160640493035316,0.158734112977982,0.059706572443247,-0.036626674234867,0.031286671757698,0.010092834010720,0.220993578433990));
res += mul(Get(s1,dx,0), float4x4(0.141689553856850,-0.207184940576553,-0.046981956809759,0.087319433689117,0.093646205961704,-0.076731488108635,-0.088504612445831,0.035326030105352,-0.010331043042243,0.093806147575378,-0.015719326213002,-0.093975588679314,0.109055392444134,0.050031282007694,-0.002088621025905,-0.138551890850067));
res += mul(Get(s1,dx,dy), float4x4(0.030019519850612,-0.101367175579071,0.061573069542646,-0.036444786936045,0.064586535096169,-0.077739633619785,-0.034356385469437,-0.040626253932714,-0.092414982616901,-0.038271781057119,0.095627732574940,0.262305229902267,0.020105319097638,0.124978013336658,-0.024130713194609,-0.147794067859650));
res += mul(Get(s2,-dx,-dy), float4x4(0.171037539839745,0.002838295418769,0.110964216291904,0.066677458584309,-0.099664345383644,0.077553771436214,-0.317751348018646,-0.004309989977628,-0.316391021013260,-0.114663600921631,-0.013417774811387,-0.009130842052400,-0.082982555031776,-0.101621620357037,-0.255531936883926,-0.164428308606148));
res += mul(Get(s2,-dx,0), float4x4(-0.164818599820137,-0.045157920569181,-0.209429934620857,-0.012025546282530,0.176772058010101,-0.023776330053806,0.013143002055585,0.025459188967943,0.199658900499344,-0.061620503664017,-0.123042158782482,-0.014631698839366,0.144381821155548,-0.195214420557022,0.030523642897606,-0.015590695664287));
res += mul(Get(s2,-dx,dy), float4x4(0.064967773854733,-0.121844045817852,-0.186911523342133,0.121607534587383,-0.018576052039862,0.090196676552296,0.170835584402084,-0.081487156450748,-0.109289534389973,0.039022617042065,-0.078261241316795,-0.089137397706509,-0.017808698117733,-0.063948005437851,0.145413309335709,0.066467948257923));
res += mul(Get(s2,0,-dy), float4x4(0.024267029017210,0.079061478376389,-0.217276230454445,0.148916557431221,0.052542712539434,0.172269329428673,0.046374015510082,-0.161948099732399,0.202351927757263,0.130466014146805,-0.151788830757141,0.034997846931219,0.104994572699070,-0.136198163032532,0.138482242822647,0.102076478302479));
res += mul(Get(s2,0,0), float4x4(-0.177466288208961,0.105458319187164,0.121742144227028,-0.115498602390289,0.010686310008168,-0.063589297235012,0.142140716314316,-0.228472650051117,-0.134798914194107,-0.101225681602955,0.030946154147387,0.098640546202660,-0.101881615817547,-0.166359871625900,-0.251633435487747,0.030245335772634));
res += mul(Get(s2,0,dy), float4x4(-0.027172531932592,0.164540931582451,0.052987176924944,-0.015088886953890,0.025145845487714,0.113090209662914,-0.144693329930305,0.084133818745613,0.173846751451492,-0.102838598191738,-0.128272399306297,-0.049695972353220,0.119474895298481,-0.073236145079136,0.015175970271230,-0.017729939892888));
res += mul(Get(s2,dx,-dy), float4x4(-0.186100780963898,-0.040720701217651,-0.047839403152466,0.156096234917641,0.090478084981441,0.150758698582649,-0.021701119840145,0.194885313510895,0.062377441674471,-0.140162378549576,0.095823697745800,-0.058176565915346,0.149379819631577,0.126400172710419,-0.293605536222458,-0.060062650591135));
res += mul(Get(s2,dx,0), float4x4(-0.006181347183883,-0.017833841964602,-0.031361557543278,-0.014066095463932,-0.150200977921486,-0.005325676407665,0.074480377137661,0.107392422854900,-0.115970730781555,0.165845915675163,-0.125772684812546,0.049364201724529,-0.108489125967026,-0.016365997493267,0.168443992733955,-0.187208086252213));
res += mul(Get(s2,dx,dy), float4x4(0.084075853228569,0.125470608472824,-0.083547309041023,-0.104068256914616,-0.045120880007744,0.015445540659130,-0.187119647860527,0.115881726145744,-0.141974046826363,-0.077729858458042,-0.226687863469124,0.004322507884353,0.109950609505177,0.101547650992870,-0.057637590914965,-0.052640449255705));
res += mul(Get(s3,-dx,-dy), float4x4(-0.012107137590647,-0.092963002622128,0.062750108540058,-0.151614129543304,0.059071809053421,-0.063962779939175,-0.023014845326543,-0.225818291306496,0.152270168066025,-0.013040298596025,-0.030980033800006,-0.171203687787056,0.005596659611911,-0.004225843586028,0.148692041635513,0.110153943300247));
res += mul(Get(s3,-dx,0), float4x4(-0.188184753060341,-0.143898800015450,-0.069020271301270,0.082916840910912,0.056660786271095,-0.085817717015743,-0.053446069359779,-0.030804004520178,-0.089272841811180,0.083588652312756,0.093582995235920,-0.133887514472008,-0.072967953979969,0.059787031263113,0.040457766503096,0.135140463709831));
res += mul(Get(s3,-dx,dy), float4x4(0.121186494827271,-0.056022491306067,-0.064407385885715,0.093956187367439,-0.173283874988556,0.048254571855068,0.018000084906816,-0.049275420606136,-0.006030246149749,0.067749299108982,-0.012712654657662,0.023980313912034,0.042361304163933,-0.116970032453537,0.083186231553555,0.168322488665581));
res += mul(Get(s3,0,-dy), float4x4(-0.290457218885422,-0.137813702225685,-0.152755811810493,0.067598395049572,0.071764536201954,-0.135268479585648,0.169267550110817,0.023430595174432,-0.076168730854988,0.038924824446440,-0.164939835667610,-0.025860341265798,0.034068759530783,0.282450199127197,-0.012783863581717,-0.051157061010599));
res += mul(Get(s3,0,0), float4x4(0.219342246651649,-0.036707259714603,0.144320696592331,-0.043152213096619,-0.088165104389191,0.221908405423164,-0.195559620857239,0.136188372969627,-0.032959830015898,0.067919343709946,-0.170929893851280,0.050850093364716,-0.094375059008598,-0.300417721271515,-0.161322742700577,0.015361454337835));
res += mul(Get(s3,0,dy), float4x4(-0.077109619975090,-0.053124208003283,0.162995472550392,-0.044769737869501,0.026812003925443,0.167066290974617,-0.081848457455635,-0.010050021111965,0.047116395086050,0.091953158378601,-0.030704004690051,-0.121484778821468,-0.032457888126373,0.241686135530472,-0.074029035866261,0.074251875281334));
res += mul(Get(s3,dx,-dy), float4x4(-0.240248084068298,0.028407488018274,-0.160611838102341,0.076786458492279,-0.161621794104576,0.053723007440567,-0.133226096630096,-0.102841064333916,0.086491219699383,-0.047613009810448,0.030922483652830,-0.068215787410736,-0.068510785698891,-0.182351201772690,0.086603745818138,0.110463432967663));
res += mul(Get(s3,dx,0), float4x4(-0.059252236038446,-0.009054535999894,0.071045979857445,0.149818077683449,-0.014347770251334,0.111001811921597,0.079984888434410,0.118024051189423,-0.116703145205975,-0.072958506643772,0.177228003740311,0.225242078304291,-0.074654050171375,-0.015973499044776,-0.121997155249119,-0.121480196714401));
res += mul(Get(s3,dx,dy), float4x4(0.112435236573219,-0.000718245282769,-0.049967005848885,0.029909672215581,0.013819169253111,-0.122053794562817,0.092824362218380,-0.003866246668622,0.101360887289047,-0.180247530341148,0.025538893416524,0.042015746235847,-0.130332961678505,-0.040052499622107,0.136717319488525,0.064769051969051));
return max(float4(0,0,0,0), res);
}