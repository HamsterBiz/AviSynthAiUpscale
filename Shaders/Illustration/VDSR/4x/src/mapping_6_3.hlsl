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
res += mul(Get(s0,-dx,-dy), float4x4(-0.103618934750557,-0.077080771327019,0.014910190366209,-0.263362795114517,0.086142994463444,-0.033386755734682,0.198680981993675,0.000049750571634,0.033464912325144,0.224995374679565,0.058694224804640,-0.292754590511322,-0.144611701369286,-0.032420519739389,-0.004209466278553,-0.030798960477114));
res += mul(Get(s0,-dx,0), float4x4(0.049876727163792,0.054959662258625,-0.104639925062656,-0.011052412912250,0.022856669500470,-0.014282089658082,-0.058484587818384,0.018196040764451,-0.099588729441166,-0.159880504012108,0.008309197612107,-0.043338768184185,0.230285272002220,0.017007030546665,0.190604642033577,0.152787834405899));
res += mul(Get(s0,-dx,dy), float4x4(-0.019914804026484,0.046835184097290,0.029728777706623,0.062509119510651,-0.114829100668430,0.077242128551006,0.042032111436129,-0.083447232842445,-0.055886942893267,-0.022995859384537,-0.141328722238541,-0.019102144986391,-0.094800725579262,0.013749032281339,0.058259878307581,0.154568389058113));
res += mul(Get(s0,0,-dy), float4x4(0.077927030622959,0.010828852653503,0.075252510607243,0.045403070747852,-0.199163675308228,-0.159189000725746,-0.189779728651047,-0.059007182717323,0.100489459931850,-0.163788497447968,0.031333588063717,-0.203105539083481,-0.087499171495438,0.230339244008064,0.079699642956257,-0.231579631567001));
res += mul(Get(s0,0,0), float4x4(0.064222328364849,0.102447390556335,-0.038811571896076,0.077784687280655,0.182683050632477,-0.322327524423599,-0.021479055285454,0.132087424397469,0.149529144167900,0.109736941754818,-0.012330456636846,0.074596747756004,0.033663883805275,0.263103485107422,-0.108749344944954,0.105963811278343));
res += mul(Get(s0,0,dy), float4x4(-0.075890235602856,-0.052645470947027,-0.047977343201637,0.017863582819700,0.110564276576042,0.125608727335930,-0.252581059932709,0.033980615437031,-0.063663341104984,-0.102555699646473,-0.010610417462885,-0.032211728394032,-0.089398600161076,0.002385477302596,-0.141772210597992,-0.032374553382397));
res += mul(Get(s0,dx,-dy), float4x4(0.003105705603957,-0.049119658768177,0.219636276364326,-0.099007569253445,-0.096797361969948,0.090265542268753,0.041254933923483,-0.135866507887840,-0.036463804543018,0.033927641808987,-0.073787577450275,0.066821761429310,0.096868708729744,0.122470274567604,0.179834306240082,-0.093566522002220));
res += mul(Get(s0,dx,0), float4x4(0.111130021512508,0.018412295728922,-0.192681416869164,-0.165187388658524,0.004738592542708,-0.172140359878540,0.058125380426645,0.103650242090225,0.042302511632442,0.147100582718849,-0.026799254119396,0.222580417990685,0.018774619325995,0.253608465194702,-0.164211660623550,0.031518172472715));
res += mul(Get(s0,dx,dy), float4x4(0.120307184755802,-0.060246460139751,0.096445314586163,0.172070786356926,0.028242010623217,0.046581141650677,0.013993217609823,-0.059199761599302,0.173547595739365,-0.024194875732064,-0.169643744826317,-0.065631702542305,-0.179291516542435,-0.102422647178173,0.033260595053434,-0.076419897377491));
res += mul(Get(s1,-dx,-dy), float4x4(-0.046456634998322,0.006232417654246,0.075254991650581,-0.079046845436096,0.107111357152462,0.022943548858166,0.060546312481165,0.149267181754112,-0.100105792284012,-0.029440935701132,0.150444149971008,-0.221521273255348,0.012966745533049,0.136333599686623,0.070585280656815,0.055811297148466));
res += mul(Get(s1,-dx,0), float4x4(-0.059800647199154,0.031039917841554,0.092086844146252,-0.069438308477402,-0.017588978633285,0.112535759806633,-0.068282276391983,0.154002204537392,0.017760666087270,-0.064455017447472,0.011479653418064,0.038630329072475,0.037589211016893,-0.125143200159073,-0.095260061323643,-0.240260213613510));
res += mul(Get(s1,-dx,dy), float4x4(0.103222690522671,-0.029030535370111,0.079443201422691,0.064661368727684,0.065406315028667,-0.033094070851803,-0.025705218315125,0.038102660328150,-0.249217256903648,-0.021253207698464,-0.033432696014643,0.002441118704155,0.116777636110783,-0.099381566047668,-0.079806208610535,0.096809372305870));
res += mul(Get(s1,0,-dy), float4x4(-0.080947682261467,0.025315260514617,0.105905666947365,-0.044531077146530,-0.096139632165432,0.108616210520267,-0.084977462887764,-0.015443091280758,0.120762303471565,0.104823216795921,0.174330532550812,-0.030595785006881,0.199323594570160,-0.233676850795746,0.083011649549007,-0.115186288952827));
res += mul(Get(s1,0,0), float4x4(-0.029884567484260,0.079597644507885,0.244814887642860,-0.011777820065618,-0.021805204451084,-0.029396763071418,0.051062766462564,-0.112041451036930,-0.022705182433128,0.231186777353287,0.022370288148522,-0.090311922132969,0.137562379240990,0.089229233562946,-0.070000737905502,0.091975174844265));
res += mul(Get(s1,0,dy), float4x4(0.034851327538490,0.007470341399312,0.089319989085197,-0.096118956804276,-0.109929449856281,0.193836197257042,-0.013379242271185,0.008368622511625,0.015381691977382,0.063503436744213,0.114059321582317,-0.098123379051685,0.185169413685799,-0.048573639243841,-0.012942756526172,0.000259097461822));
res += mul(Get(s1,dx,-dy), float4x4(0.023071831092238,0.125820815563202,0.098374843597412,0.068818941712379,0.254306554794312,0.192403346300125,-0.002721459371969,0.210483476519585,0.029379533603787,-0.018599707633257,0.176338180899620,0.124648950994015,-0.062060717493296,0.094037920236588,0.191215932369232,0.081124022603035));
res += mul(Get(s1,dx,0), float4x4(-0.207465678453445,0.197520554065704,-0.270016431808472,-0.051437862217426,0.177790105342865,-0.025258092209697,0.127265855669975,-0.188933283090591,-0.135029688477516,0.200721949338913,-0.060841612517834,0.230113476514816,-0.118674255907536,0.179530143737793,0.023483010008931,0.185319051146507));
res += mul(Get(s1,dx,dy), float4x4(0.098288401961327,0.067213676869869,0.097959727048874,-0.125752106308937,0.103476345539093,0.115004532039165,0.122985586524010,0.018458021804690,-0.136865794658661,0.024868791922927,0.053475040942430,-0.073234431445599,-0.004066030029207,0.124772280454636,-0.060681875795126,0.182169213891029));
res += mul(Get(s2,-dx,-dy), float4x4(-0.021459667012095,-0.049005739390850,-0.012706276029348,-0.078425787389278,0.078182369470596,-0.056982744485140,0.022330433130264,-0.060971722006798,0.090998247265816,-0.134839296340942,-0.034236069768667,0.026985870674253,0.110118016600609,-0.007067753933370,0.103999808430672,-0.267740011215210));
res += mul(Get(s2,-dx,0), float4x4(-0.241551816463470,0.006340845488012,0.013072220608592,-0.093062907457352,0.006507300771773,-0.082830384373665,0.075113765895367,-0.064045451581478,0.053459171205759,0.035279054194689,-0.025182537734509,-0.065257750451565,0.087195143103600,-0.239203602075577,0.164724990725517,0.032856184989214));
res += mul(Get(s2,-dx,dy), float4x4(-0.140678748488426,-0.008879759348929,0.007092741783708,-0.051665339618921,0.096438914537430,0.209631279110909,0.127723574638367,0.009648273698986,-0.059116668999195,-0.054718568921089,0.117743410170078,0.199199944734573,-0.001295576919802,0.119465678930283,-0.010735237039626,-0.099490851163864));
res += mul(Get(s2,0,-dy), float4x4(-0.134770110249519,-0.033186949789524,0.050400931388140,-0.177235260605812,-0.069934196770191,-0.057509489357471,-0.026212248951197,-0.017748011276126,0.102369964122772,-0.102387867867947,-0.186299189925194,0.175394967198372,0.230280175805092,0.086254529654980,-0.077034533023834,0.065915390849113));
res += mul(Get(s2,0,0), float4x4(0.070959895849228,0.160740226507187,0.224481821060181,-0.053234834223986,0.041222162544727,0.165885835886002,-0.245351418852806,-0.051597524434328,-0.200129792094231,-0.007957021705806,0.017173573374748,0.187209025025368,-0.080713182687759,-0.047818541526794,0.031736336648464,0.125291883945465));
res += mul(Get(s2,0,dy), float4x4(0.026379190385342,-0.051396545022726,-0.038300819694996,0.127815157175064,0.214138641953468,-0.062710225582123,-0.050518151372671,-0.065297715365887,-0.085656449198723,-0.054564908146858,-0.136739745736122,-0.044607717543840,-0.055316012352705,0.014294410124421,0.066004782915115,-0.172640979290009));
res += mul(Get(s2,dx,-dy), float4x4(0.104004085063934,-0.207766517996788,0.221176952123642,0.213438779115677,-0.155203863978386,-0.122946210205555,0.178203344345093,-0.066041700541973,-0.083399437367916,-0.064475312829018,0.024880990386009,-0.103783883154392,-0.016756890341640,-0.113666713237762,0.183174088597298,-0.095420762896538));
res += mul(Get(s2,dx,0), float4x4(-0.069682314991951,0.092191696166992,-0.224795296788216,-0.076052069664001,-0.041121877729893,-0.246947094798088,-0.153952106833458,0.078081600368023,-0.096433773636818,-0.046659719198942,0.106020748615265,0.129806146025658,-0.000352458388079,-0.032169591635466,0.053616672754288,0.123833991587162));
res += mul(Get(s2,dx,dy), float4x4(-0.090432576835155,0.052806418389082,0.071430265903473,-0.020568085834384,-0.042476110160351,-0.007066384889185,0.013989713974297,-0.277405411005020,-0.058135107159615,0.161585614085197,-0.111325547099113,-0.060720436275005,0.047394383698702,0.028371218591928,-0.094510465860367,0.319989025592804));
res += mul(Get(s3,-dx,-dy), float4x4(-0.001230188878253,0.055976353585720,0.087531410157681,-0.056646436452866,0.007503556087613,-0.049848921597004,-0.157177746295929,0.060273457318544,0.069757372140884,0.088957853615284,-0.097259506583214,-0.016068195924163,-0.134193062782288,-0.150935590267181,-0.117008581757545,0.127557754516602));
res += mul(Get(s3,-dx,0), float4x4(-0.058795347809792,-0.098700560629368,0.089129842817783,-0.061753295361996,0.248494774103165,-0.131656154990196,-0.356593161821365,0.014265037141740,0.135912790894508,-0.005695820320398,0.040026027709246,-0.212345883250237,-0.061663832515478,-0.186094880104065,0.027227621525526,0.162503585219383));
res += mul(Get(s3,-dx,dy), float4x4(-0.080770455300808,0.092532709240913,-0.286562979221344,0.068990103900433,-0.112475886940956,0.050051394850016,0.018641067668796,0.067504428327084,0.005100489128381,0.105644658207893,-0.048164259642363,0.065593309700489,-0.157358095049858,0.097347073256969,0.019057745113969,-0.224260449409485));
res += mul(Get(s3,0,-dy), float4x4(0.013703874312341,-0.188689187169075,-0.102713674306870,0.030400283634663,-0.022964090108871,0.116272583603859,0.021374423056841,0.048730425536633,-0.055642496794462,0.254178762435913,0.001366044394672,-0.002153579844162,0.126703739166260,-0.259659647941589,0.108635760843754,-0.029765879735351));
res += mul(Get(s3,0,0), float4x4(-0.106364183127880,0.033996287733316,-0.038655694574118,0.009202457033098,0.061920735985041,0.212955504655838,0.071546971797943,0.048218529671431,0.082263499498367,0.181489527225494,0.224040180444717,0.142364650964737,-0.076877497136593,-0.181688278913498,0.047080166637897,0.037095684558153));
res += mul(Get(s3,0,dy), float4x4(0.008242137730122,0.027614714577794,0.140089318156242,0.081782259047031,0.107578918337822,0.025749376043677,-0.039256285876036,-0.093841828405857,0.100986763834953,-0.007590011227876,0.025279730558395,0.089342720806599,0.126187250018120,-0.101354613900185,-0.012721494771540,0.166263729333878));
res += mul(Get(s3,dx,-dy), float4x4(-0.297955930233002,-0.067124865949154,-0.099044881761074,0.056450087577105,0.065905578434467,0.031303863972425,0.008691092021763,-0.075131811201572,0.101800292730331,0.005287965759635,-0.173946797847748,0.089812017977238,0.010790721513331,0.108877398073673,-0.006736248265952,0.059887718409300));
res += mul(Get(s3,dx,0), float4x4(-0.101402312517166,-0.031460475176573,-0.192911460995674,0.012146921828389,-0.052606333047152,-0.086558938026428,-0.197353869676590,-0.062549449503422,0.059420190751553,-0.233043342828751,0.171482652425766,0.055650245398283,0.175756514072418,-0.006323224399239,-0.099004440009594,0.067710898816586));
res += mul(Get(s3,dx,dy), float4x4(-0.070028610527515,-0.109159618616104,0.142233461141586,0.122475020587444,0.309151381254196,0.127744063735008,0.162570253014565,-0.018559802323580,-0.048545461148024,-0.070722468197346,0.096627973020077,0.177155315876007,0.167396858334541,0.194096833467484,-0.111255183815956,-0.050507850944996));
return max(float4(0,0,0,0), res);
}