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
res += mul(Get(s0,-dx,-dy), float4x4(-0.032439310103655,0.019631065428257,-0.178206503391266,-0.040826022624969,0.107832603156567,0.045439116656780,0.071527063846588,-0.101231887936592,-0.013286863453686,-0.007921510376036,-0.031195595860481,-0.016579067334533,0.007057358510792,0.029773004353046,0.026875261217356,0.020110614597797));
res += mul(Get(s0,-dx,0), float4x4(-0.098937414586544,-0.004651518072933,-0.120169430971146,-0.002390102017671,0.047680653631687,-0.013346030376852,-0.027602855116129,0.101711980998516,0.005602588877082,0.023328725248575,-0.020504223182797,-0.000291393313091,-0.042187158018351,0.050247862935066,-0.099875241518021,-0.124932065606117));
res += mul(Get(s0,-dx,dy), float4x4(0.009374694898725,-0.049696110188961,0.001919995062053,0.043089251965284,-0.142968073487282,0.024065231904387,0.059870310127735,0.071770891547203,0.106620594859123,0.010142310522497,0.035399444401264,-0.012048009783030,-0.150342866778374,0.039417169988155,0.020921230316162,-0.000805407529697));
res += mul(Get(s0,0,-dy), float4x4(0.034096356481314,0.011763033457100,-0.010594632476568,-0.096983850002289,-0.105302155017853,0.022007433697581,-0.001099964603782,0.023017842322588,0.014123787172139,0.002669308800250,0.029926884919405,-0.023149752989411,-0.074914939701557,-0.013203630223870,0.065106354653835,0.048229254782200));
res += mul(Get(s0,0,0), float4x4(-0.010547058656812,-0.059519384056330,-0.005199602805078,0.030025878921151,0.100103385746479,0.036766484379768,-0.068533331155777,-0.015884218737483,0.015045538544655,-0.010714846663177,-0.026811329647899,0.017440265044570,0.118655823171139,0.028212646022439,-0.085457608103752,-0.079154200851917));
res += mul(Get(s0,0,dy), float4x4(-0.020907847210765,-0.068174570798874,0.093879744410515,-0.070467866957188,0.219540432095528,-0.022284874692559,0.063407726585865,-0.094838120043278,0.048844404518604,0.023773927241564,0.007230324205011,0.029850965365767,0.118349187076092,0.004626388195902,0.089525043964386,-0.109442569315434));
res += mul(Get(s0,dx,-dy), float4x4(-0.013761227019131,-0.004049690905958,-0.065376646816730,0.099621467292309,0.011102264747024,0.015746185556054,0.024938194081187,0.004924720153213,-0.009941817261279,0.012098727747798,-0.011706617660820,-0.006920470856130,-0.003829414723441,-0.062544733285904,0.038909640163183,0.113666035234928));
res += mul(Get(s0,dx,0), float4x4(-0.047335077077150,-0.017109485343099,-0.065618835389614,0.043997276574373,-0.066648326814175,-0.033168595284224,-0.083289042115211,-0.024344077333808,0.040169619023800,-0.004476731177419,-0.017498813569546,0.004268554504961,-0.092697262763977,-0.064448833465576,-0.071711011230946,0.150645360350609));
res += mul(Get(s0,dx,dy), float4x4(0.006765792146325,-0.014224759303033,-0.045910209417343,-0.000079716250184,-0.118332721292973,-0.049411680549383,-0.003704218659550,0.070346474647522,0.017132703214884,-0.002899206709117,0.040587838739157,0.046827699989080,0.013856561854482,-0.049004316329956,0.053432177752256,0.078111350536346));
res += mul(Get(s1,-dx,-dy), float4x4(-0.031376000493765,0.038199018687010,0.011783427558839,0.011497778818011,0.061160147190094,-0.041911307722330,-0.074904702603817,-0.092213772237301,-0.029283521696925,0.037704300135374,0.042726770043373,0.135826006531715,0.012486336752772,0.079175852239132,-0.030498525127769,-0.057365939021111));
res += mul(Get(s1,-dx,0), float4x4(-0.016226330772042,0.012394497171044,-0.029279634356499,-0.001608217717148,0.041388500481844,0.017262212932110,-0.038265049457550,-0.148949667811394,-0.044947568327188,-0.022356862202287,0.029965700581670,-0.038287296891212,0.022283336147666,0.081349179148674,-0.098052881658077,-0.126223877072334));
res += mul(Get(s1,-dx,dy), float4x4(0.049471888691187,0.047468863427639,0.059117432683706,-0.031642902642488,-0.019597038626671,-0.065957389771938,-0.041255727410316,-0.076187260448933,-0.084521546959877,-0.034573137760162,-0.078593924641609,0.028679994866252,-0.033164918422699,-0.004533906001598,-0.011384442448616,-0.131628856062889));
res += mul(Get(s1,0,-dy), float4x4(-0.008486701175570,-0.028806360438466,0.002982506528497,-0.039316318929195,0.031499564647675,-0.070233516395092,-0.026853444054723,0.053621601313353,-0.057030804455280,0.035940889269114,0.012793114408851,0.166566595435143,-0.151708722114563,0.020060207694769,-0.042626064270735,-0.086010009050369));
res += mul(Get(s1,0,0), float4x4(-0.079576440155506,-0.022742370143533,0.012535647489130,0.017127430066466,-0.051664520055056,-0.034806031733751,-0.055103510618210,0.058289922773838,0.007850845344365,-0.004718702752143,-0.006521893199533,-0.032742395997047,-0.077898375689983,-0.016929164528847,-0.061653755605221,-0.053537786006927));
res += mul(Get(s1,0,dy), float4x4(0.028330879285932,-0.015462962910533,0.021885747089982,-0.001791629125364,-0.032003436237574,0.004843842703849,-0.036512065678835,0.068584039807320,0.053538773208857,-0.012073332443833,-0.035115309059620,-0.002180803567171,-0.050817266106606,0.002433978021145,0.001032494357787,0.067581079900265));
res += mul(Get(s1,dx,-dy), float4x4(0.040535099804401,-0.000687600695528,-0.028924105688930,-0.010105981491506,-0.018099382519722,-0.025066776201129,0.025020323693752,0.052419070154428,-0.002559296088293,0.053897071629763,-0.073033422231674,-0.069184891879559,-0.089877657592297,0.049062527716160,-0.043329216539860,-0.072940282523632));
res += mul(Get(s1,dx,0), float4x4(-0.039960067719221,0.017778523266315,0.009016740135849,-0.002770230872557,-0.044238198548555,0.013513894751668,0.048706412315369,0.073659174144268,-0.010114933364093,-0.032040961086750,-0.028978295624256,-0.022209994494915,-0.023499358445406,0.021855358034372,-0.020346030592918,0.015589692629874));
res += mul(Get(s1,dx,dy), float4x4(0.003730008611456,-0.011774329468608,0.000644587737042,0.036793496459723,-0.050040777772665,0.065654277801514,0.060599930584431,0.117106318473816,0.073468722403049,0.024121979251504,0.010637820698321,-0.072355769574642,-0.055178038775921,0.039096590131521,0.066162943840027,0.051054216921329));
res += mul(Get(s2,-dx,-dy), float4x4(-0.005498549435288,-0.030571425333619,0.044548578560352,-0.008627324365079,-0.053362466394901,0.077280789613724,-0.045337554067373,-0.066692948341370,0.038512911647558,-0.023021934553981,0.069490209221840,0.040137991309166,0.063367456197739,0.026401728391647,-0.115266427397728,-0.095751978456974));
res += mul(Get(s2,-dx,0), float4x4(0.026837341487408,0.006308334413916,0.010161410085857,0.085485935211182,-0.038128461688757,0.061214633285999,-0.029829330742359,-0.013476666994393,0.055046550929546,0.010911731049418,-0.060045108199120,0.027378873899579,-0.016012936830521,-0.077188476920128,0.073227591812611,0.090124703943729));
res += mul(Get(s2,-dx,dy), float4x4(-0.045455235987902,0.011016738601029,0.011774769984186,0.010611156001687,-0.041249208152294,0.037963744252920,-0.050656065344810,0.007981307804585,0.021161338314414,-0.016931366175413,0.049226872622967,-0.027798850089312,-0.045227192342281,-0.038211565464735,0.092455394566059,0.016849631443620));
res += mul(Get(s2,0,-dy), float4x4(-0.014497401192784,0.009997014887631,0.048441305756569,0.075146876275539,-0.018196353688836,-0.049319017678499,-0.052912738174200,-0.043966796249151,0.031264886260033,-0.061786148697138,0.057733673602343,0.053395383059978,0.189871951937675,-0.030560778453946,-0.097898148000240,-0.180136650800705));
res += mul(Get(s2,0,0), float4x4(0.024080837145448,-0.030486047267914,0.044699899852276,0.120915941894054,-0.049869116395712,-0.076974116265774,-0.042121689766645,-0.025259459391236,0.081503085792065,-0.025532590225339,-0.002754966961220,-0.040483225136995,0.062574498355389,-0.045370433479548,0.129331022500992,0.053925193846226));
res += mul(Get(s2,0,dy), float4x4(-0.091005243360996,-0.002188009442762,0.009670471772552,0.109959371387959,-0.038468297570944,-0.093656145036221,-0.021147266030312,-0.009081495925784,0.158837825059891,-0.025035073980689,0.038001757115126,-0.019531203433871,-0.269356310367584,-0.026440232992172,0.157474890351295,0.171698153018951));
res += mul(Get(s2,dx,-dy), float4x4(-0.000977476825938,-0.031759757548571,0.035471662878990,0.040832202881575,0.027992833405733,-0.073391236364841,-0.122146368026733,0.005320769734681,-0.000349033623934,0.006751657463610,0.082942180335522,0.028938470408320,-0.058289628475904,0.002992772031575,-0.002643326995894,0.114907555282116));
res += mul(Get(s2,dx,0), float4x4(0.075549080967903,0.009750403463840,0.009398540481925,-0.038355261087418,0.100626051425934,-0.050633851438761,-0.002450528554618,-0.074276752769947,0.028736483305693,-0.007823309861124,0.064566507935524,0.024016099050641,0.217601597309113,-0.000404942315072,0.114682346582413,-0.057811841368675));
res += mul(Get(s2,dx,dy), float4x4(0.025247199460864,0.027756350114942,0.026883784681559,-0.029556080698967,0.006725382059813,-0.031514193862677,-0.040912982076406,-0.008295623585582,0.066116787493229,-0.006403252948076,0.062456145882607,-0.063125438988209,0.015071124769747,0.049115601927042,0.082558393478394,-0.060269206762314));
res += mul(Get(s3,-dx,-dy), float4x4(0.033376533538103,-0.061383880674839,0.005755306221545,0.025518245995045,-0.075315639376640,0.061500512063503,0.035490512847900,0.037182781845331,0.004475615452975,0.062036298215389,-0.023182604461908,0.158682689070702,-0.003593864850700,0.090610630810261,-0.040957823395729,0.010650714859366));
res += mul(Get(s3,-dx,0), float4x4(0.053370486944914,0.009514131583273,0.114591866731644,0.004723721649498,-0.036292828619480,0.135244622826576,-0.055319294333458,-0.087622828781605,-0.093662470579147,0.035833504050970,0.040561839938164,0.013404292054474,0.004249029327184,0.080398976802826,-0.056312389671803,0.065482571721077));
res += mul(Get(s3,-dx,dy), float4x4(-0.045885022729635,-0.012792186811566,0.041160821914673,0.034618519246578,0.097821705043316,0.091590963304043,-0.084160670638084,-0.059223465621471,-0.151809468865395,0.037777185440063,0.034586809575558,-0.055498100817204,-0.015406109392643,0.079698540270329,-0.022805826738477,-0.069210827350616));
res += mul(Get(s3,0,-dy), float4x4(-0.099716424942017,-0.039994966238737,-0.014239601790905,0.097158066928387,0.051959298551083,0.040263835340738,-0.030331611633301,-0.033324711024761,0.125092744827271,-0.053331989794970,0.115828320384026,-0.019495630636811,-0.027167867869139,0.050480935722589,-0.035301778465509,0.011427973397076));
res += mul(Get(s3,0,0), float4x4(-0.009661887772381,-0.006306447554380,0.028495412319899,-0.028678543865681,-0.025543583557010,0.026265168562531,-0.128443628549576,-0.041565991938114,-0.008555881679058,-0.048031922429800,0.076346047222614,-0.082099139690399,-0.021419834345579,0.043996185064316,-0.035371225327253,0.045636493712664));
res += mul(Get(s3,0,dy), float4x4(0.126912683248520,-0.019152650609612,0.013320102356374,-0.118832595646381,0.089670948684216,-0.033433958888054,-0.011109880171716,0.008087165653706,-0.150576442480087,-0.004710899200290,0.075484439730644,-0.097602114081383,-0.040343008935452,-0.004977641161531,-0.033879090100527,0.030294066295028));
res += mul(Get(s3,dx,-dy), float4x4(-0.066155426204205,-0.023563828319311,-0.047744151204824,0.009236507117748,-0.168929621577263,-0.051681201905012,-0.003358387388289,-0.076101124286652,0.081686615943909,-0.074421174824238,-0.025426372885704,0.110170423984528,0.070413142442703,0.013875121250749,0.014740092679858,-0.021814662963152));
res += mul(Get(s3,dx,0), float4x4(-0.085581049323082,0.012051724828780,0.005551353562623,0.040921967476606,-0.011906216852367,-0.062369696795940,-0.043090954422951,0.086362652480602,0.154080495238304,-0.054758138954639,-0.011839799582958,0.122133284807205,0.020863650366664,0.018825624138117,-0.094582773745060,0.005591540597379));
res += mul(Get(s3,dx,dy), float4x4(-0.010810649953783,-0.006231651641428,0.018143475055695,0.055296488106251,0.029213169589639,-0.060607936233282,0.089267686009407,0.251705646514893,0.008516718633473,0.013762586750090,0.050500769168139,-0.000890153227374,-0.054938532412052,0.036872874945402,-0.016035467386246,-0.034039445221424));
return max(float4(0,0,0,0), res);
}