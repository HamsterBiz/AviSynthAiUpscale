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
res += mul(Get(s0,-dx,-dy), float4x4(-0.021543920040131,-0.093031637370586,0.038882393389940,0.000906970701180,-0.006284825969487,0.005792905110866,0.007701172027737,-0.012891780585051,-0.053263965994120,-0.020035549998283,-0.062089733779430,-0.047803401947021,-0.020976061001420,0.006077112164348,0.051122948527336,0.034977186471224));
res += mul(Get(s0,-dx,0), float4x4(-0.023409018293023,-0.024914421141148,0.021013416349888,0.023849166929722,-0.015130104497075,0.045728344470263,0.020760159939528,-0.012626313604414,-0.074512735009193,-0.091655224561691,-0.035353969782591,-0.074285775423050,0.053259570151567,0.051978792995214,0.034449692815542,0.050326138734818));
res += mul(Get(s0,-dx,dy), float4x4(-0.004030794836581,-0.019332032650709,-0.084820300340652,0.023844432085752,-0.008885606192052,0.038748815655708,0.035675156861544,-0.027541579678655,-0.144707173109055,0.005681121721864,-0.150023862719536,-0.132114708423615,0.053516577929258,0.080794118344784,-0.041444793343544,0.058145649731159));
res += mul(Get(s0,0,-dy), float4x4(0.077187418937683,-0.038840122520924,-0.038484781980515,-0.025403507053852,0.029340192675591,-0.037139967083931,-0.023906618356705,0.045352641493082,0.044708717614412,0.008363475091755,-0.061218939721584,-0.009226777590811,-0.005593460984528,0.030529206618667,0.034517947584391,0.010440787300467));
res += mul(Get(s0,0,0), float4x4(0.003385771764442,-0.048941548913717,-0.071158781647682,0.095637217164040,-0.004200048744678,-0.044607937335968,0.000052852170484,0.014853760600090,0.040846209973097,0.057530399411917,0.212367743253708,0.098760850727558,0.008293068036437,0.012730670161545,-0.084306053817272,0.027592062950134));
res += mul(Get(s0,0,dy), float4x4(0.038780372589827,-0.012590496800840,0.009730527177453,0.030907774344087,-0.029326802119613,0.021611934527755,0.026607099920511,-0.008707216009498,0.064559064805508,0.111769340932369,0.021660428494215,0.019437391310930,-0.014852653257549,0.018316609784961,-0.061342317610979,0.038527328521013));
res += mul(Get(s0,dx,-dy), float4x4(0.026434080675244,-0.036238148808479,-0.012569887563586,-0.019123652949929,0.060620170086622,0.015309731476009,-0.096015743911266,-0.029797172173858,0.061170194298029,0.039408791810274,0.025566766038537,-0.026645936071873,-0.010164887644351,0.051498003304005,-0.016842409968376,0.052138365805149));
res += mul(Get(s0,dx,0), float4x4(-0.008252466097474,-0.031577337533236,-0.006416015326977,-0.009008150547743,0.040207341313362,-0.028701316565275,0.011351130902767,-0.022516338154674,-0.085545048117638,0.044127997010946,-0.061743218451738,-0.094355881214142,-0.049044713377953,0.029537521302700,-0.074491508305073,0.099038995802402));
res += mul(Get(s0,dx,dy), float4x4(-0.002006141934544,-0.003137517487630,-0.064386047422886,-0.069583445787430,-0.060186281800270,0.004816715605557,-0.031704429537058,-0.019870471209288,0.056170653551817,-0.003259571501985,-0.060561127960682,-0.019599899649620,-0.088154092431068,-0.052669741213322,-0.087446019053459,0.067353166639805));
res += mul(Get(s1,-dx,-dy), float4x4(-0.021319216117263,-0.010108782909811,-0.057861220091581,-0.113451838493347,0.042427837848663,-0.038928326219320,-0.012362552806735,0.012951303273439,0.010160932317376,-0.033750128000975,-0.062438238412142,-0.034705687314272,-0.028969166800380,-0.025397650897503,0.040063582360744,-0.010661251842976));
res += mul(Get(s1,-dx,0), float4x4(-0.005964812822640,0.007223580032587,-0.134457692503929,-0.047327931970358,-0.000295956502669,-0.077419385313988,-0.052037134766579,-0.048790831118822,0.000930621521547,-0.042111542075872,-0.089197404682636,-0.007335507776588,-0.009390806779265,-0.020281279459596,0.000298003084026,0.039050590246916));
res += mul(Get(s1,-dx,dy), float4x4(-0.003999559208751,-0.074500657618046,0.061606060713530,0.009046134538949,-0.027827491983771,0.042293023318052,0.087491489946842,0.034253206104040,0.050207812339067,0.006588134448975,-0.022722536697984,-0.010963117703795,0.007358795031905,0.010476779192686,-0.029022695496678,0.046515665948391));
res += mul(Get(s1,0,-dy), float4x4(0.107322491705418,0.088836364448071,-0.034298639744520,-0.091123566031456,0.053097210824490,0.009613838046789,-0.066703766584396,-0.002455203095451,-0.037130977958441,-0.035914763808250,0.089595824480057,0.098481908440590,0.028722822666168,-0.053882386535406,-0.023823928087950,0.040510494261980));
res += mul(Get(s1,0,0), float4x4(-0.005863651167601,0.070985831320286,0.021581590175629,0.281809121370316,0.083288490772247,0.038882460445166,0.117653168737888,0.116859748959541,-0.007061964366585,0.056046918034554,-0.010857666842639,-0.001501235296018,-0.010534329339862,-0.046506896615028,-0.029129393398762,0.082657054066658));
res += mul(Get(s1,0,dy), float4x4(-0.179381698369980,-0.128728225827217,0.027617789804935,0.044216133654118,-0.083356373012066,0.063502535223961,-0.069509208202362,-0.084884047508240,-0.005736417602748,0.065139107406139,0.003003035439178,-0.014700679108500,-0.011976503767073,0.098200693726540,-0.082010075449944,0.005710970610380));
res += mul(Get(s1,dx,-dy), float4x4(-0.017332179471850,0.020062470808625,0.042973130941391,-0.029575409367681,0.065883085131645,0.049992661923170,-0.048354450613260,0.028798708692193,-0.081841669976711,-0.029562573879957,0.043780434876680,-0.062703467905521,0.034963134676218,-0.029706627130508,-0.010452232323587,0.026245638728142));
res += mul(Get(s1,dx,0), float4x4(0.005275229457766,-0.015064475126565,0.092230945825577,0.016877729445696,0.060521673411131,0.040112674236298,0.047980979084969,-0.055753946304321,0.053012162446976,0.047955054789782,-0.023167544975877,-0.089130818843842,0.011288662441075,-0.011852588504553,-0.029283558949828,-0.000497925793752));
res += mul(Get(s1,dx,dy), float4x4(0.020666446536779,-0.040253687649965,0.051611885428429,-0.062913276255131,0.139501214027405,0.022179897874594,0.075530603528023,0.037074107676744,-0.068403765559196,0.016799848526716,0.002749059814960,-0.041417509317398,0.006521300412714,0.035769660025835,-0.055356606841087,0.014542856253684));
res += mul(Get(s2,-dx,-dy), float4x4(-0.034670550376177,-0.004893564619124,-0.014075849205256,0.017982268705964,-0.013041862286627,-0.023395378142595,-0.015501018613577,0.000617258949205,0.072280697524548,-0.050907343626022,-0.087539263069630,-0.024783167988062,0.018134195357561,-0.031228352338076,0.005355650093406,-0.075061060488224));
res += mul(Get(s2,-dx,0), float4x4(-0.014763773418963,-0.019509077072144,-0.024879442527890,-0.053203076124191,-0.009546775370836,-0.007304777391255,-0.013364191167057,-0.002337116515264,-0.015790767967701,-0.064851008355618,0.002506640506908,0.075068667531013,0.057484611868858,-0.023698844015598,0.071823254227638,0.021634085103869));
res += mul(Get(s2,-dx,dy), float4x4(-0.011679982766509,-0.046778425574303,0.008535030297935,0.027726050466299,-0.015025055967271,-0.008401503786445,-0.012971570715308,0.006762302480638,-0.018087875097990,-0.009024337865412,0.058888509869576,0.029393060132861,0.059750076383352,-0.020477171987295,0.043538063764572,0.004200796131045));
res += mul(Get(s2,0,-dy), float4x4(-0.037798792123795,-0.041263263672590,-0.014415405690670,-0.080363951623440,-0.006751095876098,-0.008657527156174,-0.000747324083932,0.001317754271440,-0.016030339524150,-0.013427694328129,-0.071634002029896,0.024869609624147,0.031540717929602,0.036666560918093,-0.007003251928836,0.006007737480104));
res += mul(Get(s2,0,0), float4x4(-0.068535044789314,-0.051021140068769,-0.081770241260529,-0.007418067194521,0.002312469994649,0.013595012947917,-0.001798702636734,-0.014091952703893,-0.073650084435940,-0.080803379416466,-0.007873443886638,0.037298563867807,0.029720265418291,0.086508773267269,-0.005494626238942,0.041679617017508));
res += mul(Get(s2,0,dy), float4x4(-0.044224258512259,-0.022988101467490,0.003524797735736,0.021785145625472,-0.031776003539562,-0.027026744559407,-0.015684161335230,0.020827289670706,-0.089317366480827,-0.011918882839382,0.002356802346185,-0.019749384373426,0.012781441211700,-0.120891191065311,-0.083429202437401,0.017993677407503));
res += mul(Get(s2,dx,-dy), float4x4(-0.022029833868146,-0.067382767796516,0.011717803776264,-0.011635266244411,-0.006072715856135,-0.003669955534860,-0.020634518936276,-0.010183931328356,-0.022050131112337,-0.002030801028013,-0.010809128172696,-0.030978858470917,0.011564112268388,0.011055560782552,-0.035389136523008,-0.008261930197477));
res += mul(Get(s2,dx,0), float4x4(-0.044554613530636,-0.029105536639690,0.022641060873866,0.008259069174528,-0.008867459371686,-0.006362720858306,-0.004561059642583,-0.004794176667929,-0.024632275104523,-0.041524749249220,0.075407862663269,0.023352906107903,-0.050284933298826,0.007458040025085,-0.034843944013119,0.077110089361668));
res += mul(Get(s2,dx,dy), float4x4(0.009513677097857,-0.010414542630315,0.019694710150361,0.004328086972237,-0.038416046649218,-0.027534149587154,-0.014425878413022,0.016352716833353,-0.013272127136588,0.008378326892853,0.071177862584591,-0.017563482746482,-0.041672606021166,-0.095283694565296,0.033783461898565,0.019683392718434));
res += mul(Get(s3,-dx,-dy), float4x4(-0.015183342620730,0.053273845463991,-0.011431938968599,-0.040852047502995,-0.016441321000457,0.025397231802344,0.046641942113638,0.038869466632605,0.053653787821531,-0.081615008413792,-0.015348034910858,-0.057943575084209,-0.001843212055974,0.017123997211456,0.016812102869153,-0.035568721592426));
res += mul(Get(s3,-dx,0), float4x4(0.020999584347010,0.031420148909092,0.065973661839962,0.072661951184273,0.033862434327602,0.032614368945360,0.045669559389353,0.169879928231239,-0.048561654984951,-0.026812752708793,-0.037897113710642,-0.002845493843779,0.010435013100505,0.025084597989917,0.074716754257679,-0.011924972757697));
res += mul(Get(s3,-dx,dy), float4x4(0.036833748221397,0.071158230304718,0.003061263589188,-0.017066264525056,0.130458652973175,0.013941383920610,0.064495936036110,0.055029008537531,-0.041454669088125,0.067755930125713,-0.044839814305305,-0.019287645816803,0.019473999738693,0.050620313733816,0.114505007863045,-0.010850986465812));
res += mul(Get(s3,0,-dy), float4x4(-0.053607009351254,0.102451726794243,0.018222618848085,-0.012204359285533,0.000813068822026,-0.023145707324147,0.117810770869255,0.124015107750893,0.079564571380615,-0.015227697789669,0.046735182404518,-0.034716166555882,-0.025855714455247,0.019721111282706,-0.036985959857702,0.037210796028376));
res += mul(Get(s3,0,0), float4x4(-0.086309023201466,-0.047619856894016,-0.058503333479166,0.010742857120931,0.117438495159149,0.034892026335001,0.124688446521759,-0.014660947956145,0.042410217225552,0.026498313993216,-0.049747556447983,-0.039856594055891,-0.032830540090799,-0.021213231608272,0.066561616957188,0.065163262188435));
res += mul(Get(s3,0,dy), float4x4(0.077813796699047,0.087631285190582,0.048227287828922,-0.021492620930076,0.110181026160717,-0.034105744212866,0.008995947428048,-0.033044852316380,-0.027339436113834,0.106929063796997,-0.029507515951991,-0.060807403177023,0.032351523637772,0.039170194417238,0.102848030626774,-0.054918352514505));
res += mul(Get(s3,dx,-dy), float4x4(-0.074649266898632,0.039304148405790,0.051964979618788,-0.015643805265427,-0.003693923354149,0.017898416146636,0.100122161209583,-0.020332202315331,0.047965504229069,0.051921300590038,0.033592395484447,-0.070040635764599,-0.066964760422707,0.005963295698166,-0.038064837455750,-0.030740862712264));
res += mul(Get(s3,dx,0), float4x4(-0.020977657288313,-0.009634063579142,-0.068378530442715,0.047718524932861,0.043798517435789,-0.032548263669014,0.074403561651707,-0.036944061517715,0.055187411606312,0.067741885781288,0.048671662807465,-0.064205870032310,0.015230484306812,0.073072262108326,0.008199444971979,-0.083574689924717));
res += mul(Get(s3,dx,dy), float4x4(-0.039865974336863,0.055447980761528,-0.006978175137192,-0.084797210991383,0.074921995401382,-0.045651603490114,0.130442738533020,0.069409601390362,-0.156481325626373,0.052341684699059,-0.049414522945881,-0.034349545836449,0.037552434951067,0.034370802342892,0.026664476841688,-0.061383359134197));
return max(float4(0,0,0,0), res);
}