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
res += mul(Get(s0,-dx,-dy), float4x4(-0.001432852353901,-0.035720441490412,-0.047476816922426,-0.103642679750919,0.004697693977505,0.003339611226693,0.007172410842031,0.039180777966976,0.044896025210619,0.036346603184938,0.051809851080179,0.005212814081460,0.012139032594860,0.023781979456544,0.004863377194852,-0.001441254513338));
res += mul(Get(s0,-dx,0), float4x4(-0.016810538247228,-0.028680715709925,-0.054712206125259,-0.033669017255306,-0.015983670949936,0.048314616084099,0.039487924426794,0.115067161619663,0.023507140576839,-0.027456749230623,0.048401631414890,0.005772846285254,0.042594689875841,0.024327279999852,0.065198354423046,0.034959267824888));
res += mul(Get(s0,-dx,dy), float4x4(-0.044265065342188,0.032784026116133,-0.050581790506840,-0.005136873573065,-0.014549094252288,0.004359924700111,0.070420734584332,0.097554683685303,-0.055303227156401,0.033474553376436,-0.085789777338505,-0.055321559309959,-0.031821858137846,-0.002881306689233,0.015214573591948,0.083173535764217));
res += mul(Get(s0,0,-dy), float4x4(-0.010876510292292,-0.118535473942757,0.030452392995358,-0.033724021166563,0.012430340051651,-0.017351105809212,-0.032783251255751,-0.009712235070765,0.021866230294108,0.106608912348747,0.002328950213268,0.016883775591850,0.017007200047374,0.033879902213812,-0.031350169330835,0.077716685831547));
res += mul(Get(s0,0,0), float4x4(0.017621537670493,-0.112507365643978,-0.040510669350624,0.050779376178980,0.012005251832306,0.028430091217160,0.001813497161493,-0.003445218782872,0.103880286216736,-0.095800518989563,0.127718850970268,0.011562453582883,0.010361056774855,0.034011077135801,-0.024220051243901,0.103929050266743));
res += mul(Get(s0,0,dy), float4x4(0.018134843558073,0.095479369163513,0.000785598647781,-0.033905278891325,-0.031910676509142,0.023387273773551,0.008125709369779,0.075392507016659,-0.079173825681210,0.058321211487055,0.047614552080631,-0.004110534209758,-0.005298365373164,-0.032293923199177,0.031472817063332,0.077222600579262));
res += mul(Get(s0,dx,-dy), float4x4(-0.054509937763214,-0.046489514410496,0.014550587162375,0.058252312242985,-0.038787409663200,-0.060667075216770,0.106420487165451,-0.049975287169218,0.034594643861055,0.049052290618420,-0.053231373429298,0.038480915129185,0.019692540168762,0.039850760251284,-0.013910944573581,0.080900244414806));
res += mul(Get(s0,dx,0), float4x4(-0.040280152112246,-0.025265548378229,-0.014610162004828,0.117597140371799,0.029869114980102,-0.082047328352928,-0.000542418390978,-0.051673602312803,0.021523466333747,0.018460674211383,0.019264135509729,-0.004974500276148,-0.019730562344193,0.043611764907837,0.005061614327133,0.080507852137089));
res += mul(Get(s0,dx,dy), float4x4(0.002565461676568,0.042270276695490,-0.052214249968529,-0.040170636028051,-0.015264916233718,0.027315156534314,0.013666349463165,-0.026872042566538,-0.050186567008495,0.073179788887501,0.007177523337305,0.015129195526242,-0.003597116796300,0.008177535608411,0.005206437781453,0.080517604947090));
res += mul(Get(s1,-dx,-dy), float4x4(-0.034593880176544,-0.112838469445705,0.033300269395113,-0.051147978752851,0.014985078945756,-0.107950925827026,-0.052916884422302,-0.091945990920067,-0.020325601100922,0.022460879758000,-0.062493275851011,-0.034668102860451,0.028096789494157,0.015798039734364,-0.041911855340004,0.024157535284758));
res += mul(Get(s1,-dx,0), float4x4(-0.082941681146622,-0.021741157397628,-0.081195905804634,-0.115956060588360,-0.008790190331638,-0.051442682743073,-0.058031897991896,0.019864775240421,-0.031620468944311,0.061018791049719,-0.021642128005624,-0.027262479066849,0.013697551563382,-0.025638259947300,0.011721772141755,0.050242662429810));
res += mul(Get(s1,-dx,dy), float4x4(0.038554523140192,-0.020371314138174,-0.095259800553322,-0.076794855296612,-0.001310357358307,-0.118590854108334,0.049434125423431,0.080244563519955,-0.062833525240421,0.018013002350926,-0.035193294286728,-0.052662059664726,-0.019330661743879,-0.050278287380934,-0.000503788469359,0.062471963465214));
res += mul(Get(s1,0,-dy), float4x4(0.022633116692305,-0.043128028512001,0.043497763574123,-0.084727369248867,0.039713393896818,-0.040473774075508,-0.000095623712696,-0.058703597635031,0.034122288227081,0.029784278944135,-0.057629410177469,-0.024844441562891,0.023285483941436,-0.003784183878452,-0.032550983130932,0.049475297331810));
res += mul(Get(s1,0,0), float4x4(-0.026553785428405,-0.042916674166918,0.180002361536026,-0.053677693009377,0.074414387345314,-0.071544736623764,-0.027526937425137,-0.031583447009325,-0.006681404076517,0.138264447450638,-0.016467064619064,-0.044836338609457,0.038935218006372,0.014024231582880,-0.047279622405767,-0.018131308257580));
res += mul(Get(s1,0,dy), float4x4(0.042766604572535,0.064053952693939,-0.002431417815387,-0.038483347743750,-0.036863703280687,0.026011692360044,-0.058651983737946,0.020439220592380,-0.073656812310219,0.007862216793001,-0.026177151128650,-0.052158281207085,-0.061480432748795,0.052573751658201,-0.011035430245101,-0.056434523314238));
res += mul(Get(s1,dx,-dy), float4x4(0.019612764939666,-0.049015205353498,-0.108613476157188,-0.018797429278493,0.041251473128796,0.000674358801916,-0.021403687074780,-0.101324230432510,0.026682445779443,-0.004512809216976,-0.012107960879803,-0.033851183950901,0.005932118277997,-0.023263178765774,-0.019955098628998,0.052638240158558));
res += mul(Get(s1,dx,0), float4x4(-0.002814952284098,-0.026074599474669,0.029719945043325,-0.127858862280846,0.046480461955070,0.014905652031302,0.012001711875200,-0.075386151671410,-0.012351946905255,0.073692731559277,-0.059613570570946,-0.045958738774061,0.026811871677637,-0.043811462819576,-0.062998123466969,-0.081920869648457));
res += mul(Get(s1,dx,dy), float4x4(0.009927127510309,-0.044464450329542,-0.042900141328573,-0.077431991696358,0.007093285676092,0.009339755401015,-0.041474867612123,-0.067246310412884,-0.039681188762188,0.001212163828313,-0.063552111387253,-0.053003009408712,-0.045642707496881,-0.006137050222605,-0.056822545826435,-0.097547762095928));
res += mul(Get(s2,-dx,-dy), float4x4(0.018378490582108,0.136537685990334,-0.022060377523303,-0.025467962026596,-0.004205025266856,0.000619629514404,-0.003491620533168,0.001221340848133,-0.006425971165299,-0.011955803260207,0.078435167670250,-0.020459182560444,-0.031474448740482,-0.032871592789888,-0.065245807170868,0.081852875649929));
res += mul(Get(s2,-dx,0), float4x4(0.008711238391697,0.111757032573223,0.005764038302004,0.009427488781512,0.003660389920697,-0.002564223483205,-0.000992581248283,0.000259704655036,0.006703699473292,0.046257369220257,0.147666350007057,-0.040402658283710,-0.008828490972519,-0.070379920303822,-0.100749440491199,0.105092689394951));
res += mul(Get(s2,-dx,dy), float4x4(0.003614621935412,0.073323592543602,0.003468946553767,-0.001731838798150,-0.001706002163701,-0.000823216512799,-0.004451552405953,0.005905041471124,-0.030638620257378,0.061585247516632,0.115749426186085,-0.030985571444035,-0.015473620966077,-0.074659168720245,-0.032085366547108,0.060386203229427));
res += mul(Get(s2,0,-dy), float4x4(0.027202798053622,0.127270400524139,-0.042096313089132,-0.030763365328312,0.003577119903639,0.008156012743711,-0.002257131272927,0.000281471700873,-0.010849976912141,0.013641537167132,-0.049123022705317,0.019773241132498,0.016455326229334,0.002977865282446,0.037673283368349,0.030157111585140));
res += mul(Get(s2,0,0), float4x4(-0.014186603017151,-0.017782237380743,-0.029072074219584,0.002545122057199,-0.002417372306809,0.010196289978921,0.006306906696409,-0.004622720647603,-0.000883050786797,0.058312531560659,-0.017521386966109,-0.034318562597036,-0.014682315289974,-0.028132544830441,-0.004526706412435,-0.051169011741877));
res += mul(Get(s2,0,dy), float4x4(0.023269595578313,-0.016063475981355,-0.022640461102128,0.036529589444399,-0.005884978454560,-0.006244241725653,-0.010513518005610,0.017554609104991,-0.042454205453396,0.061332918703556,0.093828491866589,-0.059584643691778,0.005048988386989,0.046383891254663,-0.101578004658222,-0.031139509752393));
res += mul(Get(s2,dx,-dy), float4x4(-0.011150171980262,0.100923791527748,-0.015502086840570,0.004891994874924,0.000532012374606,0.006126963067800,-0.007398924790323,-0.005702634342015,-0.025755187496543,0.060540579259396,0.018280221149325,0.035696674138308,-0.010417446494102,0.047550108283758,-0.040131978690624,-0.049749571830034));
res += mul(Get(s2,dx,0), float4x4(0.027799300849438,-0.000363809580449,-0.002055902499706,0.024090806022286,-0.003417918691412,0.004303716123104,0.003773301606998,-0.000101804660517,-0.011654422618449,-0.013328916393220,-0.005760210566223,0.045989096164703,-0.006573402322829,0.034493848681450,0.089547142386436,-0.110580720007420));
res += mul(Get(s2,dx,dy), float4x4(0.008679857477546,0.056444630026817,-0.002703211270273,0.007191029377282,-0.006135516334325,0.000897139310837,-0.003185775829479,0.026563623920083,-0.026313830167055,-0.002905187662691,0.059668928384781,-0.003784892382100,0.023353284224868,0.021561136469245,-0.025463515892625,-0.105360306799412));
res += mul(Get(s3,-dx,-dy), float4x4(0.038321476429701,0.026536222547293,-0.043956659734249,-0.098338216543198,0.011984497308731,-0.004464954603463,0.043204922229052,0.027860974892974,0.066859111189842,-0.028411084786057,0.034505870193243,0.031217109411955,0.047025851905346,-0.062234081327915,-0.014392202720046,-0.050180871039629));
res += mul(Get(s3,-dx,0), float4x4(0.039758462458849,0.049328479915857,0.028726579621434,-0.061080981045961,-0.016161387786269,-0.053667828440666,0.029946910217404,0.034273922443390,0.061658363789320,0.030343309044838,0.095095030963421,0.031239978969097,0.026336101815104,-0.086727812886238,-0.012405417859554,0.001197499688715));
res += mul(Get(s3,-dx,dy), float4x4(-0.016465255990624,0.081881769001484,-0.036540742963552,-0.067646592855453,-0.044875409454107,-0.006128553766757,-0.071337617933750,-0.048505816608667,0.001653318176977,0.040517337620258,0.123570531606674,-0.012706108391285,-0.009065598249435,-0.024671165272593,0.049152132123709,0.082552969455719));
res += mul(Get(s3,0,-dy), float4x4(0.020964695140719,-0.033032853156328,-0.025069504976273,0.001006166683510,0.010278074070811,-0.034302182495594,-0.048463065177202,0.025814017280936,0.063316233456135,-0.038432523608208,-0.030863942578435,0.062786489725113,0.036357566714287,-0.043495412915945,0.064247623085976,-0.034798335283995));
res += mul(Get(s3,0,0), float4x4(0.022696323692799,-0.031964756548405,-0.040042381733656,-0.002560962224379,-0.004560137167573,-0.026136592030525,0.074565224349499,-0.006290354300290,0.033189419656992,0.026107465848327,-0.008070104755461,-0.003333760891110,0.066497594118118,-0.028232613578439,-0.028325483202934,-0.024363839998841));
res += mul(Get(s3,0,dy), float4x4(0.029420217499137,0.008028597570956,0.029308736324310,-0.053277950733900,-0.062121987342834,-0.057358074933290,-0.037838395684958,-0.002142931101844,0.002636704128236,0.012962537817657,0.055916842073202,-0.070556804537773,-0.000940920552239,0.001784207415767,-0.012912876904011,0.065515518188477));
res += mul(Get(s3,dx,-dy), float4x4(0.017980337142944,-0.025502771139145,-0.016772398725152,0.061358809471130,0.008176245726645,-0.025476312264800,-0.045651879161596,0.090597048401833,0.009263565763831,0.015342323109508,-0.083225503563881,0.025499008595943,0.027474259957671,-0.001772833988070,0.047192282974720,-0.026425758376718));
res += mul(Get(s3,dx,0), float4x4(0.018549786880612,0.006950353272259,-0.035458382219076,0.049098163843155,-0.012241886928678,-0.052795894443989,-0.003643148113042,0.054376680403948,-0.010308672674000,-0.017784629017115,-0.016713442280889,0.036091029644012,0.022604549303651,-0.035204701125622,0.066178105771542,-0.039572130888700));
res += mul(Get(s3,dx,dy), float4x4(0.009264930151403,0.024131257086992,-0.019105520099401,-0.007717021275312,-0.053310580551624,-0.055110484361649,0.010759849101305,0.053803928196430,-0.009194620884955,-0.011903602629900,0.060003992170095,0.005403342191130,-0.027203524485230,-0.022800553590059,0.002083540894091,0.033497653901577));
return max(float4(0,0,0,0), res);
}