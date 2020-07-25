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
res += mul(Get(s0,-dx,-dy), float4x4(-0.060309208929539,0.241696402430534,-0.140440568327904,-0.078825429081917,-0.109927780926228,-0.049772057682276,-0.048022832721472,0.051728993654251,0.064737185835838,-0.081877671182156,-0.048365961760283,-0.051722660660744,-0.068402253091335,0.198299482464790,0.020680330693722,-0.082464955747128));
res += mul(Get(s0,-dx,0), float4x4(0.117589630186558,0.387982755899429,0.068040020763874,0.018719749525189,-0.029216066002846,-0.100379832088947,-0.097612075507641,0.081165492534637,-0.082244887948036,0.229542940855026,-0.052082441747189,-0.029521005228162,0.149462416768074,0.068988747894764,-0.103608407080173,-0.190637141466141));
res += mul(Get(s0,-dx,dy), float4x4(-0.028441479429603,-0.125516891479492,0.111524015665054,-0.142616391181946,-0.060146026313305,-0.055307991802692,0.091916725039482,0.092042647302151,0.040548533201218,0.039776198565960,-0.038464851677418,0.237490445375443,0.141962856054306,-0.011328587308526,-0.063085064291954,0.005474980454892));
res += mul(Get(s0,0,-dy), float4x4(-0.139275044202805,-0.069657772779465,0.153535962104797,-0.093638785183430,-0.045453675091267,0.073476321995258,0.050395965576172,-0.071118459105492,0.059016030281782,0.027305981144309,-0.128819450736046,-0.019207740202546,0.009787987917662,0.038127474486828,-0.067792929708958,-0.044898714870214));
res += mul(Get(s0,0,0), float4x4(0.094147831201553,-0.119336947798729,-0.068467371165752,-0.025888836011291,0.012590547092259,0.057917121797800,-0.004769962746650,-0.026677019894123,0.100399322807789,0.126843810081482,0.041163474321365,0.019256675615907,-0.043928515166044,0.112824305891991,-0.085725903511047,0.028808347880840));
res += mul(Get(s0,0,dy), float4x4(-0.162218719720840,-0.014536117203534,-0.162660136818886,0.071059152483940,-0.131617084145546,0.211856260895729,-0.020111016929150,-0.065742321312428,0.097910635173321,-0.186009109020233,0.128079071640968,-0.089635409414768,0.052559994161129,-0.040984716266394,0.038908302783966,0.008704658597708));
res += mul(Get(s0,dx,-dy), float4x4(-0.189112916588783,-0.140911936759949,0.139203086495399,-0.198203682899475,-0.122799456119537,0.003903573378921,-0.111010424792767,-0.079583108425140,-0.068489253520966,0.030173154547811,0.212711751461029,-0.073645949363708,-0.067519553005695,-0.008786189369857,-0.114749938249588,0.075014851987362));
res += mul(Get(s0,dx,0), float4x4(0.032776698470116,-0.065460547804832,-0.012315855361521,0.152529045939445,-0.215750783681870,-0.148175135254860,0.065865024924278,-0.000185512035387,-0.083766534924507,0.150407612323761,0.012910418212414,-0.096573010087013,-0.012861840426922,0.244158715009689,0.068647943437099,0.092681542038918));
res += mul(Get(s0,dx,dy), float4x4(-0.097876109182835,0.148039609193802,-0.136015832424164,-0.125447720289230,-0.039199542254210,0.092263936996460,-0.012024411931634,-0.017864195629954,0.006308698561043,-0.013762456364930,-0.093779385089874,0.012246446684003,-0.054576188325882,-0.048835493624210,0.081826023757458,-0.136385068297386));
res += mul(Get(s1,-dx,-dy), float4x4(0.010877251625061,0.096490867435932,0.106620997190475,-0.156310394406319,0.133385539054871,0.147106409072876,0.250134140253067,0.156606018543243,0.083768561482430,0.027342008426785,0.056672148406506,-0.116314500570297,0.030690491199493,-0.028038166463375,-0.046190537512302,-0.019326152279973));
res += mul(Get(s1,-dx,0), float4x4(0.116094715893269,0.083582535386086,-0.001955770421773,0.051573194563389,0.113431401550770,0.045843835920095,-0.048253986984491,-0.026500569656491,0.004056677222252,0.116224750876427,0.002828754950315,0.083914950489998,0.070539236068726,-0.197792738676071,0.037608232349157,-0.092085964977741));
res += mul(Get(s1,-dx,dy), float4x4(0.076389931142330,0.164248034358025,0.064272306859493,0.031492006033659,0.067209310829639,0.001499637728557,-0.057848259806633,-0.177814126014709,-0.050312377512455,-0.089854463934898,0.052873644977808,-0.157613545656204,0.085795283317566,0.186801269650459,0.102250672876835,-0.098880350589752));
res += mul(Get(s1,0,-dy), float4x4(0.117560148239136,0.053787823766470,0.185736879706383,-0.096366092562675,-0.057366821914911,-0.163596510887146,-0.126375049352646,0.104902192950249,0.006845436990261,-0.066159322857857,-0.156117722392082,0.067607171833515,-0.155617058277130,-0.039086271077394,-0.200133964419365,-0.061533302068710));
res += mul(Get(s1,0,0), float4x4(-0.094104699790478,-0.255688369274139,0.005502874031663,0.128105133771896,-0.053082093596458,0.189873218536377,0.079874306917191,-0.094177611172199,0.159556776285172,-0.094121821224689,0.003859312972054,0.023980831727386,0.054743893444538,0.020940672606230,-0.194667130708694,0.179351851344109));
res += mul(Get(s1,0,dy), float4x4(0.018496345728636,-0.088054917752743,-0.018228139728308,0.003463142085820,-0.216115370392799,0.027019008994102,-0.219495058059692,0.129699945449829,0.129392787814140,0.018957844004035,-0.174636408686638,-0.037213340401649,-0.089425310492516,-0.032074879854918,-0.203662112355232,-0.054017901420593));
res += mul(Get(s1,dx,-dy), float4x4(-0.101168967783451,0.055359710007906,0.182258874177933,0.012572765350342,-0.046031288802624,-0.158930018544197,-0.084224350750446,-0.061091519892216,-0.044139824807644,-0.061831519007683,0.046141915023327,-0.037639226764441,-0.036414906382561,0.112071454524994,0.077170051634312,-0.073282778263092));
res += mul(Get(s1,dx,0), float4x4(0.039592485874891,0.024736670777202,-0.258112370967865,0.028055837377906,-0.159435093402863,0.049376495182514,0.054579291492701,0.154062166810036,0.020870419219136,0.085183180868626,-0.067120768129826,0.187546715140343,0.085399389266968,-0.079054951667786,0.019306590780616,-0.046089403331280));
res += mul(Get(s1,dx,dy), float4x4(0.033508799970150,0.199233233928680,-0.046818144619465,0.077780231833458,0.095649406313896,0.011570848524570,-0.005829365458339,-0.084994077682495,-0.114444732666016,-0.106570765376091,0.049493625760078,-0.065646156668663,0.030729383230209,0.196230366826057,-0.100399799644947,0.056731298565865));
res += mul(Get(s2,-dx,-dy), float4x4(-0.016323948279023,0.183318808674812,0.152949735522270,-0.135243684053421,-0.218549281358719,0.016306454315782,-0.085048861801624,0.020421730354428,-0.023582931607962,0.062755957245827,-0.110235244035721,-0.005282556638122,0.038602925837040,-0.150004029273987,0.017573466524482,-0.076742477715015));
res += mul(Get(s2,-dx,0), float4x4(0.062652990221977,-0.223045766353607,0.018612988293171,0.062992706894875,0.018495120108128,-0.132931932806969,0.068341150879860,0.103897407650948,-0.053881198167801,0.118983626365662,-0.110482603311539,-0.086335927248001,-0.038252726197243,0.066557429730892,-0.019524896517396,-0.158168718218803));
res += mul(Get(s2,-dx,dy), float4x4(0.167663142085075,-0.018110640347004,-0.158692494034767,-0.137770429253578,-0.083661764860153,0.000412115477957,0.022661549970508,0.006158443633467,0.116423711180687,-0.085467822849751,0.089578367769718,-0.015763077884912,0.071577444672585,-0.002943685976788,-0.056628551334143,0.015644246712327));
res += mul(Get(s2,0,-dy), float4x4(-0.064198665320873,-0.049472685903311,-0.100526489317417,-0.013415683060884,0.103088319301605,0.021006938070059,0.020942920818925,0.107504859566689,0.045170940458775,-0.083892345428467,0.101245202124119,0.123215317726135,0.090297833085060,-0.127548769116402,0.065393716096878,-0.032809659838676));
res += mul(Get(s2,0,0), float4x4(-0.138477727770805,-0.004805834498256,-0.138987943530083,-0.190113469958305,-0.102603055536747,-0.093182839453220,0.018586929887533,-0.030148943886161,0.184935003519058,-0.036277528852224,-0.181868866086006,-0.041745807975531,0.106096379458904,-0.048829693347216,0.088149547576904,0.026077790185809));
res += mul(Get(s2,0,dy), float4x4(-0.119607388973236,-0.082890905439854,0.098085269331932,0.054742798209190,-0.010766697116196,-0.073493368923664,-0.025282492861152,-0.074774257838726,-0.032553710043430,0.137973666191101,-0.020173385739326,-0.066741988062859,0.043184995651245,-0.189297989010811,0.050940759480000,-0.149807617068291));
res += mul(Get(s2,dx,-dy), float4x4(-0.097153417766094,0.035067606717348,-0.061066627502441,0.071346327662468,-0.093157976865768,0.097128748893738,-0.128624111413956,-0.005652829539031,0.109737150371075,0.146867096424103,0.024139633402228,0.101924262940884,0.061839427798986,0.031539492309093,-0.028486248105764,0.135914608836174));
res += mul(Get(s2,dx,0), float4x4(-0.068959638476372,0.054833140224218,-0.119470722973347,-0.072878070175648,-0.067795731127262,0.081831924617290,0.035641100257635,-0.049000136554241,-0.215938732028008,-0.031629111617804,-0.065372556447983,0.010838780552149,-0.069686867296696,-0.032253436744213,0.093732200562954,0.043918125331402));
res += mul(Get(s2,dx,dy), float4x4(0.059330996125937,0.034475263208151,-0.059447091072798,0.032838877290487,-0.025287723168731,0.083422943949699,-0.092669300734997,0.073592320084572,0.065660580992699,-0.066328600049019,0.071807451546192,-0.038964122533798,-0.112675569951534,0.168460667133331,-0.093491367995739,-0.161009415984154));
res += mul(Get(s3,-dx,-dy), float4x4(-0.027360850945115,-0.138310208916664,0.013950926251709,0.107185378670692,-0.056806776672602,-0.098949022591114,0.039745837450027,0.042592834681273,-0.012957883998752,0.102725706994534,0.096989192068577,-0.092020459473133,0.116919122636318,-0.113299123942852,-0.077036119997501,0.008824796415865));
res += mul(Get(s3,-dx,0), float4x4(0.018874481320381,0.101874083280563,0.144870787858963,-0.061899669468403,-0.010529012419283,-0.095008216798306,-0.008442993275821,-0.071627840399742,0.030709626153111,0.010757246986032,-0.000763831718359,0.031845618039370,-0.070657320320606,0.022547544911504,-0.020531224086881,-0.059191633015871));
res += mul(Get(s3,-dx,dy), float4x4(0.097815677523613,0.015714403241873,-0.021255465224385,0.028459906578064,-0.022059423848987,0.028680615127087,0.023799723014235,0.067869201302528,0.030471418052912,0.075177162885666,-0.034809526056051,0.068616323173046,0.048529166728258,0.082042992115021,-0.038284379988909,0.051322031766176));
res += mul(Get(s3,0,-dy), float4x4(-0.081330865621567,0.010515153408051,-0.087714530527592,0.021276067942381,0.041568309068680,-0.100659862160683,0.116155780851841,0.015633352100849,0.123542837798595,-0.102236017584801,0.054529651999474,0.085255369544029,0.029342634603381,0.049535967409611,-0.087538242340088,-0.049528080970049));
res += mul(Get(s3,0,0), float4x4(-0.050575897097588,0.075758591294289,0.200960531830788,-0.091460391879082,0.134684786200523,0.038244154304266,-0.149710267782211,-0.101604774594307,0.112076930701733,0.004529828205705,0.108760453760624,0.000502478447743,0.143011718988419,-0.066554188728333,0.137364789843559,0.024685552343726));
res += mul(Get(s3,0,dy), float4x4(0.306009531021118,0.123349368572235,-0.027294823899865,-0.296450018882751,-0.174217149615288,0.045317441225052,0.020164899528027,0.086172536015511,-0.036903876811266,0.090242192149162,0.001512950286269,-0.024318208917975,-0.138334035873413,0.227270647883415,-0.166204601526260,0.079891629517078));
res += mul(Get(s3,dx,-dy), float4x4(-0.064053453505039,-0.108917392790318,0.044683806598186,0.054064325988293,0.208203196525574,-0.001269935979508,-0.206800088286400,0.048193939030170,-0.013380276970565,0.103210590779781,0.166095554828644,0.067244894802570,0.000065408697992,0.011309321038425,-0.050685290247202,0.095066100358963));
res += mul(Get(s3,dx,0), float4x4(0.197609066963196,0.138591751456261,-0.081134513020515,-0.035776704549789,0.079957142472267,0.031049359589815,-0.000059988058638,0.128831386566162,0.075485959649086,-0.010247079655528,-0.083681941032410,0.202082470059395,0.005503284279257,0.085190869867802,-0.099797949194908,0.060430534183979));
res += mul(Get(s3,dx,dy), float4x4(0.098872959613800,-0.122492171823978,0.028286211192608,-0.062781505286694,-0.056526962667704,-0.150282099843025,0.194563895463943,-0.093231789767742,0.012380089610815,-0.192603275179863,-0.205476447939873,0.091072157025337,-0.240937605500221,-0.044780608266592,-0.048767529428005,0.141719490289688));
res = max(float4(0,0,0,0), res);
return res;
}