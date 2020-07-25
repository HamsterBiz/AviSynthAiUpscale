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
res += mul(Get(s0,-dx,-dy), float4x4(-0.021653043106198,0.044658660888672,-0.045817647129297,-0.032035548239946,0.067872717976570,0.086046360433102,0.019656416028738,-0.112301625311375,0.004800922237337,0.015713194385171,-0.002951956121251,0.050802797079086,-0.017014302313328,0.061643555760384,-0.027643380686641,-0.030576730147004));
res += mul(Get(s0,-dx,0), float4x4(-0.000871446798556,0.099588014185429,-0.019265914335847,-0.061152588576078,0.041426088660955,0.008547123521566,0.046180076897144,-0.046696916222572,0.024229746311903,-0.017515886574984,0.075380049645901,0.010311525315046,0.045711405575275,0.105635337531567,-0.043695673346519,-0.016698837280273));
res += mul(Get(s0,-dx,dy), float4x4(0.010897867381573,0.064446292817593,-0.002097303979099,-0.059370525181293,0.012924294918776,0.008456159383059,0.025051044300199,0.027959782630205,0.008238893002272,-0.015743097290397,0.051548629999161,-0.087965764105320,0.039382655173540,0.145591557025909,-0.013602299615741,-0.001652765553445));
res += mul(Get(s0,0,-dy), float4x4(-0.005293244961649,0.013657982461154,0.011032616719604,-0.017360528931022,-0.108497448265553,0.053518526256084,-0.045498404651880,-0.112885303795338,0.008497193455696,0.026868131011724,-0.024192573502660,0.079678989946842,-0.037432532757521,-0.006256232038140,-0.032169505953789,-0.016165070235729));
res += mul(Get(s0,0,0), float4x4(0.002503495663404,-0.033257260918617,0.013671180233359,-0.062033105641603,0.204966083168983,0.048723682761192,0.080897048115730,-0.165244072675705,0.013569072820246,0.084002628922462,-0.000281503598671,-0.052156414836645,-0.024651134386659,-0.001768424524926,-0.111644342541695,0.010507021099329));
res += mul(Get(s0,0,dy), float4x4(0.033310998231173,-0.026770245283842,0.015754202380776,0.057694751769304,0.013248072005808,-0.001097019063309,0.054925043135881,0.186343625187874,-0.028995089232922,0.016690229997039,-0.050339136272669,-0.063098102807999,0.050935383886099,0.040897741913795,-0.000719703384675,-0.016974953934550));
res += mul(Get(s0,dx,-dy), float4x4(-0.013587515801191,-0.027367876842618,-0.036900024861097,0.053163081407547,0.198735728859901,0.001126492628828,0.060745347291231,-0.032025467604399,-0.037020448595285,-0.065481878817081,0.007418265566230,0.094016075134277,-0.045906785875559,-0.035562787204981,-0.025785796344280,-0.022750113159418));
res += mul(Get(s0,dx,0), float4x4(-0.018530819565058,-0.047793135046959,-0.018943505361676,0.042776413261890,0.132572963833809,-0.007822169922292,-0.019277349114418,0.045927651226521,0.003369181649759,0.038462467491627,-0.016489315778017,0.023716829717159,0.051652472466230,-0.050362389534712,0.021725835278630,0.041853308677673));
res += mul(Get(s0,dx,dy), float4x4(-0.009216119535267,-0.021940125152469,-0.033245813101530,0.198179304599762,-0.034933656454086,-0.030975474044681,0.011857068166137,0.036414932459593,0.007865870371461,-0.008023115806282,0.001443312736228,-0.044449828565121,0.051527865231037,-0.064366884529591,0.076378278434277,0.111638046801090));
res += mul(Get(s1,-dx,-dy), float4x4(-0.035636521875858,-0.053022913634777,0.020715964958072,-0.025488546118140,-0.079574778676033,0.014305682852864,0.073518201708794,-0.039289586246014,-0.018601289018989,0.046950291842222,-0.004374323412776,-0.080624692142010,-0.133340343832970,0.012809820473194,-0.038881573826075,0.017951387912035));
res += mul(Get(s1,-dx,0), float4x4(0.005642521660775,-0.062527053058147,0.045972023159266,0.037133626639843,-0.065359011292458,0.005262920632958,0.046437297016382,0.005315075628459,-0.055603798478842,0.026731414720416,0.011751067824662,-0.032870128750801,0.002984155900776,0.057237066328526,0.037599157541990,0.041612267494202));
res += mul(Get(s1,-dx,dy), float4x4(-0.032545153051615,-0.017891364172101,0.028817104175687,0.046736750751734,0.012462526559830,-0.004688945133239,0.018062649294734,0.025617789477110,0.000518230081070,0.009679458104074,-0.066154181957245,0.001599981216714,-0.039592023938894,0.049418844282627,-0.015080407261848,-0.037525866180658));
res += mul(Get(s1,0,-dy), float4x4(0.030952248722315,0.069630637764931,0.055703029036522,-0.035513803362846,0.049533400684595,0.074962012469769,0.172542750835419,-0.076516531407833,-0.005383200943470,0.046529125422239,0.082738071680069,-0.048139825463295,-0.118579894304276,0.022476760670543,-0.061058990657330,0.050201646983624));
res += mul(Get(s1,0,0), float4x4(-0.069351799786091,0.061695065349340,0.019525095820427,-0.009842745028436,-0.055215656757355,-0.017427071928978,0.066763840615749,0.076130956411362,-0.017559545114636,0.022354902699590,0.122607477009296,0.040613897144794,-0.084454365074635,-0.046559859067202,-0.093496188521385,-0.009097510017455));
res += mul(Get(s1,0,dy), float4x4(-0.024069195613265,0.068444088101387,0.011735927313566,-0.016045598313212,0.037317682057619,0.053237307816744,0.026657277718186,0.008209557272494,0.053639106452465,-0.022659445181489,0.031234247609973,0.194934546947479,-0.076277032494545,0.001528319902718,-0.036880541592836,-0.039811044931412));
res += mul(Get(s1,dx,-dy), float4x4(0.038778752088547,-0.012331115081906,0.031717639416456,-0.082776039838791,0.025475012138486,0.039647743105888,0.110180258750916,-0.088395930826664,0.008955700322986,-0.024099057540298,-0.003745924448594,-0.043308537453413,-0.225390136241913,0.002823658753186,-0.007240037433803,-0.101424783468246));
res += mul(Get(s1,dx,0), float4x4(0.015367088839412,0.007905779406428,0.012632053345442,-0.005453524179757,-0.028062382712960,-0.011554029770195,0.083447240293026,0.031034300103784,-0.095945417881012,0.033055663108826,-0.033669680356979,-0.004434253554791,-0.093189619481564,-0.076431103050709,-0.047216597944498,0.073328487575054));
res += mul(Get(s1,dx,dy), float4x4(-0.050325892865658,0.011958088725805,0.002909441944212,-0.017516769468784,0.034054212272167,-0.019813388586044,-0.001325521036051,-0.010529845952988,0.001968743279576,-0.006424671038985,-0.091479897499084,-0.018890917301178,-0.030371483415365,-0.040909361094236,0.005778156220913,0.166280522942543));
res += mul(Get(s2,-dx,-dy), float4x4(-0.045661792159081,0.076592937111855,0.016845708712935,-0.066184729337692,-0.080551378428936,0.016003552824259,-0.016710678115487,0.065249368548393,0.003863512771204,-0.044722385704517,0.040099572390318,-0.020732566714287,0.016723303124309,-0.015026087872684,0.042711194604635,0.106923662126064));
res += mul(Get(s2,-dx,0), float4x4(0.043138407170773,-0.022725407034159,-0.006274939514697,-0.038760758936405,-0.059321798384190,0.144104257225990,-0.046689447015524,-0.013660911470652,-0.033296335488558,-0.017233101651073,0.151177689433098,-0.146884262561798,-0.018338287249207,-0.031922087073326,0.002722637029365,-0.043356124311686));
res += mul(Get(s2,-dx,dy), float4x4(0.014557921327651,0.018713509663939,-0.004670143593103,-0.047066424041986,-0.059076104313135,0.126034229993820,0.020926484838128,-0.020742330700159,-0.030744738876820,-0.042813453823328,0.035716965794563,-0.096433952450752,0.007828922942281,-0.048111088573933,0.013820428401232,-0.020551206544042));
res += mul(Get(s2,0,-dy), float4x4(-0.056909058243036,0.056626390665770,-0.044125270098448,-0.036451648920774,-0.051313355565071,-0.002552429912612,0.010789015330374,0.046812649816275,-0.008301679044962,-0.012412278912961,-0.003151770448312,-0.030817957594991,0.051389478147030,-0.004202257841825,-0.038927927613258,0.035836048424244));
res += mul(Get(s2,0,0), float4x4(0.061371095478535,-0.004540710709989,-0.071998357772827,0.007743393070996,-0.033554319292307,0.105735316872597,0.023934250697494,0.006743150763214,0.019567260518670,-0.021710949018598,0.039912469685078,-0.025537140667439,0.051955513656139,0.032272666692734,-0.004659164696932,-0.079217411577702));
res += mul(Get(s2,0,dy), float4x4(-0.002644624328241,0.028835551813245,-0.036238171160221,0.053885933011770,-0.036486387252808,0.165806174278259,0.052616022527218,0.056130632758141,-0.084157384932041,-0.034342654049397,-0.054704196751118,-0.025048449635506,0.009974993765354,-0.029954029247165,0.028470819815993,-0.035175450146198));
res += mul(Get(s2,dx,-dy), float4x4(0.011954100802541,0.037007320672274,-0.042779807001352,-0.015156112611294,-0.052385974675417,-0.069386281073093,-0.005500229541212,-0.005077123641968,0.027162173762918,-0.077463284134865,0.019375029951334,-0.003335896180943,0.051962040364742,-0.031359832733870,-0.071815058588982,-0.050839729607105));
res += mul(Get(s2,dx,0), float4x4(0.044306024909019,0.070485144853592,-0.037574131041765,0.018670830875635,-0.008739364333451,-0.031356606632471,0.009973511099815,-0.023593412712216,0.013657689094543,-0.105646967887878,0.016223944723606,-0.009896440431476,0.018415095284581,0.039807636290789,-0.011416134424508,-0.057332716882229));
res += mul(Get(s2,dx,dy), float4x4(0.025769017636776,0.070544421672821,0.004811070859432,-0.002622597385198,0.029975477606058,-0.008895945735276,0.033658158034086,0.063607163727283,-0.000284996494884,-0.080425724387169,-0.019436499103904,-0.001650363206863,0.030580554157495,-0.010726558975875,-0.050455480813980,-0.037951868027449));
res += mul(Get(s3,-dx,-dy), float4x4(-0.106150776147842,-0.010649599134922,-0.020170584321022,0.015013810247183,-0.031631443649530,-0.071596674621105,0.053033683449030,0.043455224484205,-0.032473616302013,-0.077137328684330,-0.039292320609093,-0.039589703083038,-0.134052783250809,0.061990249902010,0.040807221084833,-0.080752581357956));
res += mul(Get(s3,-dx,0), float4x4(0.094254903495312,0.040392369031906,0.039721067994833,-0.021967533975840,0.053045015782118,0.196215987205505,0.019646313041449,-0.056087352335453,-0.016704970970750,-0.061546485871077,-0.077510610222816,0.040336154401302,0.058827493339777,-0.059932790696621,-0.023643136024475,0.077755577862263));
res += mul(Get(s3,-dx,dy), float4x4(-0.013197668828070,-0.052845925092697,-0.021836120635271,0.005230990238488,-0.135527327656746,-0.093346588313580,0.091895602643490,-0.019734682515264,-0.059627793729305,-0.040879264473915,-0.059454917907715,-0.000209733232623,-0.081781350076199,0.024239324033260,0.021343525499105,0.013679234310985));
res += mul(Get(s3,0,-dy), float4x4(0.133416563272476,-0.016739988699555,-0.024767931550741,0.061351604759693,0.366582512855530,0.019706131890416,0.081226915121078,0.006335818674415,0.039724964648485,-0.138263806700706,-0.018164496868849,-0.015265967696905,-0.097857229411602,0.066233083605766,0.084553562104702,-0.027636339887977));
res += mul(Get(s3,0,0), float4x4(0.068545088171959,0.075847871601582,0.056015349924564,0.079668745398521,-0.246612802147865,0.081836611032486,0.014541968703270,0.225175887346268,0.023442557081580,-0.065467305481434,0.026110671460629,-0.124800071120262,0.184634208679199,0.020061142742634,0.095471814274788,0.097395837306976));
res += mul(Get(s3,0,dy), float4x4(0.017513567581773,-0.057558123022318,0.020457750186324,0.003626452991739,-0.071955494582653,-0.138446539640427,0.006459427997470,-0.077881045639515,0.023194279521704,-0.120209962129593,0.002563403919339,-0.095390304923058,-0.056135334074497,0.021614493802190,-0.064754024147987,0.048511587083340));
res += mul(Get(s3,dx,-dy), float4x4(0.075636290013790,0.008373448625207,-0.046680498868227,0.055028185248375,-0.274440109729767,-0.003251028712839,-0.180308863520622,-0.029451590031385,-0.117409750819206,-0.116079062223434,-0.102395132184029,0.024360908195376,-0.023834651336074,0.053764034062624,0.010704088024795,-0.091792903840542));
res += mul(Get(s3,dx,0), float4x4(-0.140602052211761,0.067523419857025,-0.049212958663702,0.114941492676735,0.146323487162590,-0.101887896656990,0.032208811491728,-0.171401783823967,0.200597956776619,-0.065524466335773,0.040797412395477,-0.068956330418587,0.045650865882635,0.028870211914182,-0.111522145569324,-0.029975255951285));
res += mul(Get(s3,dx,dy), float4x4(0.034281466156244,-0.008282259106636,-0.053593169897795,-0.140256181359291,0.058298256248236,-0.107089020311832,0.035476326942444,0.197453901171684,0.055481165647507,-0.117159470915794,0.037896715104580,0.005595069844276,-0.120923347771168,-0.026207381859422,0.058936934918165,-0.020659459754825));
res = max(float4(0,0,0,0), res);
return res;
}