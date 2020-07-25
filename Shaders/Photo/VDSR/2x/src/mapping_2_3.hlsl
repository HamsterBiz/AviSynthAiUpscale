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
res += mul(Get(s0,-dx,-dy), float4x4(-0.126369282603264,0.033141698688269,0.136807531118393,-0.054091542959213,0.014990163967013,-0.058383986353874,0.019566375762224,0.020467903465033,0.148020997643471,0.076260410249233,-0.026148604229093,-0.194352492690086,0.238993033766747,0.047412510961294,0.027429144829512,-0.031783286482096));
res += mul(Get(s0,-dx,0), float4x4(0.081411667168140,-0.175399616360664,0.021820904687047,-0.016263920813799,-0.069746859371662,0.165398910641670,-0.051249451935291,0.146056458353996,0.106247961521149,-0.043421387672424,0.034462414681911,0.069859027862549,0.042118262499571,0.189649716019630,-0.130086198449135,-0.084904305636883));
res += mul(Get(s0,-dx,dy), float4x4(-0.128801167011261,-0.023697057738900,0.096288390457630,-0.010140987113118,0.109042868018150,-0.007329278159887,0.053759451955557,-0.039193317294121,-0.022550944238901,0.038905881345272,0.013538779690862,-0.072120890021324,-0.029527092352509,0.060340184718370,-0.058042209595442,0.082465484738350));
res += mul(Get(s0,0,-dy), float4x4(-0.112013749778271,-0.057674981653690,0.106800593435764,0.362919807434082,0.060724355280399,-0.090967223048210,-0.166383191943169,-0.246150940656662,0.038511313498020,-0.027724472805858,-0.128388777375221,0.028600046411157,-0.142870143055916,0.033864941447973,0.073517605662346,0.076427556574345));
res += mul(Get(s0,0,0), float4x4(-0.017454333603382,-0.007119412068278,-0.004305177368224,0.107692711055279,-0.149567291140556,-0.103918567299843,0.109276592731476,0.104732505977154,-0.084253199398518,-0.115289665758610,0.097427062690258,0.094590291380882,-0.093600489199162,-0.125535488128662,-0.006421614903957,-0.142808377742767));
res += mul(Get(s0,0,dy), float4x4(0.009946462698281,0.057970616966486,0.176189899444580,0.094732917845249,-0.159788981080055,-0.065301410853863,0.224966481328011,-0.051020070910454,-0.032322667539120,0.012503320351243,-0.187259778380394,0.178911089897156,-0.049374867230654,0.261658489704132,0.018895611166954,-0.153611034154892));
res += mul(Get(s0,dx,-dy), float4x4(0.076899006962776,0.084297187626362,-0.043564010411501,0.082491800189018,0.048961065709591,0.119751036167145,0.102418184280396,0.113848321139812,-0.007904898375273,-0.054073870182037,-0.064347937703133,0.001765042659827,-0.096038840711117,-0.036889009177685,0.042701568454504,-0.055614430457354));
res += mul(Get(s0,dx,0), float4x4(0.028419313952327,-0.005017900373787,0.043416127562523,-0.086523756384850,-0.006883679889143,0.077297963202000,0.076886244118214,-0.081754490733147,0.016196828335524,0.260236650705338,0.110006906092167,-0.066067926585674,0.023528905585408,0.020262349396944,-0.008702486753464,-0.129878222942352));
res += mul(Get(s0,dx,dy), float4x4(-0.137557193636894,0.062586680054665,-0.014700551517308,-0.079535104334354,0.077207848429680,-0.051841020584106,-0.082746520638466,0.102005608379841,-0.031249076128006,-0.035846807062626,-0.077903397381306,0.040278244763613,0.102806396782398,-0.002251452766359,0.013807736337185,-0.025108302012086));
res += mul(Get(s1,-dx,-dy), float4x4(0.024886157363653,0.005444594193250,0.036883164197206,0.222785845398903,-0.049934741109610,-0.123266287147999,-0.195564106106758,-0.012021318078041,-0.071918539702892,-0.243908345699310,-0.066125527024269,-0.190514966845512,-0.009596285410225,-0.019590450450778,0.006996137090027,-0.196648225188255));
res += mul(Get(s1,-dx,0), float4x4(-0.035275816917419,0.047776740044355,0.007594938389957,-0.168646067380905,0.026355033740401,-0.032621528953314,0.125969663262367,0.129184707999229,0.014998101629317,0.075989663600922,-0.074747726321220,0.014305878430605,0.013180538080633,0.087065801024437,-0.021682824939489,-0.157515004277229));
res += mul(Get(s1,-dx,dy), float4x4(0.112400531768799,0.110326163470745,0.131136685609818,0.072710290551186,0.261890172958374,-0.040671162307262,-0.065191775560379,0.009961580857635,-0.068031780421734,-0.144964873790741,0.094749063253403,0.165677204728127,0.025635456666350,-0.164036899805069,-0.293145626783371,-0.107957616448402));
res += mul(Get(s1,0,-dy), float4x4(-0.015522697009146,0.066303610801697,-0.097993358969688,0.130479469895363,0.049510475248098,-0.026444386690855,0.033555082976818,0.037951387465000,-0.002859988482669,0.084763295948505,-0.147001117467880,-0.098017893731594,-0.008597866632044,-0.125788986682892,0.021342562511563,0.041528463363647));
res += mul(Get(s1,0,0), float4x4(0.088254652917385,-0.012085576541722,-0.029384773224592,-0.163542374968529,-0.149148434400558,-0.181278869509697,0.073710247874260,-0.087552607059479,0.219079941511154,0.168743625283241,0.009905393235385,0.037011709064245,-0.024209974333644,-0.062088001519442,0.137903273105621,-0.060173526406288));
res += mul(Get(s1,0,dy), float4x4(0.090494818985462,-0.038622394204140,-0.233479961752892,-0.038148697465658,-0.153656378388405,-0.009513681754470,-0.061995171010494,0.260957300662994,0.073701977729797,0.000287105533062,0.100324407219887,-0.112374879419804,0.091920651495457,-0.051460832357407,-0.157553091645241,-0.102614901959896));
res += mul(Get(s1,dx,-dy), float4x4(-0.205881461501122,0.179553031921387,-0.040652427822351,-0.018500991165638,-0.048618603497744,0.124023891985416,0.043170690536499,0.071484088897705,0.021217148751020,-0.046407844871283,-0.114696294069290,-0.050790008157492,-0.032386463135481,-0.092165775597095,-0.008837657049298,-0.091492712497711));
res += mul(Get(s1,dx,0), float4x4(-0.096959643065929,-0.040281947702169,0.020423578098416,0.068366818130016,0.198995679616928,-0.076543226838112,-0.017269941046834,0.059713006019592,0.037181586027145,-0.096669591963291,0.003847817191854,0.134507417678833,-0.019979666918516,-0.037488996982574,-0.065969251096249,0.018789827823639));
res += mul(Get(s1,dx,dy), float4x4(0.096534259617329,-0.111693747341633,0.018215091899037,-0.149595677852631,0.030594550073147,-0.150884956121445,0.105608336627483,-0.113080970942974,0.090971976518631,-0.043033525347710,0.234704688191414,0.019557548686862,0.148634955286980,0.011023347266018,-0.042597066611052,-0.055637534707785));
res += mul(Get(s2,-dx,-dy), float4x4(-0.063680522143841,-0.062238838523626,-0.168612226843834,0.019575810059905,0.074947379529476,0.083078347146511,-0.025262225419283,0.149857938289642,-0.181131228804588,-0.025163738057017,-0.065290294587612,-0.090211018919945,-0.183320924639702,0.073477640748024,0.094364941120148,-0.031707700341940));
res += mul(Get(s2,-dx,0), float4x4(0.092066787183285,-0.065198302268982,0.084193095564842,0.147782385349274,0.106706626713276,0.033297680318356,0.014140818268061,0.005664305761456,-0.032922096550465,-0.070669688284397,-0.084055334329605,0.152984872460365,0.074613086879253,0.017354330047965,0.187695592641830,-0.041942309588194));
res += mul(Get(s2,-dx,dy), float4x4(-0.013112354092300,-0.197710484266281,-0.101427853107452,-0.074371688067913,0.064834147691727,0.015960959717631,0.054264709353447,0.018561886623502,-0.004538327455521,0.048563532531261,0.046517424285412,0.046428024768829,-0.021028278395534,-0.171952262520790,-0.002642113249749,-0.016777222976089));
res += mul(Get(s2,0,-dy), float4x4(-0.085649356245995,-0.013147418387234,0.162428438663483,-0.045230738818645,0.082016564905643,-0.031739272177219,-0.016958026215434,-0.089993521571159,-0.137455672025681,0.044221814721823,-0.106621228158474,0.054268747568130,-0.062789164483547,-0.148153677582741,-0.138355523347855,0.200871452689171));
res += mul(Get(s2,0,0), float4x4(0.084181137382984,-0.150394931435585,-0.110974736511707,0.319161206483841,-0.100295349955559,-0.057692807167768,0.047084484249353,0.076544627547264,-0.029525790363550,0.021819876506925,-0.033914219588041,0.201389387249947,0.129503816366196,-0.051969353109598,0.161185055971146,-0.082465171813965));
res += mul(Get(s2,0,dy), float4x4(0.019455442205071,-0.015260637737811,0.213160946965218,-0.282302439212799,-0.183214545249939,-0.106381103396416,0.086462758481503,-0.137215152382851,0.087309017777443,-0.010524768382311,-0.002240178873762,0.130923777818680,-0.034689180552959,0.025522964075208,0.005154817365110,0.144827157258987));
res += mul(Get(s2,dx,-dy), float4x4(0.119632519781590,0.363619208335876,0.183601975440979,-0.212236613035202,-0.105637043714523,0.236580595374107,-0.018058910965919,0.177330836653709,-0.118020057678223,0.117411971092224,-0.117619365453720,-0.011206028982997,0.008335283957422,0.038895100355148,-0.028839718550444,0.030924437567592));
res += mul(Get(s2,dx,0), float4x4(0.046012673527002,-0.183520868420601,0.025641947984695,0.268274188041687,0.165772899985313,-0.173179090023041,-0.139932826161385,0.007676821202040,0.022115310654044,-0.175442785024643,0.114958986639977,-0.084813259541988,0.137197732925415,-0.073298424482346,0.068221285939217,-0.100368797779083));
res += mul(Get(s2,dx,dy), float4x4(0.057054232805967,0.044364221394062,0.047080442309380,-0.008021444082260,-0.184616461396217,-0.108838982880116,0.000644333194941,-0.149639189243317,0.065541721880436,0.035467285662889,0.016716789454222,0.081310197710991,-0.012536439113319,-0.055700525641441,-0.046806264668703,0.212400257587433));
res += mul(Get(s3,-dx,-dy), float4x4(-0.030766760930419,0.082650505006313,0.100536413490772,-0.059334591031075,-0.153617441654205,0.140308231115341,-0.204708561301231,-0.236410126090050,0.357609182596207,0.051204659044743,-0.093598283827305,-0.064245700836182,0.046032499521971,-0.030877120792866,-0.224133372306824,-0.035596061497927));
res += mul(Get(s3,-dx,0), float4x4(-0.194278463721275,-0.012219114229083,0.051723632961512,-0.140826135873795,-0.007916087284684,-0.074055209755898,0.104309611022472,-0.137581527233124,-0.191079720854759,-0.065408252179623,-0.020960940048099,-0.005670364480466,-0.227344498038292,0.101621799170971,0.017795693129301,-0.048640698194504));
res += mul(Get(s3,-dx,dy), float4x4(-0.176559299230576,0.014002682641149,-0.155624568462372,0.055383112281561,0.025762742385268,-0.029574738815427,-0.085530601441860,0.065237134695053,-0.133489921689034,-0.112278737127781,-0.193369120359421,-0.034794501960278,-0.219531163573265,-0.045105781406164,-0.063280373811722,-0.064952008426189));
res += mul(Get(s3,0,-dy), float4x4(-0.107544928789139,0.167003095149994,-0.004387509543449,0.091018185019493,-0.042517185211182,0.062510982155800,0.063549675047398,0.029519530013204,-0.031675789505243,0.023744015023112,-0.068172208964825,0.023267850279808,-0.032539505511522,0.031594388186932,0.116148732602596,-0.240002781152725));
res += mul(Get(s3,0,0), float4x4(0.058843269944191,-0.065071366727352,-0.112713180482388,0.272730439901352,0.035288654267788,-0.016380457207561,-0.008974097669125,-0.054557785391808,0.112177424132824,-0.121852755546570,-0.018516132608056,-0.186484262347221,0.058480039238930,0.029189828783274,-0.106167718768120,0.196574300527573));
res += mul(Get(s3,0,dy), float4x4(0.118616610765457,0.054886076599360,-0.026819258928299,0.023364651948214,-0.113057240843773,-0.001054932828993,0.063212275505066,0.069697052240372,-0.028045279905200,0.216092556715012,0.098683618009090,-0.059909779578447,0.100931197404861,0.009729026816785,-0.233417496085167,0.061866443604231));
res += mul(Get(s3,dx,-dy), float4x4(0.075891114771366,-0.061923678964376,-0.370309531688690,0.048231311142445,-0.059782098978758,-0.120144553482533,-0.117030858993530,0.015333498828113,0.037824805825949,0.030748583376408,-0.177930310368538,0.023426294326782,-0.018347604200244,0.054674722254276,-0.001561095821671,-0.024944530799985));
res += mul(Get(s3,dx,0), float4x4(0.078362666070461,0.007869135588408,0.053960286080837,-0.157344311475754,-0.074018880724907,-0.018764521926641,0.097363963723183,0.247382774949074,0.041381079703569,0.061271283775568,-0.039104145020247,0.064388401806355,-0.070723161101341,-0.016191136091948,-0.023303670808673,0.087973028421402));
res += mul(Get(s3,dx,dy), float4x4(-0.161373257637024,0.021087968721986,0.196732789278030,-0.097155436873436,0.120189040899277,0.086478427052498,-0.085063874721527,-0.016857964918017,-0.005422213114798,0.220052242279053,0.066193759441376,-0.220515072345734,-0.106546998023987,0.005850878544152,0.034811280667782,-0.135571062564850));
return max(float4(0,0,0,0), res);
}