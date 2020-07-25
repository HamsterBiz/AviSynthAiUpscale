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
res += mul(Get(s0,-dx,-dy), float4x4(-0.114994458854198,-0.093462094664574,0.058040749281645,-0.067908279597759,0.027680365368724,-0.008791001513600,0.126000478863716,0.073264144361019,0.059239525347948,0.131300345063210,-0.020683089271188,0.099864341318607,0.023686438798904,0.045242130756378,0.078476436436176,-0.029002038761973));
res += mul(Get(s0,-dx,0), float4x4(0.130322188138962,-0.054235994815826,0.031665883958340,0.062672048807144,0.057517770677805,0.014533102512360,0.062363676726818,-0.101682610809803,0.052546143531799,-0.089011654257774,-0.118668407201767,-0.001666559604928,-0.020998403429985,0.172931283712387,0.054307397454977,-0.131602212786674));
res += mul(Get(s0,-dx,dy), float4x4(0.003462269203737,0.074399575591087,0.114246726036072,0.020535362884402,-0.058560624718666,0.060041800141335,0.170063883066177,-0.118435166776180,-0.017252143472433,-0.000875287107192,-0.033120919018984,0.086171969771385,0.053190667182207,0.065692417323589,-0.178213179111481,-0.063652463257313));
res += mul(Get(s0,0,-dy), float4x4(0.036388445645571,-0.099450036883354,-0.073089353740215,0.110812716186047,-0.044991005212069,0.005202889442444,0.041186641901731,0.135799065232277,-0.112400196492672,0.184893444180489,-0.118504278361797,-0.066246286034584,-0.001694628270343,-0.017582662403584,-0.130847677588463,-0.040416691452265));
res += mul(Get(s0,0,0), float4x4(0.276012063026428,0.006501460447907,0.009290894493461,-0.030914718285203,0.131010174751282,0.090313874185085,-0.055662959814072,-0.019673923030496,0.184979513287544,-0.079958669841290,-0.063265383243561,-0.048111949115992,-0.012289159931242,-0.141873225569725,-0.059719633311033,-0.121509745717049));
res += mul(Get(s0,0,dy), float4x4(-0.163763999938965,0.033283993601799,-0.068217754364014,0.123103439807892,0.059941954910755,0.032559551298618,-0.036308042705059,-0.066169753670692,-0.041107915341854,0.028216019272804,0.056804142892361,-0.072990082204342,-0.131040051579475,0.019591215997934,-0.061884701251984,0.043653812259436));
res += mul(Get(s0,dx,-dy), float4x4(0.019220782443881,-0.122100844979286,-0.059305943548679,-0.045690782368183,-0.116700626909733,0.043398249894381,-0.092743270099163,-0.032581139355898,-0.069747619330883,0.006636605132371,0.137856855988503,0.056347377598286,-0.056574750691652,0.019540956243873,-0.117074631154537,0.023183034732938));
res += mul(Get(s0,dx,0), float4x4(-0.044013559818268,0.079230830073357,-0.219403788447380,-0.080817095935345,0.052419085055590,0.037437912076712,0.058184176683426,-0.069906279444695,-0.068185500800610,-0.053961917757988,0.048618771135807,-0.080487906932831,0.008482500910759,-0.054931662976742,-0.048301719129086,-0.044556703418493));
res += mul(Get(s0,dx,dy), float4x4(0.067883223295212,-0.016312155872583,0.062835440039635,-0.140568032860756,-0.166778296232224,-0.027560414746404,-0.070868961513042,-0.013061948120594,-0.017116395756602,-0.032380964607000,0.030309086665511,-0.173646360635757,-0.036235101521015,0.075220860540867,-0.066826492547989,-0.099713012576103));
res += mul(Get(s1,-dx,-dy), float4x4(0.091078795492649,0.025347474962473,0.086869291961193,0.020995628088713,-0.105382278561592,-0.128727898001671,-0.029113974422216,-0.074671573936939,0.025045262649655,-0.046796478331089,0.014285345561802,0.015220129862428,-0.023133996874094,-0.094563692808151,0.094218000769615,-0.048245344310999));
res += mul(Get(s1,-dx,0), float4x4(-0.107970222830772,0.056414045393467,-0.055355198681355,-0.013882035389543,0.076534986495972,0.015213535167277,-0.045940574258566,0.022333847358823,0.083073742687702,-0.027457498013973,-0.090404175221920,-0.158264532685280,-0.161300078034401,0.031086385250092,0.106011435389519,0.221109718084335));
res += mul(Get(s1,-dx,dy), float4x4(-0.048459894955158,-0.026041900739074,-0.061651423573494,-0.124311737716198,-0.078515455126762,0.025288352742791,-0.064273618161678,-0.117373839020729,0.149227634072304,-0.075239956378937,0.056643627583981,-0.074525572359562,0.029440192505717,0.014771644957364,0.028811272233725,-0.013148080557585));
res += mul(Get(s1,0,-dy), float4x4(0.022639216855168,-0.048709772527218,0.000479691254441,0.118621438741684,-0.050880588591099,-0.069257460534573,0.056256871670485,-0.033638380467892,0.014785002917051,-0.031944036483765,0.030581854283810,-0.045153055340052,-0.078244268894196,-0.068974591791630,-0.119432829320431,0.078163467347622));
res += mul(Get(s1,0,0), float4x4(-0.102018848061562,0.014139449223876,-0.028250379487872,0.059869319200516,0.103224091231823,0.031397879123688,-0.008647757582366,0.006345965433866,0.026838190853596,0.140094965696335,0.035245094448328,0.021545939147472,0.003990430850536,0.097728289663792,0.098376229405403,0.022777412086725));
res += mul(Get(s1,0,dy), float4x4(-0.001173507305793,-0.104043975472450,0.015004197135568,-0.109848238527775,0.075435929000378,0.089296035468578,-0.114167824387550,-0.028417687863111,0.132258519530296,-0.032736461609602,0.109010353684425,0.013814401812851,0.158793404698372,0.006122423801571,0.011755789630115,-0.086291745305061));
res += mul(Get(s1,dx,-dy), float4x4(0.144390791654587,-0.056065332144499,-0.002133050467819,0.192613542079926,-0.040059015154839,0.051415987312794,0.160391733050346,0.003319365205243,0.049129959195852,-0.008743522688746,0.023211622610688,-0.014483436010778,0.026520958170295,0.019794322550297,0.019294824451208,0.127616301178932));
res += mul(Get(s1,dx,0), float4x4(-0.137811481952667,0.090151369571686,-0.116245791316032,0.013889127410948,0.095828212797642,-0.118125818669796,-0.021879876032472,-0.045736331492662,0.019946560263634,-0.003546741092578,-0.098724529147148,0.123415991663933,0.130781456828117,0.024900076910853,0.110973678529263,-0.091603681445122));
res += mul(Get(s1,dx,dy), float4x4(0.012060097418725,-0.173959821462631,0.025850746780634,-0.050880402326584,-0.030128955841064,-0.051337059587240,0.018035825341940,-0.006766232196242,0.004985958803445,-0.132418900728226,0.003133519785479,0.046311400830746,-0.057458054274321,-0.023603547364473,0.033796340227127,-0.024318970739841));
res += mul(Get(s2,-dx,-dy), float4x4(0.189209744334221,-0.133656904101372,-0.275916814804077,0.061031781136990,-0.100360304117203,0.101855486631393,-0.001737919403240,-0.053278584033251,-0.049614533782005,-0.020433789119124,0.027619300410151,-0.138133108615875,-0.014980443753302,0.019872840493917,-0.089914202690125,-0.003757318481803));
res += mul(Get(s2,-dx,0), float4x4(-0.196528971195221,0.034460905939341,-0.088640332221985,0.011107122525573,-0.081439115107059,0.100634552538395,-0.039180133491755,-0.055698305368423,-0.070917613804340,-0.019462535157800,-0.037359632551670,-0.052039626985788,-0.002325842157006,-0.022391004487872,-0.019035041332245,0.045657906681299));
res += mul(Get(s2,-dx,dy), float4x4(0.023135449737310,-0.146562740206718,-0.042221572250128,0.018518615514040,-0.065849058330059,0.102313548326492,-0.062360998243093,-0.039531800895929,-0.198321849107742,-0.035987805575132,0.029088594019413,-0.089119650423527,0.102750949561596,0.022522469982505,0.085304416716099,-0.062291361391544));
res += mul(Get(s2,0,-dy), float4x4(0.037701055407524,0.041831318289042,-0.060601532459259,0.001988646807149,0.118514284491539,-0.127084031701088,-0.007748474832624,-0.046325176954269,0.096546098589897,0.058221008628607,0.017078647390008,-0.183790490031242,-0.108381018042564,0.069396011531353,0.028560157865286,0.096314541995525));
res += mul(Get(s2,0,0), float4x4(0.127100184559822,-0.003686255542561,0.059187211096287,0.002199211623520,0.107372172176838,0.020802397280931,-0.112529225647449,-0.104287154972553,-0.081726931035519,0.081927806138992,-0.011279665865004,0.201472178101540,-0.011526209302247,-0.026242714375257,0.031592562794685,0.096790209412575));
res += mul(Get(s2,0,dy), float4x4(0.014853259548545,0.020299479365349,0.067598797380924,0.153303161263466,0.135557934641838,-0.022875184193254,-0.015074983239174,0.135905742645264,-0.024786384776235,0.084932520985603,0.009674889966846,-0.021321522071958,0.043161552399397,-0.023922581225634,-0.032711327075958,-0.000272119417787));
res += mul(Get(s2,dx,-dy), float4x4(-0.145123556256294,-0.079713277518749,-0.040266137570143,-0.059297569096088,-0.055763158947229,0.001247431733645,0.095119565725327,-0.067262396216393,0.020459406077862,0.031898800283670,0.047263372689486,0.065120987594128,0.029961762949824,-0.018544357270002,-0.056505579501390,0.048958033323288));
res += mul(Get(s2,dx,0), float4x4(0.057400375604630,0.007211044430733,0.080899894237518,-0.044698510318995,0.031773310154676,-0.069130435585976,0.102198801934719,-0.062267400324345,-0.005548354238272,0.014908062294126,0.058510534465313,0.013457934372127,-0.056832477450371,0.020940741524100,0.153554767370224,-0.085060074925423));
res += mul(Get(s2,dx,dy), float4x4(-0.088543474674225,-0.081565745174885,-0.053036719560623,-0.137831673026085,0.091429844498634,0.030617333948612,-0.102554187178612,-0.022848250344396,-0.093550436198711,-0.080462589859962,-0.051391370594501,-0.063833393156528,0.039479505270720,0.152530640363693,-0.006087717134506,0.044731520116329));
res += mul(Get(s3,-dx,-dy), float4x4(-0.216368958353996,-0.015043005347252,0.001872744061984,0.033802118152380,-0.033956091850996,0.038194775581360,-0.046003997325897,-0.104346141219139,0.050621226429939,-0.044477317482233,-0.145170018076897,-0.129304692149162,-0.029552942141891,0.063380822539330,-0.020928137004375,-0.061552420258522));
res += mul(Get(s3,-dx,0), float4x4(-0.068097084760666,0.132658198475838,-0.020152382552624,0.166932567954063,0.245190188288689,-0.053440887480974,0.063850954174995,-0.122555434703827,0.053711317479610,-0.098302319645882,-0.108249381184578,-0.002846820978448,0.094433292746544,0.053197257220745,-0.048712987452745,0.183708176016808));
res += mul(Get(s3,-dx,dy), float4x4(0.126240089535713,-0.014200995676219,0.009296649135649,-0.038412686437368,-0.063249692320824,-0.068715259432793,0.163994878530502,0.062529332935810,0.069208681583405,-0.166430264711380,-0.037460319697857,-0.040677603334188,0.035455938428640,-0.004375482443720,0.087673410773277,0.071095913648605));
res += mul(Get(s3,0,-dy), float4x4(0.053822848945856,0.061570033431053,-0.025487365201116,0.122261725366116,-0.027060296386480,0.052439097315073,-0.056047242134809,0.063568122684956,-0.077876046299934,-0.029299963265657,-0.001645964221098,-0.004347550217062,-0.037718605250120,0.243983119726181,0.160306572914124,0.049825597554445));
res += mul(Get(s3,0,0), float4x4(0.027610359713435,0.031754922121763,-0.077702946960926,0.074435867369175,0.117211207747459,0.125126227736473,0.071406789124012,0.110129632055759,0.047177452594042,0.050857827067375,0.153666958212852,-0.018842933699489,0.017010569572449,-0.090026691555977,0.018163139000535,0.185542717576027));
res += mul(Get(s3,0,dy), float4x4(0.003986456897110,-0.082469776272774,0.012405561283231,0.072787307202816,-0.002701011020690,-0.160607218742371,-0.005639051552862,0.119354985654354,0.066647484898567,-0.074454553425312,0.026206770911813,-0.011535760015249,-0.030495930463076,-0.030809925869107,-0.021734220907092,-0.007765023503453));
res += mul(Get(s3,dx,-dy), float4x4(-0.035437665879726,-0.016342030838132,0.094512335956097,-0.011656633578241,0.128189250826836,-0.000899449107237,0.041915934532881,0.067909441888332,0.082077175378799,0.010892082937062,0.064712792634964,-0.013284346088767,0.004626076668501,-0.063049010932446,-0.059192307293415,-0.118489764630795));
res += mul(Get(s3,dx,0), float4x4(0.044678125530481,0.076596498489380,0.004085625521839,0.042831800878048,-0.060435689985752,0.225085884332657,-0.006425371859223,0.007037167903036,-0.088647350668907,0.063977710902691,0.093435697257519,0.117969267070293,0.156992971897125,-0.072958506643772,0.001242208527401,0.141490712761879));
res += mul(Get(s3,dx,dy), float4x4(0.119422584772110,0.073488146066666,-0.048556748777628,-0.027651170268655,-0.081976234912872,-0.036136448383331,-0.079793892800808,0.073028355836868,-0.005251944065094,-0.113044694066048,0.012908868491650,0.134599357843399,0.087646260857582,-0.018308905884624,-0.106362842023373,0.163988292217255));
return max(float4(0,0,0,0), res);
}