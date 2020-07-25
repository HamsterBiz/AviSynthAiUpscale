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
res += mul(Get(s0,-dx,-dy), float4x4(0.003882266813889,-0.034389384090900,-0.021197423338890,-0.010929231531918,-0.016749819740653,-0.002256612526253,-0.016918387264013,0.028375778347254,0.011924483813345,0.035928636789322,-0.013897571712732,-0.001250520464964,0.025941083207726,0.023983152583241,0.003727220697328,0.006258087698370));
res += mul(Get(s0,-dx,0), float4x4(-0.015988627448678,-0.025998858734965,0.041457470506430,0.008991963230073,0.012516518123448,-0.020453970879316,-0.000862146669533,-0.022347258403897,0.006277218461037,0.006440853234380,0.006639986298978,-0.015214988030493,0.002603495493531,0.024970510974526,0.008539568632841,0.000782188144512));
res += mul(Get(s0,-dx,dy), float4x4(0.007700956892222,0.021580858156085,0.001448464696296,0.014724168926477,0.009569245390594,-0.008966527879238,-0.005979209672660,0.002944188192487,0.020675025880337,0.006327518727630,0.000218173852772,0.021186796948314,0.009472697973251,-0.032791715115309,-0.006714042276144,-0.013107346370816));
res += mul(Get(s0,0,-dy), float4x4(-0.003319122130051,0.031618770211935,0.019089447334409,-0.023691514506936,0.008371391333640,-0.013222505338490,-0.008010069839656,-0.033062070608139,0.000233359547565,0.024370003491640,-0.025024613365531,-0.013311302289367,0.010024987161160,-0.008670425973833,0.028721923008561,-0.023618802428246));
res += mul(Get(s0,0,0), float4x4(0.007520633284003,-0.017770357429981,0.026048965752125,0.029122289270163,0.008640851825476,0.006417321972549,0.009961328469217,-0.008917968720198,0.029682319611311,0.042946387082338,-0.043162781745195,0.013373064808547,-0.039117749780416,-0.023139709606767,-0.012275446206331,-0.003849872155115));
res += mul(Get(s0,0,dy), float4x4(0.018189668655396,-0.005974176339805,-0.009211209602654,-0.021022906526923,-0.018802363425493,-0.003575511742383,0.007233279291540,0.042824540287256,0.014123047702014,0.011422737501562,0.014757706783712,0.023826029151678,-0.028496535494924,0.015188410878181,0.020526025444269,0.007187947165221));
res += mul(Get(s0,dx,-dy), float4x4(0.001402499969117,0.014709580689669,-0.009636252187192,-0.002839902183041,-0.024117667227983,0.004959983285517,0.043285720050335,-0.036295760422945,0.002554063452408,0.007901774719357,-0.005931208375841,-0.003467351663858,0.025750551372766,-0.007944941520691,0.000418950163294,0.027797380462289));
res += mul(Get(s0,dx,0), float4x4(0.032359164208174,-0.032760955393314,0.016228498890996,-0.012015763670206,0.004063516389579,0.025326784700155,0.003904301906005,0.011045016348362,0.009956975467503,0.016981583088636,0.010334739461541,0.001788501162082,-0.023296708241105,-0.013482000678778,-0.002275348640978,-0.011762735433877));
res += mul(Get(s0,dx,dy), float4x4(0.012547145597637,-0.025679966434836,-0.029293870553374,-0.003605395555496,0.016672475263476,0.017970247194171,0.020042333751917,-0.015498447231948,0.002583983819932,0.017763681709766,0.028084466233850,0.024227840825915,0.003520501079038,0.020145993679762,-0.017215991392732,-0.002191660925746));
res += mul(Get(s1,-dx,-dy), float4x4(0.009898858144879,0.020454600453377,-0.004514930769801,-0.000784095609561,-0.013420784845948,0.048225682228804,-0.015582793392241,-0.011929261498153,0.065403059124947,0.004317528568208,-0.007479493040591,0.018408583477139,-0.000789013924077,-0.033159449696541,0.020071560516953,-0.018793400377035));
res += mul(Get(s1,-dx,0), float4x4(0.031118649989367,-0.034742470830679,-0.023139337077737,-0.013366563245654,0.007014876231551,0.062504552304745,0.033138453960419,-0.036585874855518,0.025906953960657,0.009668982587755,-0.002410775981843,0.002335200551897,0.003060534829274,-0.016098711639643,0.005396565422416,0.002164158737287));
res += mul(Get(s1,-dx,dy), float4x4(-0.006207695230842,-0.008232676424086,-0.000008191314919,-0.004979248624295,-0.024315945804119,-0.013980385847390,0.027785416692495,0.037710074335337,0.010302207432687,0.005382718052715,0.029170649126172,0.051939122378826,-0.010381134226918,0.018843568861485,-0.004227275028825,0.001726778806187));
res += mul(Get(s1,0,-dy), float4x4(0.004956232849509,0.034830193966627,0.040071848779917,-0.025186393409967,0.017391283065081,-0.003225193358958,0.006430208217353,0.037780836224556,-0.002502616029233,0.007887563668191,0.031705956906080,0.011184452101588,0.023257492110133,-0.015304905362427,-0.000848294643220,-0.012012931518257));
res += mul(Get(s1,0,0), float4x4(0.000731535139494,-0.034359563142061,-0.018030727282166,0.021415429189801,-0.024993496015668,0.000760068709496,0.000708315928932,-0.033174306154251,-0.024590000510216,0.010070258751512,-0.006567435804754,-0.005586912855506,0.006373595446348,0.009039546363056,-0.016260510310531,0.019507635384798));
res += mul(Get(s1,0,dy), float4x4(-0.005225379019976,0.018528826534748,-0.014030544087291,-0.012432368472219,0.008121590130031,-0.016713054850698,0.014858762733638,0.019924091175199,0.004600762855262,0.020889386534691,0.005887520499527,0.010785679332912,-0.000852989731357,0.008510375395417,0.006239611655474,-0.001075736712664));
res += mul(Get(s1,dx,-dy), float4x4(-0.013598888181150,0.049677859991789,0.035847138613462,-0.014780930243433,-0.000815383216832,0.008773608133197,0.018248610198498,0.032525680959225,-0.004463952500373,0.017987266182899,0.014060669578612,0.015857137739658,0.029802950099111,0.003650355152786,-0.003005758859217,-0.006710414774716));
res += mul(Get(s1,dx,0), float4x4(0.049360934644938,-0.016988562420011,0.015843583270907,0.024422870948911,-0.012869034893811,-0.009931417182088,0.023012619465590,-0.023892469704151,0.025642156600952,-0.012195290066302,-0.008268754929304,0.019899616017938,0.004915695637465,-0.011663014069200,0.004695667885244,0.003435855964199));
res += mul(Get(s1,dx,dy), float4x4(-0.011718750931323,0.008955771103501,0.011504539288580,-0.040711678564548,-0.026876686140895,-0.022465631365776,0.019971292465925,0.056627273559570,-0.005225419066846,0.006433236412704,0.021817810833454,0.019791286438704,-0.003666358534247,0.019716689363122,0.008417377248406,-0.011504510417581));
res += mul(Get(s2,-dx,-dy), float4x4(0.012789375148714,-0.015358676202595,-0.049698024988174,-0.004009762778878,-0.007643879391253,0.018739756196737,-0.056360028684139,0.023184193298221,0.000083726219600,-0.004206594079733,0.025962971150875,0.008758899755776,0.033660847693682,-0.021318143233657,0.013196660205722,-0.012148261070251));
res += mul(Get(s2,-dx,0), float4x4(0.023173481225967,0.003370968392119,-0.022417897358537,-0.017988594248891,0.002446989063174,-0.017468836158514,0.010018968954682,-0.010026560164988,0.002968069631606,0.014125079847872,0.005494738928974,0.006585227325559,0.034977506846189,-0.014544322155416,-0.010779928416014,0.022551424801350));
res += mul(Get(s2,-dx,dy), float4x4(-0.019802480936050,-0.026887089014053,-0.008116669952869,0.030534908175468,0.002456606365740,0.006443233229220,0.021167704835534,0.009733134880662,-0.021210754290223,0.016858151182532,-0.023211972787976,-0.000144420060678,-0.008466534316540,0.048538666218519,-0.013885072432458,0.010331439785659));
res += mul(Get(s2,0,-dy), float4x4(-0.008165190927684,0.018882844597101,0.029492262750864,-0.001613685162738,0.007926560938358,-0.003953753039241,-0.008867541328073,-0.011231125332415,0.044769257307053,-0.002851360244676,0.046666104346514,-0.015321661718190,-0.014181785285473,-0.001311187748797,0.007319202180952,0.030144622549415));
res += mul(Get(s2,0,0), float4x4(-0.011917062103748,-0.009259135462344,-0.019554320722818,0.015834327787161,0.048397459089756,0.013806085102260,-0.005961141083390,0.011528236791492,-0.013395033776760,-0.009913799352944,0.001232982962392,0.004546716343611,0.010377167724073,0.001499169040471,-0.004180142655969,-0.004110982641578));
res += mul(Get(s2,0,dy), float4x4(-0.006268518976867,0.032287884503603,0.030934102833271,0.025471359491348,-0.005379489157349,0.027296463027596,-0.023828770965338,0.013472815044224,0.038671314716339,0.040670424699783,0.009164777584374,-0.000190011938685,0.001663977163844,0.018368011340499,-0.003655358450487,-0.019185023382306));
res += mul(Get(s2,dx,-dy), float4x4(-0.036336928606033,0.003892648499459,0.011054919101298,-0.022219054400921,-0.026413064450026,0.004454362671822,0.012895002961159,-0.020897068083286,0.028625667095184,0.035721659660339,0.037006571888924,0.005091400817037,-0.000134293062729,0.014523215591908,-0.011247469112277,0.000980010954663));
res += mul(Get(s2,dx,0), float4x4(0.037133317440748,-0.030869746580720,-0.012298834510148,0.013411385938525,-0.039357367902994,0.023695394396782,0.023738007992506,0.010506503283978,-0.009946656413376,-0.004857146646827,0.003914276137948,0.032636053860188,-0.018258705735207,-0.008446036837995,0.010462395846844,0.010579166933894));
res += mul(Get(s2,dx,dy), float4x4(-0.001749516231939,0.012669402174652,0.006480896845460,0.000114918169857,0.018238324671984,0.010530675761402,-0.026465285569429,-0.020541828125715,0.007035841699690,0.030397811904550,-0.009225109592080,-0.008613242767751,-0.000500256661326,0.018136603757739,0.006235947832465,0.004437420517206));
res += mul(Get(s3,-dx,-dy), float4x4(-0.016681544482708,0.014064848423004,-0.013330162502825,0.045900285243988,0.017358101904392,0.018068978562951,0.012026499956846,0.039954755455256,0.037702120840549,-0.025364443659782,-0.004497027955949,-0.001527054351754,-0.009074880741537,-0.008794202469289,-0.037948906421661,0.006971792317927));
res += mul(Get(s3,-dx,0), float4x4(-0.018071807920933,0.027135401964188,-0.010340970009565,-0.013112417422235,-0.003187601920217,0.014415213838220,0.015887646004558,-0.008536194451153,-0.004285134840757,-0.026839401572943,0.025043586269021,-0.019639607518911,-0.000055602635257,0.009908941574395,-0.024119775742292,-0.018576705828309));
res += mul(Get(s3,-dx,dy), float4x4(-0.008439839817584,-0.017913535237312,-0.025339290499687,0.041015125811100,0.019193330779672,0.008538329042494,-0.009517236612737,-0.002101456513628,0.013089134357870,0.020330833271146,-0.045750301331282,0.023193713277578,0.003910619299859,-0.004556282889098,-0.015763951465487,-0.013777852989733));
res += mul(Get(s3,0,-dy), float4x4(0.033657666295767,-0.012963865883648,0.013348854146898,0.011456966400146,-0.017756260931492,0.027781780809164,-0.016360159963369,0.022538101300597,-0.016687676310539,-0.010235469788313,0.017744766548276,-0.008735006675124,0.009150171652436,0.006925144698471,0.014301470480859,-0.011187279596925));
res += mul(Get(s3,0,0), float4x4(-0.002959243487567,-0.017530295997858,0.002855516970158,0.000266108167125,-0.021357312798500,0.011100943200290,0.014402377419174,0.001828935928643,0.011746711097658,0.017548708245158,0.000510635378305,-0.005217772442847,0.015151493251324,-0.008725286461413,-0.031696304678917,0.001993831479922));
res += mul(Get(s3,0,dy), float4x4(0.016756704077125,-0.006811441387981,-0.023905510082841,0.036335796117783,0.008812372572720,-0.002149929059669,-0.001135279191658,0.006751378998160,0.021133206784725,-0.035555306822062,-0.015476993285120,-0.030513199046254,-0.012074351310730,0.033467192202806,0.014033591374755,-0.009709508158267));
res += mul(Get(s3,dx,-dy), float4x4(0.000245568138780,-0.019335078075528,-0.021517850458622,0.023531755432487,-0.013759652152658,0.016255104914308,-0.001234766328707,-0.016182547435164,0.011237038299441,0.033438332378864,0.008209155872464,0.027194220572710,-0.022247459739447,-0.004888747353107,0.031172553077340,0.029836237430573));
res += mul(Get(s3,dx,0), float4x4(-0.028821758925915,0.008623415604234,-0.021149270236492,-0.004266556818038,0.015150747261941,0.010321008972824,0.006877547129989,0.044208992272615,-0.005872003268450,-0.010886562988162,-0.019090956076980,-0.000094260329206,0.008237833157182,0.000352006434696,-0.030697021633387,0.007291244808584));
res += mul(Get(s3,dx,dy), float4x4(0.001567616476677,0.043069165199995,-0.006756169721484,-0.009971154853702,0.025246901437640,0.027047956362367,-0.024803033098578,0.014091569930315,0.000725640216842,0.006517977453768,-0.032591462135315,0.024854093790054,0.018084770068526,0.009245736524463,-0.005438408814371,-0.029986798763275));
return max(float4(0,0,0,0), res);
}