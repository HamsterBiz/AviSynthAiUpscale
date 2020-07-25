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
res += mul(Get(s0,-dx,-dy), float4x4(-0.045416843146086,0.059727996587753,-0.035800747573376,-0.090438574552536,0.105773262679577,-0.011392652057111,-0.077420406043530,0.049946427345276,0.222630664706230,0.020369991660118,-0.084303274750710,0.062501423060894,-0.062019437551498,-0.230453163385391,0.013924728147686,0.002818600041792));
res += mul(Get(s0,-dx,0), float4x4(-0.184937387704849,0.127463549375534,0.023691235110164,-0.105632849037647,0.078358232975006,0.014679532498121,0.046684540808201,-0.165253952145576,0.162893384695053,-0.028329826891422,0.092954710125923,0.104502335190773,0.087141752243042,-0.009868030436337,0.021160852164030,0.110806904733181));
res += mul(Get(s0,-dx,dy), float4x4(-0.209828943014145,-0.064713858067989,0.031486321240664,-0.079258680343628,0.144452959299088,-0.126146987080574,0.023305878043175,-0.095137491822243,-0.177371889352798,-0.040451548993587,0.188861519098282,0.049156818538904,0.041969865560532,-0.065640620887280,0.130965933203697,-0.036969933658838));
res += mul(Get(s0,0,-dy), float4x4(-0.082395158708096,-0.066250644624233,-0.100028730928898,0.180083781480789,0.013671079650521,-0.039806336164474,0.201026350259781,-0.226082816720009,0.082697607576847,-0.107061758637428,-0.004333644174039,0.053095594048500,0.027372833341360,-0.218259066343307,-0.064844712615013,0.052189640700817));
res += mul(Get(s0,0,0), float4x4(0.045101113617420,0.081762365996838,-0.002614588942379,0.166660770773888,0.126905962824821,-0.091928951442242,-0.124794214963913,-0.062667191028595,-0.004700007382780,-0.000909738009796,0.074673116207123,0.075450070202351,-0.016922295093536,-0.013541723601520,-0.028349157422781,-0.053416959941387));
res += mul(Get(s0,0,dy), float4x4(0.158725902438164,0.140423342585564,-0.023091755807400,0.059737168252468,-0.009144035167992,-0.088700495660305,-0.169319599866867,-0.075707338750362,0.094520986080170,-0.026953944936395,0.082581840455532,0.004865224473178,-0.130128979682922,0.113295108079910,0.263818144798279,-0.024263983592391));
res += mul(Get(s0,dx,-dy), float4x4(0.060101345181465,-0.056470960378647,-0.012598260305822,0.016996499150991,-0.076115958392620,-0.115680746734142,-0.026663200929761,0.030506892129779,-0.063702061772346,-0.252366781234741,0.126465171575546,0.038753464818001,0.040712896734476,0.095328733325005,0.117183268070221,-0.168391153216362));
res += mul(Get(s0,dx,0), float4x4(-0.052673615515232,0.017226003110409,0.060684241354465,-0.099976100027561,-0.001028973609209,0.067629002034664,-0.094072557985783,-0.041374489665031,-0.018084080889821,0.250534236431122,-0.010605222545564,0.034062039107084,-0.272767245769501,0.034047111868858,-0.025384841486812,0.084906890988350));
res += mul(Get(s0,dx,dy), float4x4(-0.131414905190468,-0.054655514657497,0.035008784383535,0.075950793921947,-0.239593610167503,-0.010314974002540,-0.041346572339535,-0.084302492439747,-0.022820612415671,0.121408194303513,-0.060786630958319,-0.136236667633057,-0.090718396008015,-0.129703506827354,0.035466939210892,-0.121283918619156));
res += mul(Get(s1,-dx,-dy), float4x4(0.043448776006699,0.078549899160862,0.194140046834946,0.020592881366611,0.058132566511631,-0.028539594262838,-0.068047657608986,-0.111303731799126,0.141570433974266,0.086239524185658,-0.089794479310513,-0.058629270642996,-0.003890424733981,-0.060523737221956,0.145312517881393,0.173114329576492));
res += mul(Get(s1,-dx,0), float4x4(-0.058027666062117,-0.105437450110912,0.093243502080441,-0.211653023958206,0.028340706601739,0.033932328224182,0.015195543877780,0.114884838461876,-0.022584101185203,-0.094954639673233,0.063316069543362,-0.161189243197441,-0.162601530551910,-0.122144058346748,-0.146426618099213,-0.014334182254970));
res += mul(Get(s1,-dx,dy), float4x4(0.082602620124817,-0.133668377995491,-0.038849949836731,0.144967868924141,0.109787158668041,0.015593996271491,0.073021374642849,-0.166622519493103,-0.038897391408682,-0.087429016828537,-0.028879482299089,0.000907662615646,0.005006919614971,0.024711333215237,0.087423175573349,-0.049432262778282));
res += mul(Get(s1,0,-dy), float4x4(-0.209270223975182,0.065026581287384,0.144396573305130,-0.086503654718399,-0.118580281734467,0.083546914160252,-0.121138051152229,0.043794218450785,0.098726257681847,0.094683565199375,-0.114945814013481,-0.145535498857498,0.067884564399719,-0.089930638670921,-0.157406166195869,-0.029937129467726));
res += mul(Get(s1,0,0), float4x4(-0.098596580326557,0.193373978137970,-0.042103815823793,-0.002167079132050,-0.069301269948483,-0.140930816531181,0.026363857090473,-0.082375496625900,0.112525314092636,-0.084530852735043,0.133751854300499,-0.079637251794338,-0.213891565799713,-0.000372771872208,0.049871657043695,-0.063169531524181));
res += mul(Get(s1,0,dy), float4x4(-0.073410108685493,-0.106728993356228,-0.081788055598736,0.124825157225132,-0.090273328125477,0.258537471294403,0.053388588130474,0.157970517873764,0.053810395300388,0.003085262840614,-0.123383991420269,-0.038254529237747,-0.076208449900150,-0.031888984143734,0.067320935428143,-0.043904826045036));
res += mul(Get(s1,dx,-dy), float4x4(0.008131583221257,0.036571502685547,-0.192436262965202,0.026327479630709,-0.089325308799744,-0.099536105990410,0.099196508526802,-0.011903351172805,-0.088693812489510,-0.026823008432984,-0.076468043029308,-0.015485431067646,-0.112908676266670,0.145257741212845,-0.088339857757092,-0.095871999859810));
res += mul(Get(s1,dx,0), float4x4(0.158935323357582,-0.017207957804203,-0.113377481698990,-0.174014374613762,0.004704326391220,0.096666388213634,0.045692943036556,0.067404255270958,-0.018912801519036,-0.107274979352951,0.002371347509325,-0.095184214413166,0.120500288903713,-0.011427330784500,0.049638956785202,0.038290228694677));
res += mul(Get(s1,dx,dy), float4x4(0.003197298618034,-0.090805217623711,0.077296197414398,0.113890014588833,0.160090237855911,0.089023880660534,-0.098462104797363,-0.020451273769140,0.001724002417177,0.044689349830151,-0.086021266877651,-0.048345938324928,-0.082958407700062,-0.033352721482515,-0.044241610914469,0.000237301137531));
res += mul(Get(s2,-dx,-dy), float4x4(-0.027332574129105,-0.255819648504257,-0.094661064445972,0.005228763446212,-0.090276606380939,0.032790340483189,-0.042837545275688,0.111950911581516,0.036187883466482,-0.073434151709080,0.044506147503853,-0.027346286922693,0.028331395238638,0.176886513829231,0.093936368823051,-0.123867325484753));
res += mul(Get(s2,-dx,0), float4x4(0.013616411015391,0.011544945649803,-0.062076665461063,0.088066786527634,0.005580458790064,0.074436537921429,-0.185112297534943,-0.042226936668158,0.051019933074713,-0.026444070041180,0.003128000767902,0.052247401326895,0.119408227503300,-0.036564715206623,-0.073848329484463,-0.024136191233993));
res += mul(Get(s2,-dx,dy), float4x4(0.086787067353725,0.105032786726952,-0.002513594459742,0.060794278979301,-0.010442157275975,-0.243974015116692,-0.079530671238899,-0.214362546801567,0.035113207995892,0.070440903306007,-0.056110717356205,-0.001161103602499,0.022155139595270,0.108144812285900,0.042000193148851,-0.039687804877758));
res += mul(Get(s2,0,-dy), float4x4(-0.061978563666344,0.000644019688480,0.142693281173706,0.008475071750581,0.069864206016064,0.053958281874657,0.179465919733047,0.006716544739902,0.006974651943892,0.119757711887360,-0.101032838225365,0.043695483356714,-0.108365982770920,0.113386064767838,0.127918049693108,-0.172447293996811));
res += mul(Get(s2,0,0), float4x4(-0.081193961203098,0.076274126768112,-0.013951648026705,0.127245843410492,-0.074474833905697,-0.102449461817741,0.118357226252556,-0.118138603866100,-0.001797953387722,-0.021009154617786,0.160178765654564,-0.244968399405479,-0.117707081139088,0.001006992068142,-0.015984665602446,-0.107611916959286));
res += mul(Get(s2,0,dy), float4x4(-0.186884135007858,0.033073145896196,0.018605133518577,-0.069450236856937,-0.076662614941597,0.007994501851499,-0.105458334088326,0.070601336658001,-0.142711400985718,0.041485350579023,-0.152837231755257,0.124438308179379,0.073620125651360,0.190887048840523,-0.010280133225024,0.073101639747620));
res += mul(Get(s2,dx,-dy), float4x4(-0.057959355413914,0.023333070799708,-0.034585732966661,0.026989951729774,-0.135179340839386,0.058566533029079,-0.017822695896029,-0.032786764204502,-0.036845296621323,0.030687496066093,0.117848142981529,-0.106001123785973,0.085369996726513,-0.009984787553549,0.023529000580311,-0.089125201106071));
res += mul(Get(s2,dx,0), float4x4(-0.081233449280262,-0.117483563721180,0.048972371965647,0.108671106398106,0.071617104113102,0.033768460154533,-0.037032280117273,0.094965681433678,-0.055754560977221,0.060134921222925,-0.032501045614481,0.047156699001789,0.034710694104433,-0.007337000686675,0.082785382866859,0.033691864460707));
res += mul(Get(s2,dx,dy), float4x4(0.084049791097641,-0.055229414254427,0.058711566030979,-0.158747151494026,-0.225291624665260,-0.041624583303928,-0.046239919960499,0.025282336398959,0.124431937932968,-0.004647897090763,-0.020232861861587,0.164920985698700,-0.158356264233589,-0.177575483918190,0.090892933309078,0.056120362132788));
res += mul(Get(s3,-dx,-dy), float4x4(0.141214802861214,0.095289565622807,-0.061889056116343,-0.011790062300861,0.036922655999660,0.183256134390831,-0.020601173862815,-0.035158760845661,-0.000720935175195,-0.146392926573753,0.098402477800846,0.021887999027967,-0.007080368231982,-0.058794777840376,-0.020465705543756,0.126013666391373));
res += mul(Get(s3,-dx,0), float4x4(-0.131707251071930,0.044368054717779,-0.117545805871487,-0.037717055529356,0.059259161353111,-0.108426965773106,0.040051769465208,0.080863572657108,0.158283248543739,-0.100982636213303,-0.184242218732834,0.028533386066556,-0.089062221348286,-0.070540755987167,-0.007803888060153,-0.070985063910484));
res += mul(Get(s3,-dx,dy), float4x4(0.029041331261396,-0.020448129624128,-0.038972016423941,-0.134451821446419,-0.179334938526154,-0.142725497484207,-0.060946177691221,0.103490553796291,-0.046206548810005,-0.042111892253160,0.155872017145157,-0.032114021480083,0.060225103050470,-0.052140071988106,0.065027758479118,-0.015852775424719));
res += mul(Get(s3,0,-dy), float4x4(0.053430356085300,-0.090264931321144,-0.099425993859768,0.109655752778053,-0.038082253187895,0.014600178226829,0.090045511722565,-0.116498693823814,-0.254061460494995,0.010121020488441,0.000089190551080,-0.145573332905769,0.046928063035011,0.122523523867130,-0.048746585845947,-0.039808731526136));
res += mul(Get(s3,0,0), float4x4(-0.112525314092636,0.013296625576913,0.100407786667347,-0.065562032163143,0.075158968567848,0.013057881034911,0.042557701468468,-0.011772559955716,-0.011218626052141,0.128814369440079,-0.031766682863235,-0.120243676006794,0.087418094277382,0.067737586796284,-0.076722808182240,-0.064471147954464));
res += mul(Get(s3,0,dy), float4x4(-0.174056217074394,-0.144217073917389,0.092849440872669,0.044220488518476,-0.103178128600121,-0.007572031579912,0.072208508849144,-0.102682888507843,0.078937917947769,0.010763175785542,-0.095121286809444,-0.200917333364487,-0.045406136661768,-0.223587572574615,0.242943838238716,-0.004390308167785));
res += mul(Get(s3,dx,-dy), float4x4(-0.118505246937275,-0.054167203605175,-0.019331688061357,-0.102024652063847,-0.104525178670883,0.176069542765617,-0.099710166454315,-0.096962898969650,-0.003993204794824,-0.041114397346973,-0.083459667861462,-0.039637465029955,-0.051841460168362,0.165021806955338,0.125068262219429,0.036112245172262));
res += mul(Get(s3,dx,0), float4x4(-0.020652839913964,0.037799935787916,-0.063319653272629,-0.000327059999108,0.089212797582150,-0.072907008230686,-0.136724352836609,0.073846437036991,0.121481597423553,0.058033425360918,0.126137316226959,-0.064943239092827,-0.059728901833296,0.007480485364795,-0.047152999788523,0.096883609890938));
res += mul(Get(s3,dx,dy), float4x4(0.087028943002224,-0.004561102949083,-0.019954176619649,0.029299154877663,0.037495713680983,0.012813540175557,-0.019871484488249,0.120569095015526,0.028947018086910,0.001199806691147,0.041906125843525,0.074609234929085,0.055312521755695,0.268500715494156,-0.129530921578407,-0.007575327530503));
res = max(float4(0,0,0,0), res);
return res;
}