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
res += mul(Get(s0,-dx,-dy), float4x4(-0.033300459384918,0.031017035245895,-0.083983436226845,-0.160286337137222,0.027916971594095,0.017430767416954,-0.099676065146923,0.054493207484484,-0.040430620312691,-0.021497793495655,-0.048265412449837,-0.045041035860777,-0.071367539465427,0.090178877115250,0.062703117728233,-0.001511253882200));
res += mul(Get(s0,-dx,0), float4x4(-0.014478065073490,0.052391409873962,-0.073542594909668,-0.002941572805867,0.108777754008770,0.143676102161407,-0.080509468913078,0.054115135222673,0.010728335939348,0.110225550830364,0.021839745342731,0.121859945356846,0.182595968246460,0.119823440909386,-0.035638257861137,-0.135534286499023));
res += mul(Get(s0,-dx,dy), float4x4(-0.020731437951326,0.107339814305305,0.005490593612194,0.126093685626984,0.040067717432976,-0.029966592788696,0.101656794548035,0.122629217803478,-0.158077418804169,-0.011363347992301,0.057334769517183,0.024627780541778,0.004025642294437,-0.035117037594318,-0.073795989155769,0.059691596776247));
res += mul(Get(s0,0,-dy), float4x4(-0.131493434309959,-0.092032082378864,-0.037299323827028,-0.000430695625255,0.039689246565104,0.096775159239769,0.038204275071621,-0.077152416110039,-0.171380877494812,0.005219663958997,0.061732940375805,0.101244233548641,-0.041091952472925,0.052292991429567,-0.035459987819195,-0.051357999444008));
res += mul(Get(s0,0,0), float4x4(-0.062078103423119,-0.006187933497131,-0.094243280589581,-0.102327451109886,0.099918544292450,0.038856107741594,0.036667473614216,-0.045588962733746,-0.042606107890606,-0.110204450786114,-0.024074124172330,-0.004874596372247,0.161642491817474,-0.018910715356469,0.203098490834236,-0.044528309255838));
res += mul(Get(s0,0,dy), float4x4(0.013092597015202,0.046343144029379,0.014430794864893,0.005500042811036,0.097521178424358,0.015912111848593,0.006790775340050,0.024795167148113,-0.080045074224472,0.000191997736692,-0.060276307165623,-0.158431231975555,0.007482406217605,-0.094435006380081,0.015244833193719,0.050557095557451));
res += mul(Get(s0,dx,-dy), float4x4(-0.042434666305780,0.163720741868019,-0.046183425933123,0.116393096745014,0.220075875520706,-0.123269334435463,-0.012307787314057,-0.062289789319038,-0.081725120544434,0.006722590420395,0.036719985306263,-0.009314835071564,0.021174835041165,-0.000598033017013,0.048973012715578,-0.000064704407123));
res += mul(Get(s0,dx,0), float4x4(0.114269793033600,0.043083868920803,-0.003981351386756,-0.116722188889980,-0.110453791916370,-0.112552516162395,0.052193522453308,0.040846850723028,-0.028918866068125,0.048102546483278,0.094970203936100,-0.031397733837366,-0.006881332024932,-0.035696826875210,0.057401359081268,0.013926663435996));
res += mul(Get(s0,dx,dy), float4x4(-0.072387151420116,0.097701728343964,0.072951555252075,-0.001150407246314,0.034547228366137,-0.034920606762171,-0.058331385254860,0.029147885739803,0.069344401359558,-0.010456044226885,0.054583609104156,0.105458967387676,-0.027345476672053,0.065752446651459,-0.087667934596539,0.070666670799255));
res += mul(Get(s1,-dx,-dy), float4x4(0.099050216376781,-0.137638524174690,-0.133248314261436,-0.112417958676815,-0.037148285657167,0.197987005114555,-0.065320134162903,-0.010886276140809,0.008672971278429,0.009455767460167,-0.072914540767670,-0.110910475254059,-0.038712739944458,0.087516844272614,0.026654059067369,-0.008339181542397));
res += mul(Get(s1,-dx,0), float4x4(0.051894757896662,-0.020996836945415,-0.076544843614101,-0.022577920928597,0.056137349456549,0.129546865820885,-0.170904248952866,-0.068665251135826,-0.022645188495517,0.244131743907928,-0.034914918243885,-0.101943537592888,-0.034148212522268,-0.058142013847828,0.067347183823586,-0.131962820887566));
res += mul(Get(s1,-dx,dy), float4x4(-0.020988710224628,0.126953601837158,0.018542306497693,-0.083304241299629,-0.041190069168806,0.039489444345236,-0.015779888257384,0.092954620718956,-0.180441662669182,0.169475033879280,-0.127690896391869,-0.108685478568077,0.077076070010662,0.147741347551346,-0.069494299590588,-0.094909712672234));
res += mul(Get(s1,0,-dy), float4x4(0.017501367256045,-0.063959434628487,-0.049119319766760,0.077617883682251,0.066466853022575,0.064201511442661,0.024096166715026,0.047414846718311,0.020324060693383,0.187098950147629,0.154985934495926,-0.078635312616825,0.003171551041305,0.070431821048260,0.133171588182449,-0.085585519671440));
res += mul(Get(s1,0,0), float4x4(0.077292189002037,-0.000300170591800,0.066709294915199,0.038536339998245,-0.015231746248901,-0.150091424584389,-0.078315727412701,-0.012715551070869,-0.056318212300539,-0.185158267617226,0.166943922638893,0.098162375390530,-0.027353210374713,-0.189726904034615,0.091825649142265,0.051013175398111));
res += mul(Get(s1,0,dy), float4x4(0.131237030029297,0.065993279218674,0.084984786808491,-0.040305316448212,-0.040701322257519,0.120515957474709,-0.002907130867243,0.144596874713898,-0.190820544958115,-0.034791074693203,-0.094344072043896,0.025367246940732,-0.115419127047062,-0.074607424438000,-0.095593914389610,0.140973642468452));
res += mul(Get(s1,dx,-dy), float4x4(-0.003512467956170,0.085615880787373,-0.022695859894156,0.025874992832541,0.112505726516247,-0.008817695081234,-0.011105902493000,0.065175637602806,-0.041339986026287,0.030415298417211,0.217372789978981,-0.216604873538017,-0.050700541585684,0.056072074919939,0.019610485062003,-0.059505108743906));
res += mul(Get(s1,dx,0), float4x4(-0.087234623730183,0.040256310254335,0.037023175507784,0.004192321095616,-0.056223403662443,-0.111343435943127,-0.084193341434002,-0.009684015996754,-0.057358965277672,-0.014728966169059,-0.030840493738651,0.098553434014320,-0.016944916918874,0.046980362385511,0.021326057612896,0.075764693319798));
res += mul(Get(s1,dx,dy), float4x4(0.062970995903015,0.146861165761948,-0.021291337907314,-0.064211003482342,-0.015311960130930,0.045317649841309,-0.046508476138115,0.112595237791538,-0.055249437689781,-0.037772186100483,0.041919071227312,0.057217080146074,-0.063379205763340,-0.080551959574223,-0.066167503595352,-0.125392124056816));
res += mul(Get(s2,-dx,-dy), float4x4(-0.099025785923004,0.083646990358829,-0.169753178954124,0.011796015314758,-0.072108983993530,-0.092277042567730,0.055613480508327,-0.079385682940483,-0.120142787694931,-0.028899410739541,-0.198021665215492,-0.017345875501633,-0.012459957040846,0.130841687321663,0.036484170705080,0.036932088434696));
res += mul(Get(s2,-dx,0), float4x4(-0.014124391600490,0.210315629839897,0.049736410379410,0.018802687525749,0.071161277592182,0.122119233012199,-0.141516581177711,-0.039796214550734,0.080117613077164,0.074296504259109,0.174368619918823,-0.070367649197578,0.099536262452602,-0.029282936826348,0.040126625448465,-0.057691693305969));
res += mul(Get(s2,-dx,dy), float4x4(0.023006908595562,-0.071780256927013,0.100712127983570,-0.116822794079781,-0.007428313139826,0.096734620630741,0.137421444058418,0.067849606275558,-0.051187321543694,-0.004161330871284,-0.111235894262791,-0.041932284832001,-0.013243737630546,-0.113579213619232,0.105283185839653,-0.155438080430031));
res += mul(Get(s2,0,-dy), float4x4(-0.088701166212559,0.036142308264971,0.072183065116405,-0.064929291605949,-0.018908632919192,0.135651946067810,0.056321032345295,-0.058506891131401,0.103042006492615,0.196695178747177,-0.034071460366249,0.068566754460335,0.116495199501514,0.136641591787338,0.059081170707941,-0.147443875670433));
res += mul(Get(s2,0,0), float4x4(0.110734336078167,0.095352500677109,0.028168268501759,0.066411934792995,0.042568601667881,0.045291069895029,0.058892413973808,0.131398230791092,0.036342110484838,-0.098525635898113,0.062019027769566,0.096373468637466,0.035436421632767,-0.042583640664816,0.105277366936207,-0.087536156177521));
res += mul(Get(s2,0,dy), float4x4(0.024784162640572,0.033119183033705,0.159024298191071,0.072922319173813,-0.172883450984955,0.032957486808300,-0.011642469093204,-0.013438238762319,-0.017133081331849,0.028085203841329,-0.042244516313076,-0.189858421683311,-0.153523728251457,0.052078895270824,-0.027873570099473,-0.050164368003607));
res += mul(Get(s2,dx,-dy), float4x4(-0.088895089924335,0.010302518494427,-0.006029303185642,0.057497065514326,-0.081485033035278,-0.150934621691704,-0.073533259332180,-0.044414419680834,0.062824577093124,0.004233823623508,0.061138097196817,0.001871109474450,0.038043253123760,-0.043789178133011,-0.019302487373352,-0.098507195711136));
res += mul(Get(s2,dx,0), float4x4(0.097968719899654,-0.071483045816422,0.002779545262456,-0.075801424682140,-0.098853580653667,-0.125242501497269,-0.140997245907784,-0.091613866388798,-0.095861732959747,-0.020780716091394,0.124411620199680,0.057367995381355,-0.068813599646091,0.107491277158260,-0.007708499208093,-0.261709868907928));
res += mul(Get(s2,dx,dy), float4x4(-0.005407710559666,-0.027017740532756,-0.005733170546591,-0.005935081746429,0.037537056952715,0.026841931045055,-0.032012354582548,0.080536663532257,0.058384697884321,0.020330507308245,0.083147212862968,0.004742491059005,-0.033324994146824,0.134900599718094,0.007007713429630,0.036743972450495));
res += mul(Get(s3,-dx,-dy), float4x4(0.112019151449203,0.113090500235558,0.080727554857731,-0.126897811889648,0.043957799673080,-0.107084281742573,0.123346939682961,0.057130508124828,-0.033657938241959,-0.099211879074574,0.043697986751795,-0.148384690284729,0.049228530377150,0.116157382726669,-0.106494165956974,-0.012817474082112));
res += mul(Get(s3,-dx,0), float4x4(0.083171986043453,0.114905722439289,-0.020417358726263,0.154522970318794,0.009829031303525,-0.089806951582432,-0.003163915826008,-0.127303391695023,0.010616354644299,0.067401230335236,0.066210918128490,0.067952543497086,-0.111030355095863,0.190137267112732,-0.119816094636917,0.085804581642151));
res += mul(Get(s3,-dx,dy), float4x4(-0.017047524452209,-0.140006348490715,-0.120420426130295,0.074966363608837,-0.010980940423906,-0.055962145328522,-0.020446166396141,0.118822373449802,-0.036453507840633,-0.050263155251741,-0.185113117098808,-0.050671525299549,-0.043370179831982,0.021848782896996,-0.026114771142602,0.091777145862579));
res += mul(Get(s3,0,-dy), float4x4(-0.000596135796513,0.124612510204315,-0.053633246570826,-0.004657742567360,-0.012711551971734,0.001413020072505,-0.112997993826866,0.127754673361778,0.023461448028684,0.092324733734131,0.084879741072655,0.056778501719236,0.013952673412859,0.147224068641663,0.173216581344604,0.067021444439888));
res += mul(Get(s3,0,0), float4x4(-0.057784624397755,-0.036907363682985,0.015890697017312,0.107556514441967,0.137349724769592,0.225756555795670,0.033921975642443,-0.012881744652987,0.007614377420396,-0.145326003432274,-0.029267445206642,0.042105156928301,0.143033877015114,0.104449301958084,0.065443918108940,-0.059573650360107));
res += mul(Get(s3,0,dy), float4x4(-0.004710939712822,-0.007951567880809,-0.062173563987017,-0.034872405230999,-0.092085294425488,-0.083256274461746,0.085746116936207,-0.021612295880914,-0.186384007334709,-0.091449335217476,0.027849862352014,-0.050070792436600,0.089660778641701,-0.051140449941158,-0.013130319304764,-0.005040435120463));
res += mul(Get(s3,dx,-dy), float4x4(0.218613132834435,0.006980737205595,-0.154395237565041,0.028015088289976,-0.042756773531437,0.095095753669739,-0.116474665701389,0.103301085531712,-0.024858882650733,-0.116150185465813,-0.001631368417293,0.088365085422993,0.034928400069475,-0.042486444115639,0.009370684623718,-0.033236209303141));
res += mul(Get(s3,dx,0), float4x4(0.063850387930870,-0.015226826071739,0.122711800038815,-0.053389430046082,0.169342130422592,0.211308658123016,-0.024958057329059,0.130866006016731,-0.067349977791309,-0.156107187271118,-0.023525917902589,-0.063526630401611,0.012106780894101,-0.093897715210915,0.006249626632780,-0.046442568302155));
res += mul(Get(s3,dx,dy), float4x4(-0.004248153418303,-0.049039859324694,-0.029712056741118,-0.096220120787621,-0.149350911378860,0.062141507863998,0.083632074296474,-0.010285208001733,-0.077929437160492,-0.074515253305435,-0.046399828046560,-0.011519479565322,-0.087013430893421,-0.102937199175358,0.050142750144005,0.051761131733656));
return max(float4(0,0,0,0), res);
}