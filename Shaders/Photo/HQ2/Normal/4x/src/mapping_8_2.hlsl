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
res += mul(Get(s0,-dx,-dy), float4x4(0.057313002645969,0.058319158852100,-0.022672051563859,0.019278027117252,0.032029408961535,0.002063966356218,-0.049956113100052,0.043939013034105,0.001852431218140,0.040582172572613,0.031523935496807,0.051374092698097,0.011013740673661,0.046747945249081,-0.015742430463433,0.034623693674803));
res += mul(Get(s0,-dx,0), float4x4(-0.036849513649940,-0.045980814844370,0.055060345679522,0.040918271988630,0.024935401976109,0.084376789629459,-0.028868764638901,0.099164366722107,-0.015513627789915,0.021680448204279,0.018087718635798,0.000274859950878,0.041348498314619,0.037523444741964,-0.027711767703295,0.020641392096877));
res += mul(Get(s0,-dx,dy), float4x4(-0.066410228610039,0.012481772340834,0.019658973440528,-0.000396965537220,-0.036206003278494,0.035932984203100,-0.058925047516823,0.042007185518742,0.065312288701534,0.008935132995248,-0.056188371032476,-0.009009486064315,0.042091768234968,-0.009713828563690,-0.015725145116448,0.033644001930952));
res += mul(Get(s0,0,-dy), float4x4(0.068359054625034,0.058894570916891,-0.048277087509632,-0.059456940740347,-0.005563701502979,-0.032075725495815,-0.005461167544127,0.020426835864782,-0.050489459186792,0.003246239852160,-0.053542755544186,-0.028491299599409,-0.014780131168664,0.027179421856999,0.020546864718199,-0.047232694923878));
res += mul(Get(s0,0,0), float4x4(0.029917122796178,0.011187018826604,-0.020984098315239,-0.128574401140213,-0.003826601896435,0.010502926073968,-0.007369760423899,-0.063937231898308,-0.037173613905907,0.117861270904541,0.006700604688376,0.062306735664606,-0.049210008233786,-0.064991533756256,0.034525074064732,-0.053188804537058));
res += mul(Get(s0,0,dy), float4x4(-0.023778272792697,0.050256777554750,0.019781555980444,0.025106154382229,-0.025336205959320,-0.010998272337019,-0.042396131902933,-0.069310091435909,-0.093129217624664,0.027918139472604,-0.057314287871122,0.052339173853397,0.077452458441257,-0.005880945362151,0.007072329055518,0.020242001861334));
res += mul(Get(s0,dx,-dy), float4x4(0.143491417169571,-0.000294316472718,-0.020497964695096,-0.013177637942135,0.017497548833489,-0.053163547068834,-0.012128974311054,0.009355458430946,-0.009139821864665,0.066811613738537,-0.063712023198605,-0.040948901325464,0.064381487667561,0.041947357356548,0.011280951090157,-0.064435690641403));
res += mul(Get(s0,dx,0), float4x4(0.073638439178467,0.023381518200040,-0.003141572000459,-0.038401976227760,0.011870114132762,0.002372971968725,-0.016410844400525,-0.061697784811258,-0.038714893162251,0.035199262201786,-0.021450884640217,-0.134058579802513,-0.006117012817413,-0.001911932951771,0.019191257655621,-0.033409614115953));
res += mul(Get(s0,dx,dy), float4x4(0.015295096673071,0.038964010775089,-0.006217287853360,-0.043387912213802,0.044280663132668,-0.008203884586692,-0.025924030691385,-0.050121169537306,0.069216392934322,-0.007818846963346,-0.045878928154707,0.017600184306502,0.006527873221785,-0.013190211728215,-0.001965626142919,-0.035708136856556));
res += mul(Get(s1,-dx,-dy), float4x4(0.052774459123611,-0.041678901761770,-0.048613306134939,-0.053227022290230,0.024106493219733,0.006194520741701,-0.021755862981081,0.042503137141466,-0.044704377651215,0.024240085855126,-0.044831145554781,-0.009523821063340,0.003323097247630,-0.047396048903465,0.007671027444303,-0.041934583336115));
res += mul(Get(s1,-dx,0), float4x4(0.058887075632811,0.018748980015516,0.022979361936450,0.010223273187876,0.026784364134073,0.065753690898418,0.003292121458799,-0.028713647276163,0.045104756951332,0.035362817347050,-0.014956532046199,0.014657215215266,0.035250544548035,0.003613929962739,0.028756625950336,-0.063102245330811));
res += mul(Get(s1,-dx,dy), float4x4(0.031649027019739,0.046336032450199,0.018873827531934,0.021511964499950,-0.007411583792418,0.008098493330181,0.065281391143799,-0.080822601914406,0.056396700441837,0.018228499218822,-0.007860637269914,-0.002852747915313,-0.011642906814814,-0.030688291415572,0.031544100493193,-0.050117712467909));
res += mul(Get(s1,0,-dy), float4x4(-0.014825756661594,-0.042328566312790,0.069414384663105,0.087707884609699,-0.018770884722471,-0.031054081395268,-0.012358416803181,0.047358509153128,-0.031181124970317,0.035221759229898,-0.034853104501963,-0.057343866676092,0.016542784869671,-0.002125755883753,0.025974025949836,0.020075857639313));
res += mul(Get(s1,0,0), float4x4(0.044304542243481,0.061292566359043,0.006789869628847,0.076418399810791,0.002253571525216,0.001283035264350,-0.023400289937854,-0.002890932839364,0.000932605064008,0.075868792831898,-0.028181456029415,-0.030262539163232,0.000079460151028,-0.025771291926503,0.026573391631246,-0.029040133580565));
res += mul(Get(s1,0,dy), float4x4(0.019231747835875,0.012635191902518,0.029781220480800,0.025317370891571,0.026598803699017,0.055345140397549,0.018398357555270,-0.065111771225929,-0.019559064880013,0.015261137858033,0.031973809003830,-0.019568493589759,0.055667713284492,-0.011963821947575,0.032465711236000,-0.045858856290579));
res += mul(Get(s1,dx,-dy), float4x4(-0.013755653053522,-0.039929524064064,-0.043045718222857,0.106622077524662,-0.045227728784084,-0.042027700692415,0.023776823654771,0.026675751432776,-0.010695383884013,-0.021814096719027,-0.030126376077533,-0.026515606790781,-0.079814165830612,-0.033760946244001,0.089839130640030,0.094780243933201));
res += mul(Get(s1,dx,0), float4x4(0.013377652503550,0.004753188695759,-0.010764780454338,-0.058523446321487,-0.058313168585300,-0.032890237867832,0.038291614502668,0.044179357588291,-0.042083352804184,-0.000186703298823,-0.017015233635902,-0.042432487010956,-0.026428116485476,-0.040290825068951,0.112480886280537,0.167845323681831));
res += mul(Get(s1,dx,dy), float4x4(0.039783682674170,-0.009721161797643,0.001505248364992,0.031194794923067,-0.021000603213906,0.013714588247240,0.014384347014129,-0.049216270446777,0.018780369311571,0.008646182715893,0.042840987443924,0.045787110924721,0.010471739806235,-0.055264882743359,0.071909807622433,-0.011714243330061));
res += mul(Get(s2,-dx,-dy), float4x4(0.060912046581507,0.005941723007709,-0.015658555552363,0.080841809511185,-0.033419691026211,0.012383025139570,-0.016784930601716,0.003060715273023,-0.019603323191404,0.015148399397731,-0.039158735424280,-0.025736201554537,-0.003032993059605,-0.029923498630524,0.007751914206892,0.011153021827340));
res += mul(Get(s2,-dx,0), float4x4(-0.026106733828783,-0.016785796731710,0.027220947667956,0.038484543561935,0.000957183074206,-0.006639853585511,-0.023593474179506,-0.024716818705201,0.026236541569233,0.029246186837554,-0.024229489266872,-0.005059979856014,0.002251831348985,-0.021080648526549,-0.010578203946352,-0.030162461102009));
res += mul(Get(s2,-dx,dy), float4x4(-0.043879158794880,-0.042063798755407,-0.040287215262651,0.067776568233967,0.045711185783148,-0.026284949854016,-0.022060062736273,-0.018392002210021,-0.022487133741379,0.012069239281118,0.000402022415074,-0.038677699863911,0.033344306051731,-0.032666593790054,-0.018748959526420,-0.072091601788998));
res += mul(Get(s2,0,-dy), float4x4(-0.003758787177503,0.075099006295204,-0.000641165068373,0.031817413866520,-0.010484402999282,-0.037919312715530,-0.053866989910603,0.053905874490738,-0.056441806256771,-0.030523188412189,-0.025566114112735,0.040177185088396,0.005617235787213,-0.047860935330391,0.053091816604137,0.032059419900179));
res += mul(Get(s2,0,0), float4x4(-0.079807944595814,0.057506609708071,0.010962911881506,-0.005494912154973,0.016793241724372,0.014409454539418,-0.023625103756785,0.029197745025158,0.058737739920616,0.044391650706530,-0.028181808069348,-0.001840362907387,0.018938755616546,-0.007996846921742,-0.025695292279124,0.013477304950356));
res += mul(Get(s2,0,dy), float4x4(-0.021345363929868,-0.046572715044022,0.003407590789720,0.051126148551702,0.037897959351540,-0.007980248890817,-0.029133200645447,0.059226930141449,-0.002539213513955,0.051853664219379,-0.008571692742407,0.023323085159063,-0.025051623582840,-0.044670976698399,-0.033782668411732,-0.042052131146193));
res += mul(Get(s2,dx,-dy), float4x4(0.038385644555092,0.013735670596361,0.006665238644928,-0.031941715627909,-0.006870602723211,-0.036771401762962,-0.021922057494521,-0.021009581163526,-0.027953471988440,0.021129183471203,0.051257316023111,0.022587021812797,-0.017751431092620,-0.008688515052199,0.041006013751030,0.074238426983356));
res += mul(Get(s2,dx,0), float4x4(-0.055634438991547,0.033969581127167,-0.003777523990721,-0.030718659982085,-0.005816093180329,-0.023260012269020,0.040798544883728,-0.043977558612823,0.000338046869729,0.021324526518583,-0.000250883167610,0.005819468759000,0.012189094908535,-0.033430453389883,-0.014263736084104,-0.005235960707068));
res += mul(Get(s2,dx,dy), float4x4(-0.045302867889404,-0.000249496486504,0.003475608304143,-0.053485251963139,0.033315386623144,-0.058756981045008,0.022488223388791,-0.060556728392839,-0.007340307813138,-0.028515528887510,-0.018466426059604,0.005851767957211,-0.039601169526577,-0.068073444068432,-0.028820767998695,-0.020440714433789));
res += mul(Get(s3,-dx,-dy), float4x4(-0.019730638712645,0.047431986778975,-0.005612319335341,0.033273592591286,-0.002853401703760,-0.066463775932789,-0.027992667630315,-0.018706908449531,-0.014338777400553,0.016725657507777,0.038770820945501,0.025353401899338,-0.037856865674257,-0.062987379729748,0.046214509755373,0.052700027823448));
res += mul(Get(s3,-dx,0), float4x4(-0.015645729377866,0.033659152686596,-0.015705579891801,0.084380596876144,-0.037921238690615,0.003869585460052,-0.017016330733895,0.017011780291796,0.008005077019334,0.001663312898017,-0.005880914162844,0.032759040594101,0.017425373196602,-0.025844674557447,0.022471694275737,0.067109078168869));
res += mul(Get(s3,-dx,dy), float4x4(0.022926779463887,0.011634801514447,-0.001695154351182,0.152604073286057,-0.015223258174956,-0.032306868582964,0.012911168858409,-0.035337064415216,0.027881091460586,0.005126832053065,0.006200303789228,0.011833573691547,0.070617891848087,0.013283788226545,-0.022815372794867,-0.000896246754564));
res += mul(Get(s3,0,-dy), float4x4(0.028115641325712,0.058647532016039,0.021796187385917,-0.007442513946444,-0.031647998839617,-0.041591759771109,-0.032887849956751,-0.024008089676499,-0.049066044390202,0.020869882777333,0.060039602220058,0.005274231079966,-0.043012823909521,-0.078516036272049,-0.044980317354202,0.025112316012383));
res += mul(Get(s3,0,0), float4x4(-0.029784146696329,0.068670488893986,0.010632898658514,-0.034299861639738,-0.020656803622842,-0.005863872822374,-0.014747644774616,0.057449370622635,0.008717844262719,0.043772809207439,0.072408542037010,0.045932270586491,0.065831452608109,0.040463034063578,-0.029233992099762,0.070831030607224));
res += mul(Get(s3,0,dy), float4x4(-0.015656283125281,0.021743306890130,0.008987652137876,0.026067148894072,0.033856991678476,0.067185163497925,-0.004470123909414,0.074343219399452,0.039122302085161,0.027696143835783,0.045641642063856,0.025578493252397,0.018291851505637,-0.020467756316066,-0.021105863153934,0.073201388120651));
res += mul(Get(s3,dx,-dy), float4x4(0.117334850132465,0.037777297198772,-0.031695317476988,-0.075636409223080,-0.047269608825445,-0.062667943537235,-0.010206835344434,-0.071376331150532,-0.052069552242756,-0.008684157393873,-0.005343605764210,0.034222736954689,-0.069383345544338,-0.038777280598879,0.004429765045643,0.031074874103069));
res += mul(Get(s3,dx,0), float4x4(0.020425962284207,0.050461754202843,-0.039144799113274,-0.037934418767691,0.011750464327633,0.022674599662423,-0.012007858604193,-0.023540090769529,-0.019830923527479,0.090137466788292,-0.005357576534152,-0.020913409069180,-0.009247990325093,-0.032223016023636,0.013515977188945,-0.056330524384975));
res += mul(Get(s3,dx,dy), float4x4(-0.004102151375264,0.046662759035826,-0.037902116775513,-0.072969116270542,0.021855667233467,-0.023949831724167,-0.004215512890369,-0.013084407895803,0.015280470252037,0.024636164307594,0.049787756055593,0.027860160917044,0.035346135497093,-0.047033514827490,-0.000164607539773,0.067714110016823));
res = max(float4(0,0,0,0), res);
return res;
}