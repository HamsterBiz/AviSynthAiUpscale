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
res += mul(Get(s0,-dx,-dy), float4x4(-0.122347131371498,0.051536593586206,-0.057626985013485,0.100185766816139,-0.101220637559891,0.004027997143567,0.074012294411659,0.054225802421570,-0.049716744571924,-0.135911449790001,-0.038906831294298,-0.007810960523784,0.180000960826874,0.094350390136242,-0.112598627805710,0.079179435968399));
res += mul(Get(s0,-dx,0), float4x4(-0.214436426758766,-0.144457414746284,0.084879100322723,0.181099846959114,0.207644566893578,-0.001428882475011,0.078001298010349,-0.078938901424408,-0.062811084091663,0.042255006730556,-0.011709788814187,-0.154818952083588,-0.045882649719715,0.048043169081211,0.188763394951820,-0.143132731318474));
res += mul(Get(s0,-dx,dy), float4x4(-0.008662678301334,0.039420653134584,-0.058143090456724,0.174515455961227,0.071601234376431,-0.148430630564690,-0.072764314711094,0.047070864588022,0.207238152623177,-0.032512351870537,-0.077067621052265,-0.022093238309026,-0.046637102961540,-0.062062636017799,-0.016219336539507,0.055326879024506));
res += mul(Get(s0,0,-dy), float4x4(-0.190562918782234,0.073257565498352,0.148129209876060,-0.203173831105232,-0.021562397480011,0.039683263748884,0.026500763371587,0.131399795413017,0.096101708710194,0.023462029173970,-0.078791126608849,0.043259933590889,0.004790045320988,-0.001019323943183,-0.082115128636360,-0.001240781857632));
res += mul(Get(s0,0,0), float4x4(0.030991103500128,-0.053662609308958,0.118913613259792,0.024940460920334,-0.150020420551300,-0.027705458924174,-0.000264440517640,0.019973488524556,0.145770296454430,-0.233643695712090,-0.007938675582409,-0.019231820479035,-0.151690259575844,-0.114235647022724,0.073422700166702,0.137365654110909));
res += mul(Get(s0,0,dy), float4x4(-0.032454859465361,-0.041823457926512,-0.011413400992751,0.009248699992895,0.082891948521137,0.031533718109131,-0.071570649743080,0.085789903998375,-0.273341059684753,0.077141009271145,-0.042447883635759,-0.121210046112537,0.204194456338882,-0.101296976208687,0.021170392632484,-0.000335389544489));
res += mul(Get(s0,dx,-dy), float4x4(-0.028658807277679,-0.030333194881678,-0.014523413032293,-0.102995917201042,-0.099506653845310,0.149617955088615,0.122322417795658,0.036485515534878,0.008204746060073,0.051917739212513,0.001938650268130,0.103772781789303,0.094940423965454,0.169258922338486,-0.090611845254898,-0.102942138910294));
res += mul(Get(s0,dx,0), float4x4(-0.005483515094966,0.103812821209431,0.045901283621788,0.042663026601076,-0.122461237013340,0.008520780131221,0.049488198012114,-0.093588612973690,-0.001676559448242,0.019909419119358,0.054252415895462,-0.046554263681173,0.260531634092331,-0.214638754725456,-0.007778145838529,-0.232325851917267));
res += mul(Get(s0,dx,dy), float4x4(0.101103402674198,0.019812639802694,0.103168740868568,0.251874268054962,-0.045268665999174,-0.077969074249268,-0.037055991590023,-0.093762844800949,-0.006433695554733,-0.044334288686514,0.193204507231712,0.101358391344547,0.097387373447418,-0.144015595316887,-0.185618326067924,-0.126620054244995));
res += mul(Get(s1,-dx,-dy), float4x4(-0.008903316222131,0.196375250816345,-0.320079505443573,-0.110219210386276,-0.075948439538479,0.077271752059460,0.220679178833961,-0.070018261671066,-0.065811954438686,-0.110336646437645,-0.095794431865215,-0.060761567205191,0.272305816411972,0.100312069058418,-0.019126644358039,-0.101636521518230));
res += mul(Get(s1,-dx,0), float4x4(0.139568567276001,-0.037377446889877,0.000868185714353,0.076440379023552,-0.077048987150192,-0.104678370058537,-0.016771385446191,0.020886640995741,0.033533208072186,0.082094877958298,-0.244087547063828,-0.258112728595734,-0.054390236735344,0.031443241983652,-0.030559472739697,0.066527955234051));
res += mul(Get(s1,-dx,dy), float4x4(-0.043408375233412,-0.094731025397778,-0.094825387001038,-0.100054912269115,-0.161588460206985,0.002746886340901,0.059990029782057,-0.014164693653584,0.150801196694374,0.076315410435200,-0.132145449519157,-0.112222529947758,-0.147859081625938,0.025760592892766,0.007155538070947,0.036285154521465));
res += mul(Get(s1,0,-dy), float4x4(-0.031531840562820,0.108934029936790,-0.013782274909317,-0.157921269536018,-0.133765488862991,-0.051057253032923,0.121252097189426,0.055154059082270,0.008692397736013,0.054687373340130,0.023760875687003,0.150881037116051,0.223622515797615,0.112154215574265,0.078019358217716,-0.051758691668510));
res += mul(Get(s1,0,0), float4x4(-0.066580899059772,-0.206239849328995,-0.024618031457067,0.009784067980945,0.015566959045827,-0.048754435032606,-0.152650818228722,0.084512241184711,0.035353995859623,-0.030872369185090,0.018702479079366,0.114877164363861,-0.146408274769783,0.030912661924958,0.024863140657544,0.204351380467415));
res += mul(Get(s1,0,dy), float4x4(-0.076440282166004,0.118245176970959,0.155298739671707,0.224891901016235,-0.069901764392853,-0.029771776869893,0.349395871162415,0.196713835000992,-0.252929300069809,0.031652063131332,-0.003075402928516,0.058313783258200,-0.082112491130829,0.248649522662163,0.118256397545338,-0.077828012406826));
res += mul(Get(s1,dx,-dy), float4x4(-0.158967882394791,0.052092988044024,-0.007872737944126,-0.130838274955750,0.131117120385170,0.075761474668980,-0.143143624067307,-0.137160241603851,-0.042611587792635,-0.169962793588638,-0.060604758560658,0.031315580010414,0.117170490324497,-0.004048686940223,-0.060398057103157,0.205971270799637));
res += mul(Get(s1,dx,0), float4x4(0.010944414883852,-0.075356893241405,0.033235784620047,-0.152737721800804,-0.090515628457069,-0.044838830828667,0.139991268515587,-0.035464379936457,0.002334028249606,0.122946918010712,-0.037314996123314,-0.142632082104683,-0.023641381412745,0.161263048648834,-0.052223041653633,0.121966168284416));
res += mul(Get(s1,dx,dy), float4x4(0.076466120779514,0.029663365334272,0.028200309723616,-0.107462555170059,0.044806826859713,0.166005343198776,0.150149762630463,-0.020161012187600,0.024893041700125,0.006779561750591,0.174553498625755,0.029999315738678,-0.227500706911087,0.088080242276192,-0.158458352088928,-0.252619951963425));
res += mul(Get(s2,-dx,-dy), float4x4(-0.029262339696288,0.081949964165688,-0.197253167629242,0.291681826114655,0.042328272014856,0.023083191365004,0.103008925914764,-0.064732596278191,0.002666371408850,0.065099135041237,-0.088524512946606,0.147957682609558,0.104596272110939,0.034385576844215,-0.048455551266670,0.092040561139584));
res += mul(Get(s2,-dx,0), float4x4(-0.198160499334335,0.078858315944672,0.168279007077217,-0.002222870476544,-0.040600851178169,0.000984131009318,0.033690907061100,-0.022421080619097,0.043834153562784,0.025223718956113,-0.033649720251560,0.034536030143499,-0.179256066679955,-0.057788088917732,0.015226065181196,-0.044672343879938));
res += mul(Get(s2,-dx,dy), float4x4(-0.150053322315216,0.178924158215523,0.115422368049622,0.010843063704669,-0.240011975169182,-0.119237989187241,-0.053311038762331,0.194990098476410,0.100035086274147,0.141035854816437,-0.037871714681387,-0.093528263270855,-0.043553773313761,-0.162026554346085,0.165384486317635,0.224056586623192));
res += mul(Get(s2,0,-dy), float4x4(-0.028487235307693,-0.006736641749740,-0.048235800117254,0.205773741006851,-0.041994765400887,-0.025284620001912,0.183430552482605,0.162857010960579,0.138250932097435,0.090356253087521,0.022787841036916,-0.106021001935005,-0.036232255399227,-0.114961415529251,-0.077741391956806,-0.010410333983600));
res += mul(Get(s2,0,0), float4x4(-0.079499185085297,0.051289048045874,0.082651019096375,-0.052996497601271,0.323444813489914,-0.177916035056114,-0.096240632236004,0.158136680722237,0.064039684832096,0.024380913004279,-0.000659388664644,-0.197260096669197,0.164013549685478,-0.078711897134781,0.224635958671570,0.190224304795265));
res += mul(Get(s2,0,dy), float4x4(-0.097724072635174,0.008687320165336,0.134583830833435,-0.052489824593067,-0.024274585768580,0.082040466368198,-0.116183422505856,-0.057055626064539,0.191854104399681,0.017715325579047,-0.015105039812624,-0.087346792221069,-0.043276768177748,-0.001073405263014,-0.061109580099583,0.135630682110786));
res += mul(Get(s2,dx,-dy), float4x4(-0.217079505324364,0.039192575961351,-0.029925514012575,-0.083396375179291,-0.004092675168067,0.059520967304707,-0.042136590927839,-0.142009407281876,0.009656306356192,0.085134804248810,-0.080058448016644,0.082008600234985,-0.184539899230003,0.069275289773941,-0.018187474459410,-0.173342421650887));
res += mul(Get(s2,dx,0), float4x4(-0.108097024261951,0.006312538404018,-0.066916838288307,0.098852150142193,0.149438351392746,-0.068846829235554,-0.018796237185597,-0.043591767549515,0.105674132704735,0.233557790517807,0.043869055807590,0.111527919769287,-0.009140663780272,-0.029777100309730,-0.122448407113552,-0.174955070018768));
res += mul(Get(s2,dx,dy), float4x4(-0.234296426177025,0.049353782087564,-0.079449065029621,0.048745315521955,0.050357222557068,0.073038667440414,-0.006242335774004,-0.002590294461697,-0.037525802850723,-0.197196975350380,0.073451563715935,-0.022427722811699,-0.073073342442513,-0.122060358524323,-0.097418777644634,-0.172251999378204));
res += mul(Get(s3,-dx,-dy), float4x4(-0.110828362405300,0.013623305596411,-0.036003205925226,-0.022807704284787,-0.175070032477379,-0.024519091472030,-0.099875375628471,0.025150908157229,-0.032710883766413,0.033040337264538,0.037836737930775,-0.325275719165802,-0.102127939462662,0.148487463593483,0.085723347961903,-0.014364426955581));
res += mul(Get(s3,-dx,0), float4x4(0.085443913936615,0.061903607100248,0.114941477775574,-0.026257196441293,0.045984279364347,0.002839951077476,0.019096545875072,-0.002064708620310,-0.017870735377073,-0.088878735899925,-0.022300509735942,-0.079587884247303,0.019659534096718,0.005604051519185,-0.008697209879756,0.016661064699292));
res += mul(Get(s3,-dx,dy), float4x4(0.061317365616560,0.067776799201965,-0.064870372414589,-0.118007235229015,0.121193662285805,-0.061507374048233,-0.033258523792028,-0.197805941104889,0.185081824660301,-0.040356434881687,0.232614532113075,-0.013652912341058,-0.068927280604839,0.080053366720676,-0.003106728661805,-0.014656677842140));
res += mul(Get(s3,0,-dy), float4x4(0.136117860674858,0.175249665975571,0.000594479031861,0.092336699366570,0.050152577459812,-0.064104124903679,-0.016286302357912,0.079466708004475,0.022264843806624,-0.119763635098934,-0.061602830886841,0.239782035350800,0.134028404951096,0.031668059527874,-0.000510116922669,0.192866235971451));
res += mul(Get(s3,0,0), float4x4(0.053699951618910,-0.242010667920113,-0.011574993841350,-0.026559039950371,0.047849301248789,0.074287258088589,0.046739928424358,0.235210999846458,0.136711239814758,0.099245205521584,0.092906661331654,0.402574628591537,-0.020577099174261,0.064444504678249,-0.047656942158937,0.014099595136940));
res += mul(Get(s3,0,dy), float4x4(0.174466937780380,-0.154014050960541,0.105532288551331,0.011290979571640,0.167424604296684,-0.218308240175247,0.018159985542297,-0.159232273697853,0.038646988570690,0.036054842174053,0.096938274800777,0.046451859176159,-0.117482870817184,0.021822717040777,-0.140646517276764,0.154541373252869));
res += mul(Get(s3,dx,-dy), float4x4(0.086551398038864,0.034198071807623,-0.204507842659950,0.056809265166521,0.006125903222710,0.181577727198601,0.101800955832005,0.053348116576672,-0.049506068229675,-0.110186643898487,-0.021889438852668,0.020522352308035,0.007856701500714,0.084120243787766,-0.046891089528799,0.092856794595718));
res += mul(Get(s3,dx,0), float4x4(0.207804515957832,0.066346704959869,0.083246409893036,-0.004933509044349,0.274466156959534,-0.140837907791138,0.248857274651527,0.173028960824013,0.194157704710960,0.057467609643936,-0.061366885900497,0.110448814928532,-0.079873062670231,-0.039174515753984,0.134039685130119,0.090114600956440));
res += mul(Get(s3,dx,dy), float4x4(0.054227016866207,-0.117863439023495,-0.007336474023759,-0.154822349548340,-0.076707974076271,0.127404853701591,0.147344678640366,-0.235975250601768,-0.008183295838535,0.001650982536376,-0.068008773028851,-0.117837853729725,-0.158939033746719,0.137446388602257,0.209720313549042,-0.173520311713219));
return max(float4(0,0,0,0), res);
}