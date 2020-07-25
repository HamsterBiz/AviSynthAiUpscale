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
res += mul(Get(s0,-dx,-dy), float4x4(0.018103770911694,0.066716670989990,0.060944996774197,-0.000837304629385,-0.027786362916231,0.018820259720087,0.037402048707008,-0.035770665854216,0.099716983735561,-0.003449527313933,0.028520058840513,-0.063166320323944,0.062169890850782,-0.016539905220270,0.042427759617567,0.014928649179637));
res += mul(Get(s0,-dx,0), float4x4(0.050205606967211,0.144592121243477,0.057675767689943,0.073817498981953,0.092904895544052,-0.047825697809458,-0.025329548865557,0.029707964509726,-0.028113154694438,0.049601837992668,0.006566622294486,-0.072896666824818,-0.040935367345810,-0.006200755015016,0.056218020617962,0.014991519041359));
res += mul(Get(s0,-dx,dy), float4x4(-0.037136975675821,0.095044739544392,-0.015032811090350,0.176379531621933,0.023699380457401,-0.015282072126865,-0.007336289621890,-0.042549040168524,-0.056392420083284,0.050131242722273,-0.033869333565235,-0.101866550743580,0.034261610358953,-0.010242591612041,0.001130289980210,0.062792077660561));
res += mul(Get(s0,0,-dy), float4x4(0.018332168459892,-0.042794913053513,-0.102704077959061,0.132028132677078,-0.018063064664602,0.033838983625174,0.035915698856115,0.036418348550797,0.096666738390923,0.030556457117200,-0.052169002592564,-0.023819504305720,0.035352554172277,-0.038278762251139,0.039597466588020,-0.094332739710808));
res += mul(Get(s0,0,0), float4x4(0.013769030570984,0.117840141057968,-0.146955609321594,-0.048758991062641,0.025471672415733,-0.038233298808336,-0.055197007954121,0.065203517675400,0.047272142022848,0.102776877582073,-0.006480319425464,-0.076995134353638,-0.063732147216797,0.001965146046132,0.200065791606903,-0.093205638229847));
res += mul(Get(s0,0,dy), float4x4(-0.117747522890568,0.117008738219738,0.130709499120712,0.059633892029524,-0.046574823558331,-0.035939298570156,-0.023745149374008,0.005647502373904,0.038105141371489,0.089668482542038,0.029933791607618,-0.093234539031982,0.094673760235310,-0.046894636005163,-0.031622964888811,0.095067977905273));
res += mul(Get(s0,dx,-dy), float4x4(-0.039424352347851,-0.026138767600060,-0.004456095863134,-0.015698583796620,-0.029792264103889,0.059140417724848,0.072902165353298,-0.005295288283378,-0.000528340751771,0.027373395860195,-0.006844333838671,-0.008448065258563,0.060697223991156,-0.110125802457333,0.011034922674298,-0.032168872654438));
res += mul(Get(s0,dx,0), float4x4(-0.049587767571211,0.038679670542479,0.104020744562149,0.062312077730894,-0.022761594504118,0.034198556095362,0.073317289352417,0.046807251870632,-0.044088032096624,0.025845086202025,-0.022575365379453,0.017897998914123,0.079803653061390,-0.001657331129536,0.004530809354037,-0.053864859044552));
res += mul(Get(s0,dx,dy), float4x4(-0.047551024705172,0.033175982534885,0.055548023432493,0.051085270941257,-0.055523283779621,0.081116527318954,0.067582435905933,0.033865656703711,-0.003439530963078,0.023056091740727,-0.042482804507017,-0.001543175661936,0.105563417077065,-0.040408372879028,-0.070180952548981,0.134953379631042));
res += mul(Get(s1,-dx,-dy), float4x4(-0.020503051578999,-0.066428534686565,-0.016509624198079,0.017923315986991,-0.033315736800432,-0.062196474522352,-0.033163420855999,0.008195382542908,-0.006236671470106,-0.019760765135288,-0.125194877386093,-0.052324000746012,-0.017380652949214,0.022601801902056,0.060647636651993,0.004604190122336));
res += mul(Get(s1,-dx,0), float4x4(0.037716135382652,-0.014476490207016,0.042379595339298,-0.004397842101753,-0.032032079994678,0.001762501662597,-0.022281281650066,0.002174778841436,-0.041399981826544,-0.003471550764516,0.002718206262216,-0.105382137000561,-0.033970616757870,-0.050281334668398,0.011760985478759,0.086385689675808));
res += mul(Get(s1,-dx,dy), float4x4(-0.039302669465542,-0.032479006797075,-0.030611077323556,-0.064765453338623,-0.000218718807446,0.040813416242599,0.004152008332312,-0.005348308011889,-0.135825306177139,0.060599587857723,-0.103040188550949,-0.078846305608749,-0.004612638149410,-0.031602323055267,-0.108992516994476,0.179740101099014));
res += mul(Get(s1,0,-dy), float4x4(-0.001286873128265,-0.046189095824957,0.082222066819668,-0.013105456717312,0.019504925236106,-0.052485369145870,-0.069533117115498,-0.075061403214931,0.059047948569059,0.057056088000536,0.015274213626981,-0.054404426366091,0.060422599315643,0.006326823029667,0.080298759043217,-0.132101148366928));
res += mul(Get(s1,0,0), float4x4(0.138683810830116,0.000412293942645,0.182436272501945,-0.026885217055678,-0.036594700068235,0.013123488985002,-0.096444077789783,-0.049467206001282,0.034611850976944,0.019897179678082,0.086509205400944,-0.069742321968079,-0.039035968482494,-0.020187133923173,0.051679719239473,-0.029873928055167));
res += mul(Get(s1,0,dy), float4x4(0.100897498428822,-0.005969719495624,0.117409355938435,-0.042912986129522,0.030005607753992,0.023458722978830,-0.064403682947159,-0.005439658183604,-0.039062071591616,0.070989705622196,-0.081864096224308,-0.128100126981735,-0.046482902020216,0.018573718145490,-0.152622565627098,0.026435179635882));
res += mul(Get(s1,dx,-dy), float4x4(-0.044502012431622,-0.014595003798604,0.049005150794983,0.067305900156498,-0.019074603915215,-0.051578342914581,-0.033401515334845,-0.109802603721619,0.022982794791460,0.087935045361519,0.002464969875291,-0.057493411004543,-0.057872146368027,-0.006477142218500,0.047794748097658,-0.029024846851826));
res += mul(Get(s1,dx,0), float4x4(0.069497130811214,-0.038807664066553,-0.041904792189598,0.191818580031395,-0.113696649670601,-0.075703382492065,0.032779250293970,-0.059533506631851,-0.048188861459494,-0.011464608833194,-0.011986305005848,-0.067625366151333,0.000021700630896,0.094742678105831,0.094460323452950,-0.020665213465691));
res += mul(Get(s1,dx,dy), float4x4(0.047856677323580,-0.075040891766548,0.027796579524875,0.202496618032455,-0.073754325509071,-0.034185409545898,-0.046293456107378,-0.042679265141487,-0.069130748510361,0.023045929148793,-0.015244067646563,-0.077910594642162,0.030522648245096,0.129092320799828,0.029671473428607,-0.014725278131664));
res += mul(Get(s2,-dx,-dy), float4x4(0.021801300346851,-0.062621809542179,-0.013462221249938,-0.066950611770153,-0.062710307538509,-0.001479557948187,-0.006707453168929,0.012822373770177,0.017522923648357,-0.026660567149520,0.038687031716108,-0.035268004983664,0.125070020556450,-0.020378269255161,-0.008312730118632,-0.002335941186175));
res += mul(Get(s2,-dx,0), float4x4(0.037302002310753,0.052972499281168,-0.000702950521372,-0.059419855475426,0.076106503605843,-0.045786835253239,-0.055738035589457,0.116878345608711,0.034723326563835,0.040261808782816,0.090985991060734,-0.050461631268263,0.139636173844337,0.131413996219635,-0.105736277997494,-0.065058842301369));
res += mul(Get(s2,-dx,dy), float4x4(0.017107238993049,0.034116040915251,0.046125311404467,-0.109937220811844,-0.022339919582009,0.015021284110844,0.038281179964542,0.044469401240349,0.004784386605024,0.001608460908756,0.061333168298006,-0.053078319877386,-0.010186974890530,0.134372547268867,-0.041825231164694,-0.088159672915936));
res += mul(Get(s2,0,-dy), float4x4(0.025572465732694,-0.052015136927366,0.104978896677494,-0.031321823596954,0.045657914131880,0.011221408843994,0.046918213367462,0.002622593194246,0.052674867212772,-0.028075870126486,0.071674995124340,-0.011106422170997,0.053375195711851,-0.060107890516520,0.040173839777708,0.027724042534828));
res += mul(Get(s2,0,0), float4x4(0.092531390488148,-0.018677530810237,-0.095846027135849,0.055677164345980,0.047237817198038,0.031945105642080,0.120048336684704,0.042812954634428,0.070969894528389,0.008676626719534,0.071088135242462,0.035853970795870,0.055588524788618,0.009152421727777,-0.044149693101645,0.037584096193314));
res += mul(Get(s2,0,dy), float4x4(0.065901957452297,-0.109992071986198,-0.064565025269985,0.003984879702330,-0.032883167266846,0.076066330075264,0.067067258059978,0.059155002236366,0.061870582401752,-0.026018358767033,-0.004208121914417,-0.002884607762098,-0.035769470036030,0.079483978450298,0.009445986710489,-0.030680822208524));
res += mul(Get(s2,dx,-dy), float4x4(0.000720690819435,-0.090679802000523,0.075313642621040,-0.022109692916274,-0.047768924385309,-0.016146212816238,-0.074551388621330,0.030978176742792,0.033525928854942,0.005574271082878,0.024355772882700,0.057562865316868,0.011039508506656,-0.024776851758361,0.022089455276728,-0.059070847928524));
res += mul(Get(s2,dx,0), float4x4(-0.062882639467716,-0.039166744798422,0.069182276725769,0.055229328572750,0.014040714129806,-0.023660935461521,0.068886488676071,-0.007443481124938,0.078375957906246,0.068583108484745,0.035853125154972,0.046052660793066,0.018519368022680,-0.002507216762751,0.005764574743807,0.014614707790315));
res += mul(Get(s2,dx,dy), float4x4(0.024994311854243,-0.059249278157949,0.054198961704969,0.013540545478463,-0.073247030377388,0.049777202308178,0.064545154571533,-0.043259769678116,0.032737903296947,-0.014347716234624,-0.042705956846476,0.030968332663178,0.022228155285120,0.034208927303553,-0.005442640744150,-0.026070039719343));
res += mul(Get(s3,-dx,-dy), float4x4(0.038240641355515,-0.002932610921562,-0.010574588552117,0.013363830745220,0.071088470518589,-0.013821864500642,-0.122250832617283,-0.017533861100674,0.072015158832073,0.016227381303906,0.067310161888599,0.069949887692928,-0.043691582977772,-0.021685918793082,0.013060338795185,0.010629169642925));
res += mul(Get(s3,-dx,0), float4x4(-0.012849566526711,0.052762288600206,0.063867554068565,-0.042993459850550,0.022527948021889,-0.075184412300587,-0.050726633518934,-0.024644026532769,0.050968218594790,-0.117422424256802,0.035533443093300,0.040785927325487,-0.104136601090431,0.000740168965422,0.029621893540025,0.019432419911027));
res += mul(Get(s3,-dx,dy), float4x4(-0.112813062965870,-0.033929638564587,0.051346339285374,0.007114158011973,0.120468117296696,0.005002439487725,0.018626276403666,-0.029167307540774,0.168277695775032,-0.081417739391327,-0.024774417281151,0.059096511453390,-0.157126471400261,-0.041678499430418,0.011227752082050,0.075959727168083));
res += mul(Get(s3,0,-dy), float4x4(0.037095244973898,-0.029450759291649,-0.054857227951288,0.061306249350309,-0.021931588649750,-0.010447900742292,-0.023191673681140,-0.077348537743092,0.049377832561731,0.023311950266361,-0.001920941867866,0.087945878505707,0.061558254063129,0.028921967372298,-0.030764274299145,0.018555648624897));
res += mul(Get(s3,0,0), float4x4(0.087101370096207,0.101722538471222,-0.036776695400476,-0.030722295865417,0.085590459406376,-0.009883802384138,0.001197096658871,0.012366780079901,0.037703562527895,-0.105322748422623,0.032518815249205,0.097653351724148,-0.036053929477930,0.013869478367269,0.123707994818687,-0.090488411486149));
res += mul(Get(s3,0,dy), float4x4(-0.051159963011742,0.053874172270298,0.078607119619846,-0.053300973027945,0.187003731727600,-0.033860296010971,-0.089733563363552,0.043375663459301,0.123329885303974,-0.034557841718197,-0.013989807106555,-0.003979646600783,-0.163024753332138,0.040484707802534,0.095145098865032,-0.069996379315853));
res += mul(Get(s3,dx,-dy), float4x4(0.006821893155575,-0.018654229119420,-0.024490863084793,0.018380753695965,-0.031039962545037,0.023518338799477,0.000301316642435,-0.057990029454231,0.024483216926455,0.067036211490631,0.048640396445990,0.012681631371379,-0.078093826770782,0.082981802523136,-0.020318923518062,0.103717125952244));
res += mul(Get(s3,dx,0), float4x4(0.039410665631294,0.033625949174166,-0.058628212660551,0.033378634601831,0.036692772060633,0.020347343757749,-0.083369873464108,0.054878041148186,0.055293548852205,-0.069914728403091,0.011665104888380,-0.002863056026399,-0.008918425999582,-0.028259363025427,-0.008039616048336,-0.013074460439384));
res += mul(Get(s3,dx,dy), float4x4(-0.055428057909012,0.048648525029421,0.005067950114608,-0.003751326585189,0.126923263072968,-0.002537543885410,-0.076443828642368,0.102873779833317,0.111170485615730,0.010553030297160,-0.017275692895055,-0.011966756545007,-0.052806727588177,-0.008478178642690,0.067169770598412,-0.034334100782871));
return max(float4(0,0,0,0), res);
}