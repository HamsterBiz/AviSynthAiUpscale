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
res += mul(Get(s0,-dx,-dy), float4x4(0.080254249274731,-0.084581755101681,-0.029626440256834,0.011351986788213,-0.035281818360090,0.109285503625870,-0.172041758894920,-0.037272490561008,-0.190168768167496,0.084116235375404,-0.081558085978031,0.085973143577576,0.164647176861763,-0.084369413554668,-0.153100728988647,-0.051441513001919));
res += mul(Get(s0,-dx,0), float4x4(0.189095959067345,0.072919853031635,0.151232659816742,0.056727290153503,0.013356546871364,-0.014965197071433,-0.057437393814325,-0.081631854176521,0.045203682035208,-0.000837437983137,0.094858914613724,-0.015390232205391,-0.034188896417618,0.176077306270599,0.042729672044516,0.054583411663771));
res += mul(Get(s0,-dx,dy), float4x4(0.233614310622215,0.061524998396635,-0.064374931156635,-0.015761338174343,-0.158445417881012,-0.166598632931709,0.050551448017359,-0.069117434322834,0.242856338620186,0.131255820393562,0.275580853223801,-0.037959765642881,-0.157457992434502,-0.022614007815719,-0.024085238575935,-0.077266730368137));
res += mul(Get(s0,0,-dy), float4x4(-0.031659539788961,-0.050030641257763,-0.010613294318318,-0.104859709739685,-0.127648890018463,-0.083096593618393,-0.071700751781464,-0.125598892569542,-0.051646981388330,0.030389202758670,0.069607615470886,0.015096819028258,-0.024816749617457,-0.053425829857588,-0.132325321435928,-0.129078671336174));
res += mul(Get(s0,0,0), float4x4(0.213438153266907,0.054291483014822,-0.178686395287514,-0.133219569921494,-0.146509706974030,-0.027705576270819,0.172979637980461,0.006406363565475,-0.083180882036686,-0.016326878219843,-0.033348366618156,-0.014652125537395,0.093364842236042,0.186433643102646,0.089555270969868,-0.148417145013809));
res += mul(Get(s0,0,dy), float4x4(-0.046180650591850,0.170755296945572,0.087307013571262,-0.195885971188545,0.066285282373428,-0.056895956397057,0.014300643466413,0.074540250003338,0.064616665244102,0.080694660544395,0.044368252158165,-0.000079973309767,0.159410387277603,-0.129434555768967,0.134938150644302,-0.031991496682167));
res += mul(Get(s0,dx,-dy), float4x4(-0.035086322575808,-0.022373566403985,0.019889203831553,-0.014097011648118,-0.057062856853008,0.044149853289127,-0.059135597199202,-0.032946582883596,-0.179009765386581,0.145675584673882,0.037472542375326,0.078208252787590,0.052917048335075,0.071677476167679,0.030755158513784,-0.075499109923840));
res += mul(Get(s0,dx,0), float4x4(-0.147626131772995,-0.076106958091259,0.039880428463221,0.092481561005116,-0.137193530797958,0.067267060279846,-0.012588601559401,-0.158860191702843,0.052873391658068,-0.090643718838692,0.069936953485012,0.048695944249630,0.009020901285112,-0.054053477942944,-0.000576689490117,0.059424631297588));
res += mul(Get(s0,dx,dy), float4x4(-0.149079754948616,-0.125052303075790,0.033586699515581,0.153950884938240,-0.097651958465576,-0.040228430181742,-0.129858285188675,0.194048255681992,0.024845927953720,-0.088859125971794,0.176696047186852,0.060658875852823,0.263709545135498,0.030303614214063,0.135069504380226,-0.009526637382805));
res += mul(Get(s1,-dx,-dy), float4x4(0.187795937061310,-0.030299356207252,-0.066440820693970,-0.043030172586441,0.212265923619270,-0.028923334553838,-0.018407605588436,-0.286221563816071,-0.013669354841113,0.004204723984003,0.107285402715206,-0.023388067260385,-0.000447779020760,-0.204630687832832,-0.066914670169353,-0.034442074596882));
res += mul(Get(s1,-dx,0), float4x4(-0.041963737457991,-0.016226703301072,-0.040130365639925,-0.143632605671883,0.169313982129097,-0.067366190254688,-0.152929797768593,0.047474741935730,-0.109243281185627,0.040883980691433,0.074612326920033,-0.107773661613464,0.079398825764656,0.046739406883717,-0.053084664046764,-0.282744437456131));
res += mul(Get(s1,-dx,dy), float4x4(0.088039837777615,-0.124916240572929,-0.093482129275799,0.061501976102591,-0.027477519586682,0.171536818146706,-0.045691121369600,0.103759527206421,-0.194882154464722,-0.098455712199211,0.063129022717476,-0.090198516845703,0.109872885048389,-0.020601604133844,0.055606096982956,-0.240370407700539));
res += mul(Get(s1,0,-dy), float4x4(-0.162738919258118,0.011480764485896,-0.141605213284492,0.027645001187921,0.096709728240967,0.038769152015448,-0.077294662594795,-0.126894101500511,-0.051478482782841,0.006361691281199,0.026420406997204,-0.141183212399483,0.056082818657160,0.058117862790823,-0.038495257496834,-0.142250210046768));
res += mul(Get(s1,0,0), float4x4(0.034268718212843,0.073570325970650,0.165859118103981,-0.218370348215103,-0.066086836159229,0.015555332414806,-0.032598495483398,-0.100547753274441,0.266510903835297,-0.153969392180443,0.030462220311165,0.134720817208290,0.008668506518006,0.039377383887768,0.018911436200142,-0.049545783549547));
res += mul(Get(s1,0,dy), float4x4(0.060977369546890,0.101532667875290,0.063561208546162,-0.080498509109020,0.082018919289112,0.032267488539219,-0.035662710666656,0.173404872417450,0.161342665553093,-0.102239727973938,0.031034283339977,0.236636728048325,0.010108172893524,-0.137763023376465,-0.100968919694424,-0.033946525305510));
res += mul(Get(s1,dx,-dy), float4x4(-0.003087069373578,-0.101957879960537,-0.072739347815514,-0.156787499785423,0.054605588316917,-0.020851172506809,-0.054094094783068,-0.199654623866081,-0.028449380770326,0.002190500963479,-0.027469370514154,-0.136049360036850,0.080067403614521,0.199728563427925,0.078071460127831,-0.083424419164658));
res += mul(Get(s1,dx,0), float4x4(0.120638273656368,-0.025197559967637,0.045459657907486,0.150273054838181,-0.068026460707188,-0.005875875242054,-0.217128545045853,-0.187869071960449,-0.081024661660194,-0.073395274579525,0.036337628960609,0.135760307312012,-0.141164958477020,0.164927974343300,-0.016336176544428,-0.045624122023582));
res += mul(Get(s1,dx,dy), float4x4(0.080687396228313,-0.110358551144600,-0.190645009279251,0.292467951774597,0.145666882395744,0.011116106994450,0.105055123567581,0.222637653350830,0.193140029907227,0.156467050313950,0.104467742145061,-0.106121912598610,-0.082325294613838,-0.073796071112156,0.004824567120522,-0.063318356871605));
res += mul(Get(s2,-dx,-dy), float4x4(-0.081829838454723,-0.040575075894594,0.142884537577629,-0.173679590225220,-0.024104340001941,0.111575722694397,-0.081688247621059,-0.085131332278252,-0.118973799049854,0.213968247175217,-0.015257647261024,-0.044468395411968,0.170991808176041,-0.010563259012997,0.044720366597176,0.150490716099739));
res += mul(Get(s2,-dx,0), float4x4(-0.018999997526407,-0.039345793426037,0.132075920701027,-0.067831233143806,-0.112395055592060,0.020240800455213,-0.116409033536911,-0.075486510992050,0.143273279070854,-0.035382319241762,-0.064531505107880,0.081748440861702,0.181539282202721,-0.081402741372585,-0.037353117018938,-0.009730719961226));
res += mul(Get(s2,-dx,dy), float4x4(-0.081171222031116,0.027885660529137,0.164534896612167,0.032437674701214,-0.036313310265541,0.100553765892982,-0.034970041364431,-0.021088842302561,0.257998049259186,-0.116302743554115,0.018690625205636,-0.139364406466484,0.176326528191566,-0.001489641144872,0.051056690514088,-0.083843819797039));
res += mul(Get(s2,0,-dy), float4x4(-0.018773030489683,-0.056047763675451,0.011118383146822,0.089525461196899,0.093958228826523,-0.083278425037861,0.082140728831291,-0.044824384152889,-0.076800532639027,0.076795570552349,-0.063645556569099,-0.085051432251930,-0.000897544843610,0.014365228824317,0.039839774370193,0.105535782873631));
res += mul(Get(s2,0,0), float4x4(-0.132451772689819,-0.181112900376320,0.146552205085754,-0.018783472478390,-0.022160258144140,-0.050055783241987,-0.038919061422348,0.132731586694717,0.040122069418430,-0.069316610693932,-0.022571554407477,0.164045199751854,0.183923155069351,0.110658094286919,0.046269353479147,-0.156774982810020));
res += mul(Get(s2,0,dy), float4x4(0.099983148276806,0.012857775203884,0.023420469835401,0.025795994326472,-0.144226491451263,-0.183811768889427,-0.082335099577904,-0.085095100104809,0.191178977489471,-0.130026787519455,-0.133619263768196,-0.025876520201564,-0.125356048345566,0.150667101144791,0.107909120619297,0.001422932022251));
res += mul(Get(s2,dx,-dy), float4x4(-0.078263856470585,-0.056634761393070,-0.126623034477234,0.140144348144531,-0.081605076789856,0.015774136409163,0.004956182092428,-0.149863556027412,-0.047864634543657,0.074904762208462,-0.277548044919968,-0.119768247008324,0.154898583889008,0.008439731784165,0.142592892050743,-0.069250687956810));
res += mul(Get(s2,dx,0), float4x4(0.082403808832169,-0.082377135753632,0.068616949021816,-0.099255502223969,-0.074020653963089,-0.133078128099442,0.009544870816171,-0.074866428971291,-0.071620240807533,0.014235970564187,0.089994497597218,0.023746473714709,-0.093883931636810,0.006065595429391,0.092986583709717,0.090208530426025));
res += mul(Get(s2,dx,dy), float4x4(-0.171491533517838,-0.036863435059786,-0.019450448453426,0.135167449712753,-0.086058646440506,-0.031356077641249,0.138556003570557,0.076163023710251,-0.007521391846240,0.008133019320667,-0.090057969093323,-0.157090842723846,0.109332188963890,-0.123810082674026,-0.108795821666718,0.095861330628395));
res += mul(Get(s3,-dx,-dy), float4x4(0.071285903453827,0.050144612789154,0.177153140306473,0.013912264257669,-0.086222559213638,-0.011870840564370,0.105853401124477,-0.025232343003154,-0.046738386154175,0.058898992836475,-0.164570763707161,-0.158688738942146,-0.008328994736075,-0.134886279702187,0.129693567752838,-0.015206826850772));
res += mul(Get(s3,-dx,0), float4x4(0.117574654519558,0.129737675189972,-0.055506777018309,0.001436046324670,-0.075481869280338,-0.144218578934669,-0.112401753664017,-0.009039874188602,-0.204378873109818,-0.034610427916050,-0.170913279056549,0.033641535788774,0.103813424706459,-0.138978838920593,-0.289585083723068,-0.030076311901212));
res += mul(Get(s3,-dx,dy), float4x4(0.068528205156326,0.327214926481247,-0.064974181354046,-0.026682090014219,0.134980946779251,0.062299448996782,-0.030972519889474,-0.017050297930837,-0.126788243651390,0.078367643058300,0.047818381339312,-0.095394760370255,0.069570749998093,-0.193860709667206,-0.023618241772056,0.161102309823036));
res += mul(Get(s3,0,-dy), float4x4(0.056504268199205,0.087990529835224,-0.139234930276871,-0.051223989576101,0.043670039623976,-0.009366840124130,0.099820248782635,-0.023435926064849,-0.154434278607368,-0.117662064731121,0.069259099662304,-0.035541009157896,-0.016256134957075,0.037129752337933,-0.180441990494728,-0.082252562046051));
res += mul(Get(s3,0,0), float4x4(-0.050706304609776,-0.050476610660553,-0.137649536132813,0.038823988288641,-0.119717292487621,-0.112931929528713,0.167274817824364,0.050506129860878,0.024431511759758,-0.113897673785686,0.053510487079620,0.020747270435095,0.028239564970136,-0.106396868824959,-0.070691823959351,-0.079900011420250));
res += mul(Get(s3,0,dy), float4x4(-0.060903236269951,0.260747969150543,-0.045049667358398,0.289951890707016,-0.109335817396641,-0.004823696333915,0.027663966640830,-0.025786349549890,0.125443920493126,-0.010359757579863,0.131619736552238,0.064096003770828,0.040391556918621,-0.138745486736298,-0.098771408200264,0.018051680177450));
res += mul(Get(s3,dx,-dy), float4x4(-0.119699776172638,-0.013828903436661,-0.077217966318130,-0.045023474842310,-0.051729150116444,-0.152480468153954,0.036995541304350,-0.106682941317558,0.032605551183224,0.144071504473686,-0.059851206839085,-0.099875912070274,-0.000070578695158,-0.119351476430893,-0.061134066432714,0.027934327721596));
res += mul(Get(s3,dx,0), float4x4(0.161510825157166,0.050057586282492,0.134752854704857,0.090231552720070,-0.033759541809559,-0.037874627858400,0.022390453144908,-0.208515614271164,0.134149849414825,-0.173144191503525,0.018540674820542,-0.069138079881668,0.196660563349724,0.189669862389565,0.058232042938471,0.088786959648132));
res += mul(Get(s3,dx,dy), float4x4(0.067289687693119,0.142797321081161,-0.165001541376114,0.233811214566231,0.023435503244400,0.138467743992805,0.069906257092953,0.108055867254734,-0.042711522430182,-0.052141979336739,0.011701613664627,0.087648205459118,-0.100424520671368,0.094528041779995,-0.026411481201649,-0.217011660337448));
return max(float4(0,0,0,0), res);
}