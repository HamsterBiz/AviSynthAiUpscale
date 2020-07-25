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
res += mul(Get(s0,-dx,-dy), float4x4(0.116969726979733,-0.066531054675579,0.046467773616314,-0.006642790511250,0.029090769588947,-0.060453914105892,-0.056943424046040,-0.044358730316162,-0.019550496712327,0.067891635000706,0.003943462856114,0.126740112900734,0.068872950971127,-0.009347566403449,-0.098813310265541,0.042853184044361));
res += mul(Get(s0,-dx,0), float4x4(0.077042274177074,0.083688035607338,0.030616473406553,0.181041330099106,-0.107354708015919,-0.034438461065292,0.031263191252947,0.132174864411354,-0.082751668989658,-0.072050042450428,0.098743550479412,0.110748544335365,0.192425802350044,0.062389597296715,0.021842639893293,0.005290704313666));
res += mul(Get(s0,-dx,dy), float4x4(0.061910275369883,-0.047905970364809,-0.041147090494633,0.052653338760138,-0.052935071289539,0.000129145002575,-0.022003039717674,0.018483873456717,-0.040193893015385,-0.001111932797357,0.090044960379601,0.058689549565315,-0.085110247135162,-0.089067921042442,-0.037808470427990,-0.082577466964722));
res += mul(Get(s0,0,-dy), float4x4(-0.014979142695665,0.198407128453255,0.058060992509127,0.107358023524284,-0.060352407395840,-0.020542660728097,0.056115858256817,-0.078657060861588,-0.208516225218773,-0.037270706146955,0.006484300363809,-0.099145270884037,-0.115122586488724,0.075293302536011,-0.149581715464592,0.176981553435326));
res += mul(Get(s0,0,0), float4x4(0.071599029004574,0.122036434710026,0.135685175657272,0.039902482181787,-0.228916898369789,-0.042038228362799,0.037547234445810,0.007534362375736,-0.040487371385098,-0.000173950233147,0.145384192466736,0.045778911560774,0.116092883050442,-0.221007779240608,0.052508886903524,0.076806716620922));
res += mul(Get(s0,0,dy), float4x4(0.052545938640833,-0.008344736881554,0.097816355526447,-0.210790529847145,-0.105047285556793,0.027437046170235,0.076847434043884,0.007161289453506,0.015264093875885,0.161122232675552,-0.225321352481842,-0.077696092426777,0.025156322866678,0.053247276693583,-0.018504751846194,0.130055680871010));
res += mul(Get(s0,dx,-dy), float4x4(0.032964535057545,-0.075636535882950,-0.006962728686631,0.015564471483231,0.014743028208613,-0.028819149360061,-0.073647134006023,-0.233989790081978,0.010191730223596,-0.027933467179537,0.118089236319065,0.029735444113612,-0.005281098652631,-0.070669300854206,-0.099619574844837,0.143191993236542));
res += mul(Get(s0,dx,0), float4x4(-0.127524659037590,-0.170560613274574,-0.100773759186268,0.033880107104778,0.062243115156889,0.087471999228001,0.029323099181056,0.101330868899822,-0.038887109607458,-0.008572238497436,-0.004672577138990,-0.040713328868151,-0.110300093889236,-0.039683114737272,0.043669644743204,-0.145666956901550));
res += mul(Get(s0,dx,dy), float4x4(0.025543674826622,-0.054118074476719,-0.014618386514485,0.019977068528533,0.208120495080948,0.136256501078606,-0.007996070198715,0.018776534125209,-0.021897502243519,0.207745969295502,-0.016780104488134,0.009370901621878,-0.013934465125203,0.260412901639938,-0.049255274236202,0.113925449550152));
res += mul(Get(s1,-dx,-dy), float4x4(0.021790347993374,-0.191024973988533,0.087298542261124,0.191402703523636,-0.072374530136585,0.061793331056833,0.050788704305887,-0.012758391909301,-0.070499300956726,-0.071042485535145,0.026968328282237,0.091599456965923,-0.192728593945503,-0.020138617604971,-0.136491119861603,0.118503473699093));
res += mul(Get(s1,-dx,0), float4x4(-0.003577161813155,-0.010202469304204,-0.141441568732262,0.005478676874191,-0.137091964483261,0.033319920301437,-0.041281048208475,0.063146315515041,-0.031160386279225,0.187334671616554,-0.072432987391949,0.066293977200985,-0.038282692432404,0.062068473547697,0.120066694915295,0.035929474979639));
res += mul(Get(s1,-dx,dy), float4x4(0.105934321880341,-0.096395738422871,0.110844627022743,-0.049453146755695,-0.121394403278828,-0.128764793276787,0.078089267015457,0.025515651330352,-0.127597361803055,0.064461462199688,-0.004950451198965,-0.079639382660389,-0.084591753780842,0.106237135827541,-0.011535524390638,0.042115461081266));
res += mul(Get(s1,0,-dy), float4x4(-0.028630856424570,-0.133771106600761,-0.128278613090515,0.058148499578238,-0.027806969359517,-0.046012390404940,0.165537178516388,0.001143369008787,0.019316717982292,0.130946531891823,0.090870946645737,-0.048711661249399,-0.083980761468410,0.188726142048836,0.173685625195503,0.043109938502312));
res += mul(Get(s1,0,0), float4x4(-0.162291541695595,0.005113512743264,0.127897590398788,0.079673960804939,-0.043254762887955,-0.057333599776030,-0.093926712870598,0.049286123365164,0.070733934640884,0.101995259523392,0.053826995193958,-0.112481109797955,-0.106844559311867,0.178883820772171,0.033318687230349,0.061798371374607));
res += mul(Get(s1,0,dy), float4x4(0.069300398230553,-0.082588464021683,0.034473512321711,-0.031283337622881,-0.074788227677345,-0.106082476675510,0.138225361704826,0.063918739557266,-0.036513485014439,-0.075164914131165,-0.053636003285646,-0.000096310533991,-0.110586754977703,0.023150125518441,0.030749022960663,0.043348129838705));
res += mul(Get(s1,dx,-dy), float4x4(0.071231678128242,0.042198993265629,0.062238182872534,0.009823756292462,0.028309119865298,0.044461548328400,-0.065961204469204,-0.101563699543476,-0.095685139298439,-0.015599671751261,-0.025755975395441,-0.146243453025818,-0.108509466052055,0.076389096677303,0.074208639562130,0.076959475874901));
res += mul(Get(s1,dx,0), float4x4(-0.152044177055359,0.122109733521938,-0.035177558660507,0.016742575913668,0.072440937161446,-0.067338719964027,-0.175996214151382,0.029892552644014,0.053885020315647,-0.000542693596799,-0.058862321078777,-0.044340241700411,0.127925097942352,-0.029308142140508,-0.077644497156143,-0.072497516870499));
res += mul(Get(s1,dx,dy), float4x4(0.012336060404778,0.057895354926586,0.095175839960575,0.022201547399163,-0.095898777246475,0.044343929737806,-0.142269521951675,0.051021166145802,-0.036141704767942,-0.013250597752631,-0.066883832216263,0.003912665881217,-0.003376382170245,-0.061609365046024,0.030096519738436,-0.075034849345684));
res += mul(Get(s2,-dx,-dy), float4x4(-0.243458136916161,0.246765583753586,-0.152964964509010,-0.080935470759869,0.094836249947548,0.014330036006868,0.068263269960880,-0.042919676750898,0.146786376833916,0.048147819936275,-0.026699777692556,0.022358274087310,-0.002888380549848,0.016400812193751,-0.001447720802389,0.042147193104029));
res += mul(Get(s2,-dx,0), float4x4(0.077523306012154,-0.064246833324432,0.000260264496319,0.022791888564825,-0.150997534394264,0.001865289639682,0.108515009284019,0.147019997239113,0.132392063736916,0.197517842054367,0.050526939332485,0.033642828464508,0.126429975032806,-0.084134295582771,-0.129813015460968,-0.167245864868164));
res += mul(Get(s2,-dx,dy), float4x4(0.114430904388428,-0.010161579586565,0.061306629329920,0.081468634307384,-0.162290379405022,0.085041157901287,-0.038516990840435,-0.021911170333624,0.167521178722382,0.048530079424381,-0.093352496623993,-0.022346291691065,-0.010130326263607,-0.039062649011612,-0.057472936809063,-0.047814428806305));
res += mul(Get(s2,0,-dy), float4x4(0.095527440309525,0.073065735399723,0.040518574416637,0.015892270952463,-0.065074063837528,0.006295007187873,-0.109159126877785,0.101679593324661,0.016034806147218,0.131831705570221,-0.022102216258645,-0.034157980233431,-0.089914232492447,-0.008232638239861,0.003197863465175,0.124684438109398));
res += mul(Get(s2,0,0), float4x4(-0.093538634479046,0.096046268939972,-0.078249812126160,0.066820442676544,0.080937176942825,-0.159339919686317,-0.041146870702505,0.004210626240820,0.102453477680683,0.123440384864807,0.049980252981186,-0.015055325813591,-0.233743041753769,-0.007864231243730,-0.152719929814339,-0.131258398294449));
res += mul(Get(s2,0,dy), float4x4(-0.047142326831818,-0.015734685584903,-0.045383773744106,0.153317764401436,-0.035989847034216,0.002671872964129,-0.064614675939083,-0.037465363740921,0.008719396777451,0.009484088979661,-0.074281178414822,-0.116008535027504,0.158663064241409,0.112477444112301,0.154534056782722,-0.030403826385736));
res += mul(Get(s2,dx,-dy), float4x4(-0.173790901899338,-0.188579916954041,0.324690431356430,0.160304144024849,-0.005327611230314,-0.023433355614543,0.211834639310837,0.124562039971352,-0.093230746686459,0.064388319849968,-0.004188766237348,0.029613262042403,-0.007818231359124,-0.056102506816387,0.012035155668855,0.143098711967468));
res += mul(Get(s2,dx,0), float4x4(-0.136736959218979,0.013161761686206,0.241200074553490,-0.042165972292423,0.030961647629738,-0.057851854711771,0.060830224305391,0.130108475685120,-0.024131387472153,0.027111370116472,-0.025365743786097,-0.054040774703026,0.015129053033888,-0.014907145872712,0.057474095374346,-0.151576206088066));
res += mul(Get(s2,dx,dy), float4x4(-0.005801490973681,0.011184423230588,0.016418553888798,-0.007636451162398,0.002700840355828,0.020354116335511,-0.073444522917271,0.014657826162875,-0.113052263855934,0.051463644951582,-0.049647230654955,-0.029901420697570,0.083425872027874,0.002730881096795,-0.039859309792519,-0.002922467421740));
res += mul(Get(s3,-dx,-dy), float4x4(-0.019080048426986,-0.032817509025335,-0.021623946726322,0.000115294496936,-0.037977874279022,-0.015441111288965,-0.020634297281504,-0.132770210504532,-0.066796846687794,0.022143362089992,-0.080410070717335,0.247093722224236,0.071982152760029,-0.044807858765125,0.055224481970072,-0.093928836286068));
res += mul(Get(s3,-dx,0), float4x4(-0.085781618952751,0.094210259616375,0.074814885854721,-0.036120586097240,-0.063366644084454,-0.051645293831825,-0.014123207889497,0.110335476696491,-0.168600589036942,0.150157690048218,-0.098349295556545,-0.020572720095515,-0.049883041530848,-0.025386672466993,-0.006600934546441,0.018737679347396));
res += mul(Get(s3,-dx,dy), float4x4(-0.043409414589405,0.038764003664255,0.017363250255585,0.052662540227175,0.055785521864891,-0.013904280960560,0.007288716733456,0.024990711361170,-0.015207377262414,0.011708588339388,0.096516504883766,0.143655151128769,0.064907789230347,-0.023697886615992,0.095067389309406,-0.069841101765633));
res += mul(Get(s3,0,-dy), float4x4(-0.146900311112404,-0.117392264306545,0.028091700747609,-0.115897059440613,0.124749898910522,-0.044075012207031,-0.148823395371437,-0.036456573754549,0.071038670837879,0.088361635804176,-0.005206621717662,0.114304639399052,0.031745962798595,-0.086661525070667,0.170656502246857,0.024845812469721));
res += mul(Get(s3,0,0), float4x4(0.020883008837700,-0.147386938333511,0.008356289938092,0.037522763013840,-0.019607881084085,0.055046115070581,-0.083980016410351,0.201190933585167,-0.059152156114578,0.076867938041687,0.066286675632000,-0.040269345045090,0.014514672569931,-0.013553786091506,-0.011131978593767,0.107188120484352));
res += mul(Get(s3,0,dy), float4x4(-0.145120173692703,0.028290553018451,-0.047691002488136,-0.000307164533297,-0.189319238066673,0.165785193443298,0.085086852312088,0.048943169414997,0.087268218398094,0.054167654365301,0.008914271369576,-0.001914142048918,-0.067189700901508,-0.007788211572915,-0.122884251177311,-0.031639579683542));
res += mul(Get(s3,dx,-dy), float4x4(-0.096587724983692,0.042443864047527,-0.028021117672324,-0.102631144225597,0.013094340451062,-0.136458888649940,0.163229480385780,-0.143216758966446,-0.069466233253479,0.103159569203854,-0.109154924750328,0.027816779911518,-0.027648501098156,-0.154997304081917,0.143660992383957,0.117437399923801));
res += mul(Get(s3,dx,0), float4x4(0.011618360877037,-0.084994547069073,0.068341597914696,-0.095263428986073,0.077377080917358,0.140758529305458,0.031042845919728,0.025148404762149,0.052443880587816,0.103124611079693,-0.026205759495497,-0.088327378034592,0.015674376860261,0.190438404679298,-0.146998599171638,-0.118666164577007));
res += mul(Get(s3,dx,dy), float4x4(0.049796320497990,0.017391517758369,0.121920362114906,-0.032639715820551,-0.053535364568233,-0.116465106606483,0.073668777942657,-0.023239659145474,0.092489659786224,-0.038896929472685,-0.054819159209728,-0.095238223671913,-0.030222564935684,0.000886094523594,0.010273555293679,0.002321963896975));
return max(float4(0,0,0,0), res);
}