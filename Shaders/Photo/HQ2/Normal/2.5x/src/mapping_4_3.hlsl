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
res += mul(Get(s0,-dx,-dy), float4x4(-0.002410031855106,0.062898501753807,-0.019127372652292,-0.069100923836231,-0.040186949074268,0.034526720643044,0.010083912871778,0.022367404773831,-0.090441457927227,-0.001607727026567,-0.025946481153369,0.028824403882027,-0.010539659298956,-0.015747809782624,0.003203674685210,-0.049538593739271));
res += mul(Get(s0,-dx,0), float4x4(-0.049275573343039,-0.012947885319591,0.019986962899566,-0.066703185439110,-0.000249168806477,-0.044931299984455,0.004899668041617,-0.004528971854597,-0.054868441075087,0.015813570469618,-0.052863191813231,-0.041158776730299,-0.011295196600258,-0.023704133927822,-0.047244533896446,-0.010980715043843));
res += mul(Get(s0,-dx,dy), float4x4(0.059410441666842,-0.056137707084417,0.045872751623392,0.077339857816696,0.019077133387327,-0.052047535777092,0.017873531207442,-0.064121104776859,0.062981285154819,-0.018034568056464,-0.024576777592301,0.030745059251785,-0.013596987351775,-0.015676504001021,-0.039980866014957,0.013373550958931));
res += mul(Get(s0,0,-dy), float4x4(-0.022221429273486,0.021894656121731,-0.030833978205919,0.023021552711725,-0.003474081633613,0.044245161116123,0.003468668786809,0.008253462612629,-0.058665305376053,0.060851112008095,0.023526664823294,0.030249539762735,0.043932199478149,0.023258946835995,-0.030748853459954,-0.045643184334040));
res += mul(Get(s0,0,0), float4x4(0.058603912591934,-0.032502043992281,-0.030758362263441,-0.054798938333988,0.015686143189669,-0.036602243781090,0.013147459365427,-0.028800351545215,-0.051399298012257,0.029615279287100,-0.025984821841121,0.005372010637075,0.054187022149563,0.001435813726857,-0.059739951044321,-0.030823975801468));
res += mul(Get(s0,0,dy), float4x4(0.166455730795860,-0.055737297981977,0.022696822881699,0.082686714828014,0.000887938542292,-0.064419403672218,0.004964723251760,-0.036831405013800,0.013389159925282,-0.047033619135618,-0.046898603439331,0.021686706691980,0.023755664005876,-0.019384324550629,-0.003515305463225,0.007799044251442));
res += mul(Get(s0,dx,-dy), float4x4(-0.032494954764843,-0.037870869040489,0.024751175194979,0.025641484186053,-0.014664760790765,0.064002946019173,0.001328191836365,-0.005666012875736,0.078473605215549,0.015422264114022,-0.004656900651753,0.052563216537237,0.013044492341578,-0.009956433437765,-0.018182771280408,0.007811306510121));
res += mul(Get(s0,dx,0), float4x4(0.033103674650192,-0.028136476874352,-0.035608813166618,0.051478169858456,-0.004926946479827,0.002408659085631,-0.009053777903318,-0.012343728914857,0.060817223042250,0.051152616739273,-0.037715844810009,0.057509426027536,0.094656459987164,0.019709693267941,0.023522889241576,-0.005793263670057));
res += mul(Get(s0,dx,dy), float4x4(0.027287337929010,-0.069045074284077,0.048591714352369,0.052957363426685,0.026010243222117,-0.071899406611919,0.039653941988945,-0.019360549747944,0.007058630697429,-0.006488310638815,-0.032484509050846,0.024711655452847,0.084490254521370,0.025711856782436,-0.019586822018027,0.054710831493139));
res += mul(Get(s1,-dx,-dy), float4x4(0.045958284288645,0.015783075243235,0.089051753282547,0.023396985605359,-0.028867408633232,0.029395952820778,-0.022026173770428,0.009894652292132,0.021282289177179,-0.043816164135933,-0.013911998830736,0.057666882872581,0.046457730233669,-0.034897413104773,0.001370073878206,-0.026943216100335));
res += mul(Get(s1,-dx,0), float4x4(-0.037398289889097,0.023021070286632,0.011920684017241,-0.030420452356339,-0.057234358042479,0.029259735718369,0.003443057416007,-0.059719976037741,0.052859801799059,-0.056566208600998,-0.028036464005709,0.019098019227386,0.044783025979996,0.001965467585251,-0.015541665256023,0.021837947890162));
res += mul(Get(s1,-dx,dy), float4x4(0.003306440310553,0.021254878491163,-0.041160326451063,-0.063078723847866,-0.008869199082255,0.024846408516169,0.010524325072765,-0.047775764018297,0.035022728145123,-0.046975411474705,0.008863464929163,-0.038343906402588,0.065402470529079,0.029288094490767,-0.062053058296442,0.037026498466730));
res += mul(Get(s1,0,-dy), float4x4(0.084933452308178,0.025815278291702,0.036069270223379,0.023217601701617,-0.000929313711822,0.004175784997642,-0.039256617426872,-0.071471512317657,0.024540800601244,-0.073697902262211,-0.018609507009387,0.018503643572330,0.085020370781422,-0.035533253103495,0.005703489296138,-0.055410988628864));
res += mul(Get(s1,0,0), float4x4(0.037420660257339,-0.001455199904740,0.002601967891678,-0.058867227286100,-0.024176247417927,-0.012872942723334,0.047877460718155,-0.087625756859779,0.010908595286310,-0.030179910361767,-0.060598351061344,-0.022511167451739,0.072493553161621,-0.019192719832063,0.091908752918243,0.031073642894626));
res += mul(Get(s1,0,dy), float4x4(-0.057002473622561,-0.023477299138904,-0.022214416414499,-0.065238110721111,-0.060169458389282,-0.050638835877180,0.049225095659494,-0.031379442662001,0.047072824090719,-0.040316578000784,-0.030800048261881,-0.039775937795639,0.017600303515792,0.069721862673759,-0.043532237410545,0.057560492306948));
res += mul(Get(s1,dx,-dy), float4x4(-0.000814683444332,0.025987779721618,0.020917026326060,-0.018655465915799,-0.077094621956348,-0.022157682105899,-0.045045856386423,-0.047588482499123,0.010537561960518,-0.053772181272507,-0.043678723275661,-0.000325161148794,0.032369736582041,0.021144829690456,0.024673733860254,-0.048409014940262));
res += mul(Get(s1,dx,0), float4x4(-0.027680376544595,-0.026796707883477,0.002420817734674,-0.106378823518753,-0.085443817079067,-0.051833201199770,0.033766563981771,-0.056277304887772,-0.017021922394633,0.007876685820520,-0.049327198415995,0.002207318786532,0.015171037055552,-0.077911280095577,0.081096842885017,-0.012638203799725));
res += mul(Get(s1,dx,dy), float4x4(-0.011454112827778,-0.050614330917597,-0.060461901128292,-0.134488299489021,-0.031664542853832,0.009276782162488,-0.023318555206060,0.001942533999681,-0.025618841871619,0.005579491611570,0.017409423366189,-0.037089433521032,-0.001184886903502,-0.036042463034391,0.019617859274149,-0.012161571532488));
res += mul(Get(s2,-dx,-dy), float4x4(-0.044755563139915,-0.056729961186647,-0.037514645606279,0.053988337516785,0.068658709526062,-0.055004477500916,0.034346513450146,0.017771881073713,0.080759815871716,-0.039160266518593,-0.020425016060472,-0.025516770780087,0.051439195871353,0.074609145522118,-0.002196889603510,-0.045355573296547));
res += mul(Get(s2,-dx,0), float4x4(0.032896105200052,-0.078123457729816,-0.028983499854803,-0.022580990567803,-0.029166325926781,-0.056166969239712,0.072876974940300,0.018156142905354,0.099945873022079,0.014076515100896,0.017031621187925,-0.017591202631593,0.045546468347311,0.058767117559910,-0.042819984257221,-0.104591473937035));
res += mul(Get(s2,-dx,dy), float4x4(-0.013238557614386,-0.011477647349238,0.052754435688257,0.035888906568289,-0.013959648087621,0.017827739939094,-0.001871220301837,0.019631110131741,-0.096055798232555,-0.002374721923843,-0.016320854425430,0.087610147893429,0.121487580239773,0.036142896860838,0.041205350309610,-0.047913044691086));
res += mul(Get(s2,0,-dy), float4x4(0.060800347477198,0.059688072651625,-0.007142369169742,0.041008614003658,0.053589411079884,-0.013378068804741,-0.031357508152723,-0.019953241571784,0.029026532545686,-0.029983976855874,-0.083205014467239,-0.101303540170193,0.075385324656963,0.064759321510792,0.014415242709219,-0.017181254923344));
res += mul(Get(s2,0,0), float4x4(0.072243079543114,-0.026939040049911,-0.000883955683094,-0.039624676108360,0.007453809957951,-0.066019877791405,0.039536088705063,-0.022434908896685,0.006405636202544,-0.140569120645523,0.081427358090878,0.008546383120120,0.054511051625013,0.069920107722282,0.002958144526929,-0.049012821167707));
res += mul(Get(s2,0,dy), float4x4(-0.052267566323280,-0.076823778450489,0.095331735908985,-0.007076458074152,0.014071381650865,0.018032185733318,0.054867006838322,0.009434516541660,-0.062171094119549,0.117048233747482,0.076500706374645,0.038290075957775,0.038148269057274,-0.006238146685064,-0.024050420150161,-0.051283739507198));
res += mul(Get(s2,dx,-dy), float4x4(0.074129775166512,0.064747847616673,0.012593998573720,0.046206418424845,0.007536805700511,0.004459202289581,-0.009514215402305,0.013604861684144,-0.084014147520065,0.044863700866699,-0.064788982272148,0.007095579989254,0.060257166624069,0.021597266197205,0.005523813422769,-0.009135338477790));
res += mul(Get(s2,dx,0), float4x4(-0.046761095523834,0.037781294435263,-0.034771837294102,0.006657734047621,-0.012929284013808,-0.006284004542977,0.014191050082445,-0.010212983936071,-0.103859320282936,-0.032914768904448,-0.003387384116650,-0.080069757997990,0.072681657969952,0.145553484559059,0.026291538029909,-0.030256172642112));
res += mul(Get(s2,dx,dy), float4x4(0.001460423460230,-0.041632480919361,0.011506553739309,-0.009178811684251,0.068333551287651,0.008956851437688,-0.015248062089086,0.044203653931618,0.050788305699825,0.014804077334702,0.091849930584431,0.026634518057108,0.076094463467598,0.100147590041161,-0.019084427505732,0.013010949827731));
res += mul(Get(s3,-dx,-dy), float4x4(0.086174875497818,-0.027270190417767,-0.061012096703053,0.058333422988653,-0.036478858441114,-0.015166301280260,0.042590551078320,-0.030405048280954,-0.070111289620399,-0.056928329169750,0.013265448622406,0.005119203124195,-0.008305225521326,0.031879991292953,-0.017321450635791,0.043853655457497));
res += mul(Get(s3,-dx,0), float4x4(0.033174470067024,0.067812502384186,-0.008966940455139,0.023537518456578,-0.044079586863518,-0.010383737273514,0.026115696877241,-0.049124404788017,-0.105729714035988,0.073760017752647,-0.026738414540887,0.004566687159240,-0.057078100740910,0.064259275794029,-0.041161991655827,0.047501385211945));
res += mul(Get(s3,-dx,dy), float4x4(0.029950473457575,0.117047846317291,-0.026592833921313,-0.010478786192834,0.024026416242123,0.000905002001673,0.002897230908275,-0.003550582099706,-0.049430504441261,0.040505237877369,-0.027231808751822,0.012450684793293,0.034893706440926,0.088324628770351,-0.026226835325360,0.013926011510193));
res += mul(Get(s3,0,-dy), float4x4(0.118558548390865,-0.139252752065659,-0.070329830050468,0.000497753848322,0.008034301921725,0.002905732486397,0.035318665206432,-0.006974363699555,-0.087223581969738,0.000602998537943,0.014323190785944,-0.021742666140199,0.033690776675940,0.038093522191048,-0.020954048261046,0.092583917081356));
res += mul(Get(s3,0,0), float4x4(-0.025168756023049,-0.163012728095055,-0.014405881054699,0.012837871909142,0.010433826595545,0.031231431290507,0.145569577813148,-0.001535526709631,-0.113949075341225,0.051328737288713,-0.026344247162342,0.004243431612849,0.008478059433401,0.168474853038788,-0.078500725328922,0.095610745251179));
res += mul(Get(s3,0,dy), float4x4(-0.054279170930386,0.077423296868801,-0.090725123882294,0.013574841432273,0.039837513118982,0.056060738861561,-0.003428553463891,0.014364450238645,-0.065884388983250,-0.009116652421653,-0.009622965008020,0.114067509770393,0.045664086937904,0.109264023602009,-0.023593828082085,0.070554815232754));
res += mul(Get(s3,dx,-dy), float4x4(-0.109953947365284,-0.134996220469475,-0.033943466842175,-0.003847504267469,0.013437596149743,0.022137558087707,0.033914890140295,-0.007453661877662,-0.055201943963766,-0.012651272118092,0.002043133601546,0.023463096469641,0.020354535430670,-0.029307248070836,-0.002564938738942,-0.016210008412600));
res += mul(Get(s3,dx,0), float4x4(-0.040342114865780,-0.089778855443001,0.005234817508608,-0.027638453990221,-0.015659617260098,0.021725730970502,0.038257539272308,0.026555484160781,-0.051148619502783,0.057074844837189,-0.038310296833515,0.112518556416035,0.005460871383548,-0.009519826620817,-0.033232647925615,0.011124391108751));
res += mul(Get(s3,dx,dy), float4x4(0.001621935516596,0.115610957145691,-0.091364629566669,0.032609164714813,-0.018449470400810,-0.043195579200983,0.007166760973632,0.016027990728617,-0.064672000706196,0.070846274495125,0.011464768089354,0.096294447779655,0.065586268901825,0.022836765274405,-0.029394239187241,0.042012888938189));
return max(float4(0,0,0,0), res);
}