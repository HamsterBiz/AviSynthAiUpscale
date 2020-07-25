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
res += mul(Get(s0,-dx,-dy), float4x4(0.103926002979279,0.069931574165821,-0.068390280008316,0.172688230872154,-0.306615412235260,-0.004629022907466,-0.131210818886757,0.133203074336052,-0.046027146279812,0.098388142883778,-0.015366238541901,-0.026140011847019,0.033475235104561,0.057107765227556,-0.091370098292828,-0.124865628778934));
res += mul(Get(s0,-dx,0), float4x4(0.072381645441055,-0.025959771126509,-0.150146588683128,-0.051990438252687,0.067760951817036,-0.064486734569073,-0.100402593612671,0.019900441169739,-0.056231178343296,-0.023220380768180,0.192062497138977,0.025856273248792,-0.023028409108520,-0.051700420677662,-0.226970821619034,0.177890792489052));
res += mul(Get(s0,-dx,dy), float4x4(0.029319025576115,0.010450011119246,0.222834229469299,-0.112176716327667,-0.083095028996468,0.120524398982525,0.153696462512016,0.066930025815964,0.200171977281570,0.069053292274475,-0.097085691988468,0.229263976216316,0.099769018590450,0.104536578059196,-0.184809029102325,-0.324020773172379));
res += mul(Get(s0,0,-dy), float4x4(-0.028582591563463,0.116187199950218,-0.131274521350861,0.230129569768906,-0.023186681792140,0.007159485947341,-0.019454829394817,-0.045724552124739,0.065806329250336,0.161316484212875,0.088819377124310,0.087417803704739,-0.217330962419510,-0.062069773674011,-0.032776281237602,0.182113245129585));
res += mul(Get(s0,0,0), float4x4(0.000394299771870,0.150467604398727,0.040273662656546,-0.015016377903521,-0.067220389842987,-0.016448218375444,-0.099873013794422,0.031766209751368,0.097517974674702,0.042021710425615,-0.005038275383413,-0.034223012626171,0.069897249341011,0.035549387335777,0.104690603911877,0.067919790744781));
res += mul(Get(s0,0,dy), float4x4(-0.033522043377161,0.143079116940498,-0.044287726283073,-0.078943908214569,0.002887608949095,-0.036725547164679,-0.161511570215225,-0.079530835151672,-0.112770088016987,-0.069645643234253,0.160473123192787,0.009176325984299,-0.111904956400394,0.158515647053719,0.064833708107471,-0.049512226134539));
res += mul(Get(s0,dx,-dy), float4x4(0.109051629900932,0.132365554571152,-0.092386797070503,0.158693999052048,-0.048422541469336,0.229846984148026,-0.087984845042229,0.063999652862549,-0.026426607742906,0.089568898081779,0.114992417395115,-0.195560410618782,0.145956367254257,0.040774844586849,-0.076100215315819,-0.076830402016640));
res += mul(Get(s0,dx,0), float4x4(-0.051566872745752,0.043619170784950,-0.111530795693398,0.096082463860512,0.072622232139111,0.023565897718072,-0.179878875613213,0.060525249689817,0.002897068392485,0.050871789455414,0.188131511211395,0.226243630051613,-0.050017230212688,0.077594406902790,-0.273287355899811,0.150181710720062));
res += mul(Get(s0,dx,dy), float4x4(0.160844817757607,0.100625135004520,-0.016020944342017,-0.010862407274544,0.050108946859837,-0.015016498975456,-0.023806458339095,-0.114823736250401,0.132875725626945,-0.037438020110130,-0.142367482185364,0.140879392623901,-0.118853628635406,0.192575529217720,-0.195291191339493,-0.241047561168671));
res += mul(Get(s1,-dx,-dy), float4x4(0.127476289868355,0.221162244677544,0.123233601450920,-0.050860550254583,-0.039296749979258,0.012674974277616,0.021229138597846,0.028401521965861,-0.079298928380013,-0.002840615110472,0.268366992473602,0.054530635476112,-0.082177594304085,-0.061485428363085,-0.041012246161699,0.266700357198715));
res += mul(Get(s1,-dx,0), float4x4(-0.129050314426422,0.050369653850794,-0.045235879719257,-0.216395154595375,0.099115587770939,0.059169888496399,0.035347349941730,-0.020297909155488,-0.062221847474575,-0.098617233335972,-0.101885885000229,-0.030804228037596,-0.040888577699661,0.018350705504417,0.112417846918106,0.053637754172087));
res += mul(Get(s1,-dx,dy), float4x4(0.044816698879004,0.101629562675953,-0.015464011579752,-0.094369843602180,0.180059403181076,0.123994223773479,-0.013096249662340,-0.137292906641960,-0.026310579851270,0.077497892081738,-0.073674812912941,0.091663539409637,-0.036404713988304,-0.082008041441441,-0.014553456567228,0.130239754915237));
res += mul(Get(s1,0,-dy), float4x4(-0.105992235243320,0.078457973897457,-0.140854939818382,-0.007733965758234,0.003337191184983,0.095220558345318,0.153513520956039,0.029741922393441,-0.147704526782036,-0.102597571909428,0.039783056825399,-0.060166403651237,-0.085338778793812,0.044338326901197,0.190955832600594,0.176529154181480));
res += mul(Get(s1,0,0), float4x4(0.160126209259033,-0.048204954713583,0.278451412916183,-0.111135244369507,-0.083175897598267,0.009793045930564,-0.103103347122669,-0.261561453342438,0.008648239076138,-0.013873702846467,-0.143271431326866,0.032861590385437,-0.117272712290287,0.077313847839832,0.031797297298908,-0.032772615551949));
res += mul(Get(s1,0,dy), float4x4(0.249478414654732,0.200170904397964,0.057996906340122,-0.147359535098076,-0.023874979466200,0.067024700343609,-0.163454830646515,-0.182767674326897,-0.004183809738606,-0.055636614561081,-0.016614004969597,-0.069672562181950,-0.271729320287704,0.170819655060768,0.043228808790445,0.077573806047440));
res += mul(Get(s1,dx,-dy), float4x4(0.049906048923731,-0.098046183586121,-0.109825767576694,-0.077028751373291,-0.033860094845295,0.007535775657743,0.158587828278542,-0.141173169016838,-0.020220879465342,0.160715967416763,-0.199578523635864,0.155575975775719,-0.025090796872973,0.048659544438124,0.178256392478943,0.144125372171402));
res += mul(Get(s1,dx,0), float4x4(0.034295745193958,0.122371152043343,-0.110496491193771,-0.166050180792809,-0.187029808759689,-0.078709170222282,0.089128464460373,0.023931300267577,0.296062976121902,0.092734418809414,0.045805610716343,0.004841051530093,-0.061108890920877,-0.062909692525864,0.037943642586470,-0.203984811902046));
res += mul(Get(s1,dx,dy), float4x4(-0.018660712987185,0.098710812628269,-0.047995053231716,-0.155877128243446,0.225766897201538,-0.188709184527397,0.133704349398613,0.116128757596016,-0.052829150110483,-0.124010108411312,0.073533020913601,0.005250334739685,0.026718730106950,-0.168174132704735,-0.016954271122813,-0.053770598024130));
res += mul(Get(s2,-dx,-dy), float4x4(0.114386260509491,-0.185739740729332,-0.135594233870506,0.179821640253067,-0.120015904307365,-0.212331801652908,-0.028246743604541,-0.108331851661205,0.054232440888882,-0.085376396775246,0.144267931580544,-0.059902608394623,-0.006566633936018,0.010780813172460,0.041278809309006,-0.091523118317127));
res += mul(Get(s2,-dx,0), float4x4(-0.016331726685166,-0.240637481212616,-0.108686104416847,0.130988806486130,-0.060645353049040,-0.082256548106670,0.080766528844833,-0.044270265847445,0.031831767410040,0.068087197840214,0.135634824633598,-0.072128266096115,0.046738918870687,0.290107309818268,-0.084169410169125,0.130968511104584));
res += mul(Get(s2,-dx,dy), float4x4(-0.093259371817112,-0.019520893692970,-0.035331171005964,-0.169354557991028,-0.237934663891792,-0.083488754928112,0.028579521924257,-0.051669288426638,0.107826292514801,0.190791174769402,-0.139280214905739,-0.157278150320053,-0.066631436347961,0.250062704086304,0.099760018289089,-0.185824468731880));
res += mul(Get(s2,0,-dy), float4x4(0.036726981401443,-0.194552615284920,-0.059118479490280,0.124905668199062,-0.086365059018135,-0.205451622605324,0.013534715399146,-0.012939041480422,0.273205846548080,0.120509229600430,0.235671564936638,-0.028045222163200,-0.111894786357880,0.070411585271358,-0.079006835818291,-0.126822322607040));
res += mul(Get(s2,0,0), float4x4(-0.058510437607765,0.034547325223684,-0.169517725706100,-0.029689323157072,0.085197187960148,-0.099697537720203,-0.026993297040462,0.079075299203396,-0.090526804327965,-0.045427210628986,0.282041221857071,0.164403155446053,-0.000946287880652,0.206560656428337,0.000211354301427,-0.064560368657112));
res += mul(Get(s2,0,dy), float4x4(0.057340763509274,-0.100889809429646,-0.141519874334335,-0.005096011795104,0.090186588466167,-0.220027774572372,0.125957980751991,0.269430369138718,0.240665346384048,-0.042354367673397,-0.067060030996799,0.140696212649345,-0.020127350464463,0.069463394582272,-0.165207564830780,-0.117553673684597));
res += mul(Get(s2,dx,-dy), float4x4(-0.105303131043911,-0.184897527098656,-0.037183120846748,0.082001812756062,0.051449555903673,-0.055913675576448,-0.157372072339058,-0.092724129557610,0.029662165790796,-0.005713123362511,0.036520916968584,-0.133297577500343,0.139821618795395,0.192421138286591,-0.146705403923988,-0.030035821720958));
res += mul(Get(s2,dx,0), float4x4(0.020886633545160,-0.076308928430080,0.088120177388191,-0.008633381687105,0.078805297613144,-0.163709565997124,-0.053254473954439,0.053149219602346,-0.089648589491844,-0.045324251055717,-0.025808677077293,0.048564568161964,-0.122313193976879,0.114521980285645,0.028490068390965,-0.081648044288158));
res += mul(Get(s2,dx,dy), float4x4(-0.112109988927841,0.153338074684143,-0.005712071433663,-0.060975920408964,0.060500629246235,-0.074495323002338,-0.108496233820915,-0.023473784327507,0.045008361339569,-0.059263803064823,0.085194796323776,0.247304290533066,-0.121898382902145,0.075501158833504,-0.014827678911388,0.076444104313850));
res += mul(Get(s3,-dx,-dy), float4x4(0.033739939332008,-0.183983623981476,0.094051256775856,-0.221910536289215,0.021299101412296,-0.068367332220078,-0.053229324519634,-0.245171427726746,0.117721721529961,-0.060590993613005,-0.081251464784145,0.109275043010712,0.103567898273468,-0.042127303779125,0.081717081367970,-0.124702237546444));
res += mul(Get(s3,-dx,0), float4x4(0.033671323210001,0.154786199331284,0.009316218085587,0.075416795909405,0.049486402422190,-0.064967155456543,0.026809288188815,-0.017934013158083,-0.118295103311539,-0.027542550116777,0.049362063407898,0.175522074103355,-0.080111227929592,-0.046137511730194,0.366365551948547,-0.057760115712881));
res += mul(Get(s3,-dx,dy), float4x4(-0.044789128005505,-0.121114775538445,-0.077670432627201,-0.169423162937164,0.005358334630728,-0.061172634363174,-0.093333154916763,0.058093149214983,0.153642624616623,-0.010211286135018,0.200937822461128,0.141240000724792,-0.036673359572887,-0.092390961945057,0.093636281788349,-0.086026884615421));
res += mul(Get(s3,0,-dy), float4x4(-0.159183114767075,0.167373999953270,0.065691649913788,0.115508660674095,-0.141595259308815,0.156858161091805,0.127726092934608,0.131550461053848,0.021996947005391,0.144067555665970,-0.042936444282532,0.057727653533220,-0.134174197912216,-0.080499403178692,0.083995960652828,-0.067290030419827));
res += mul(Get(s3,0,0), float4x4(0.112345047295094,-0.072550259530544,-0.058477614074945,-0.170730695128441,0.112391211092472,-0.113242775201797,0.034497652202845,0.161035209894180,0.120583243668079,-0.193196594715118,0.186542809009552,-0.090071327984333,0.157763272523880,0.032432835549116,0.046549551188946,0.047515690326691));
res += mul(Get(s3,0,dy), float4x4(-0.030381590127945,-0.102574050426483,-0.044843751937151,0.029635077342391,-0.071722410619259,-0.012123846448958,0.070309996604919,-0.091150224208832,0.177915543317795,0.251194089651108,0.010754007846117,0.229192495346069,0.076673217117786,0.007433872669935,-0.152136862277985,0.024941999465227));
res += mul(Get(s3,dx,-dy), float4x4(-0.096749760210514,0.032955396920443,-0.065138138830662,0.162874966859818,-0.104659184813499,0.023358300328255,0.152152240276337,0.159074082970619,0.175527527928352,0.122276566922665,-0.134325996041298,-0.157993435859680,-0.094904452562332,0.048356592655182,0.077111557126045,-0.023725673556328));
res += mul(Get(s3,dx,0), float4x4(0.122619740664959,0.043143428862095,-0.169134423136711,-0.267860531806946,0.020649867132306,0.244162365794182,0.116577260196209,0.170806065201759,0.071647055447102,-0.086610071361065,0.019763439893723,-0.047975420951843,0.108516253530979,-0.051016587764025,0.039384614676237,-0.150627315044403));
res += mul(Get(s3,dx,dy), float4x4(-0.134272307157516,-0.055410418659449,-0.193612128496170,0.050726827234030,0.091223910450935,-0.023693313822150,-0.051407348364592,0.023875948041677,-0.050593603402376,0.050156518816948,0.068627700209618,-0.000500513182487,0.083991624414921,0.030363423749804,-0.136357426643372,-0.098761424422264));
return max(float4(0,0,0,0), res);
}