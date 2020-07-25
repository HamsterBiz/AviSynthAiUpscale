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
res += mul(Get(s0,-dx,-dy), float4x4(0.124637924134731,-0.033612180501223,-0.060083743184805,0.051260489970446,0.101946100592613,-0.024145875126123,0.087121225893497,0.078725188970566,0.014412861317396,-0.117947645485401,0.007848955690861,-0.006099628284574,-0.092313818633556,-0.025646135210991,-0.089365921914577,0.009161266498268));
res += mul(Get(s0,-dx,0), float4x4(-0.032969113439322,-0.015462101437151,-0.022193737328053,-0.038966100662947,-0.022586887702346,-0.156030058860779,-0.022988192737103,-0.058850817382336,-0.099827937781811,-0.037573464214802,-0.068437032401562,-0.041700046509504,-0.009656213223934,0.034499157220125,-0.075172714889050,0.006539836060256));
res += mul(Get(s0,-dx,dy), float4x4(-0.093404032289982,0.084071829915047,0.191569626331329,-0.058094650506973,-0.149656563997269,-0.048643976449966,0.058389514684677,0.116297677159309,0.078870996832848,-0.152017876505852,-0.058871522545815,0.197824552655220,0.008675676770508,0.104097157716751,-0.026880243793130,0.128425598144531));
res += mul(Get(s0,0,-dy), float4x4(-0.162532493472099,-0.065527990460396,-0.073296271264553,-0.054687675088644,-0.103272967040539,-0.048334058374166,0.161883845925331,-0.059864640235901,-0.006239403970540,-0.064256787300110,0.159880533814430,0.032955329865217,0.101881086826324,-0.056910943239927,-0.021553171798587,-0.051298793405294));
res += mul(Get(s0,0,0), float4x4(0.096474945545197,-0.036457184702158,-0.115922495722771,-0.013368296436965,-0.010079052299261,0.073425941169262,0.149095088243484,-0.055711708962917,0.055960897356272,0.071861207485199,-0.100020252168179,-0.169638082385063,0.031919497996569,-0.051208779215813,0.043686665594578,-0.044340319931507));
res += mul(Get(s0,0,dy), float4x4(0.067587070167065,-0.152568414807320,0.103501588106155,0.056681193411350,-0.070355869829655,-0.019919052720070,0.022775817662477,0.027352783828974,0.141896694898605,0.036314494907856,0.067903175950050,0.180465653538704,0.084168575704098,-0.070467412471771,-0.036652408540249,0.047559835016727));
res += mul(Get(s0,dx,-dy), float4x4(0.125224471092224,0.006317100487649,0.099784724414349,0.091311357915401,-0.127734765410423,0.349960863590240,0.008372986689210,-0.081750690937042,0.069535471498966,0.087042875587940,0.010348279029131,0.010640639811754,-0.045431531965733,0.037768140435219,-0.054225061088800,0.050868052989244));
res += mul(Get(s0,dx,0), float4x4(-0.069914206862450,-0.059063401073217,-0.063646808266640,-0.027948873117566,0.027981027960777,0.201045364141464,-0.301363945007324,-0.108266711235046,0.090446904301643,-0.076036229729652,-0.054175879806280,-0.036185614764690,-0.050624392926693,0.006565551739186,-0.101365141570568,0.103665895760059));
res += mul(Get(s0,dx,dy), float4x4(0.062435984611511,0.077950552105904,-0.035437263548374,-0.146337538957596,0.081840045750141,-0.048228505998850,-0.110996529459953,0.025133175775409,0.044508289545774,-0.036057710647583,-0.022464659065008,0.050005413591862,0.044930487871170,0.037952821701765,0.009451610967517,0.102396391332150));
res += mul(Get(s1,-dx,-dy), float4x4(-0.003942158073187,-0.097969800233841,0.120657473802567,-0.068003267049789,-0.185025319457054,0.047124702483416,-0.144881591200829,0.010098423808813,-0.012473097071052,-0.114184729754925,0.037487659603357,-0.012977201491594,-0.040189489722252,-0.095034174621105,0.013479058630764,-0.005319774150848));
res += mul(Get(s1,-dx,0), float4x4(-0.023737911134958,-0.151742964982986,0.065711870789528,0.052795633673668,-0.048350963741541,-0.015989702194929,0.136992767453194,0.073743969202042,0.003530181013048,0.109772607684135,0.009022513404489,-0.032878261059523,-0.010063066147268,-0.120943032205105,0.059751700609922,0.023426830768585));
res += mul(Get(s1,-dx,dy), float4x4(-0.014365215785801,-0.000154226101586,0.020430088043213,0.089454211294651,0.092328041791916,0.059121064841747,0.002245594514534,-0.027019087225199,0.148497432470322,-0.105439513921738,-0.182149857282639,0.091851241886616,0.060087248682976,-0.077655464410782,-0.122071087360382,0.071208231151104));
res += mul(Get(s1,0,-dy), float4x4(-0.017005512490869,-0.070458561182022,-0.031706191599369,-0.194681242108345,-0.106890968978405,-0.034370563924313,-0.073162510991096,-0.035914629697800,0.092571556568146,-0.099995411932468,0.019554376602173,-0.150595009326935,-0.056837353855371,0.085766598582268,-0.017798805609345,-0.045476406812668));
res += mul(Get(s1,0,0), float4x4(0.037191864103079,-0.041071750223637,-0.033563818782568,-0.020991282537580,-0.212222084403038,-0.042787373065948,-0.017192890867591,-0.121951878070831,-0.083836540579796,0.012174884788692,0.014297770336270,-0.086570583283901,0.001273252186365,0.038188010454178,0.117221169173717,0.096475347876549));
res += mul(Get(s1,0,dy), float4x4(-0.111281491816044,-0.000260976201389,0.024815572425723,-0.203873649239540,0.031524516642094,0.082268469035625,-0.077588170766830,0.110191889107227,0.126942276954651,0.048664368689060,-0.165594130754471,0.031199723482132,0.075398869812489,0.042177878320217,-0.109659627079964,-0.065393812954426));
res += mul(Get(s1,dx,-dy), float4x4(0.043751932680607,0.009848285466433,0.020304525271058,0.071621730923653,0.013906979002059,0.023706182837486,0.011510876007378,-0.176105797290802,-0.004352640360594,0.013738703913987,-0.010445160791278,-0.035631727427244,0.102266483008862,-0.017192047089338,-0.108485385775566,-0.100290954113007));
res += mul(Get(s1,dx,0), float4x4(0.003336079185829,0.107211165130138,-0.039861436933279,0.008867671713233,0.056711662560701,0.007087389007211,0.056258600205183,-0.120718300342560,-0.003491884330288,0.169044092297554,-0.037334721535444,-0.016260551288724,0.056696940213442,-0.024632718414068,0.073597624897957,-0.074745707213879));
res += mul(Get(s1,dx,dy), float4x4(0.011339057236910,-0.151426315307617,-0.132209315896034,-0.098476335406303,0.077999025583267,-0.058418639004230,0.162935972213745,-0.186817079782486,0.197762042284012,-0.013736134395003,0.060944408178329,-0.094902358949184,-0.059333018958569,-0.042878374457359,-0.018715200945735,0.039561830461025));
res += mul(Get(s2,-dx,-dy), float4x4(0.013578066602349,0.028093812987208,0.013474703766406,0.092120610177517,-0.035341769456863,-0.044520407915115,0.155053868889809,0.062522277235985,-0.031863097101450,0.074759140610695,-0.036343459039927,0.002116425661370,-0.035910669714212,0.053120248019695,-0.044667955487967,-0.029680058360100));
res += mul(Get(s2,-dx,0), float4x4(0.091837324202061,-0.091898694634438,0.032655358314514,0.133634328842163,0.027965998277068,0.015317026525736,0.089097969233990,0.058556340634823,0.120844736695290,-0.161527216434479,0.025022687390447,0.075027748942375,0.045299712568521,-0.012829285115004,-0.095997869968414,0.004149884916842));
res += mul(Get(s2,-dx,dy), float4x4(-0.066906735301018,0.033249687403440,0.052918415516615,-0.044533852487803,-0.018210617825389,0.019301967695355,0.024724287912250,-0.076459012925625,-0.059352837502956,0.031394246965647,0.031575005501509,-0.023793790489435,0.069642879068851,0.065703511238098,-0.128130704164505,-0.018824432045221));
res += mul(Get(s2,0,-dy), float4x4(-0.043275196105242,0.086841508746147,0.103576764464378,-0.047496877610683,-0.034296844154596,-0.110483631491661,-0.064236596226692,-0.047633662819862,0.128572493791580,-0.021906441077590,0.034259077161551,-0.022876620292664,0.006306956987828,0.008742826990783,0.140394747257233,0.141567513346672));
res += mul(Get(s2,0,0), float4x4(0.005332121625543,0.027230227366090,0.066486142575741,0.157834291458130,-0.019102247431874,0.004094961099327,-0.074544064700603,-0.062425382435322,-0.068297468125820,0.061509784311056,-0.097602248191833,-0.006068707909435,0.001816891133785,-0.023244269192219,-0.087102741003036,-0.060675773769617));
res += mul(Get(s2,0,dy), float4x4(-0.045933507382870,-0.041013460606337,0.086823269724846,0.007318785414100,0.008429022505879,0.099925450980663,-0.040609482675791,0.060877956449986,0.059261713176966,0.052089627832174,0.003853252623230,0.050696812570095,0.086909063160419,0.020570181310177,0.048978280276060,-0.127460375428200));
res += mul(Get(s2,dx,-dy), float4x4(0.009277581237257,-0.127551034092903,0.149187296628952,-0.113785527646542,0.010094343684614,0.074833609163761,0.161518007516861,-0.035527341067791,0.057063303887844,0.095795214176178,-0.062752641737461,0.025878949090838,0.129839152097702,-0.042444959282875,-0.003192511620000,0.201169386506081));
res += mul(Get(s2,dx,0), float4x4(0.004245741758496,0.054250251501799,-0.050372496247292,0.019975870847702,-0.065239958465099,-0.049248348921537,-0.162318855524063,0.076310783624649,-0.027698649093509,0.025979198515415,0.010036183521152,-0.003874101908877,0.151753693819046,0.061371758580208,0.040723200887442,0.036171443760395));
res += mul(Get(s2,dx,dy), float4x4(0.069635353982449,0.010140887461603,0.082431055605412,0.051538597792387,-0.021787658333778,0.082135282456875,-0.082975216209888,0.012348378077149,0.047345973551273,-0.064687043428421,0.037480670958757,-0.117982707917690,0.013792969286442,-0.005203078966588,0.096852630376816,-0.049500662833452));
res += mul(Get(s3,-dx,-dy), float4x4(-0.174528524279594,0.160926640033722,0.210716784000397,-0.085622586309910,-0.030893310904503,-0.099740624427795,0.126229971647263,-0.080552369356155,-0.155532628297806,-0.162873387336731,-0.120164476335049,-0.100347422063351,0.012789985165000,0.185998246073723,0.153732344508171,0.106153473258018));
res += mul(Get(s3,-dx,0), float4x4(-0.072783179581165,0.149580270051956,0.068679764866829,0.038055885583162,-0.093660838901997,-0.045359376817942,-0.046788606792688,0.088832564651966,-0.057923179119825,0.063365481793880,-0.036823164671659,0.008295480161905,0.024495843797922,-0.025475522503257,0.111276388168335,-0.135163366794586));
res += mul(Get(s3,-dx,dy), float4x4(-0.068447962403297,0.111323103308678,-0.188031628727913,-0.151321589946747,0.054790996015072,-0.093154527246952,0.090013273060322,-0.019698878750205,-0.165320202708244,-0.164925858378410,0.145789027214050,0.176565259695053,0.000735180336051,0.010287957265973,0.005130869336426,0.039216347038746));
res += mul(Get(s3,0,-dy), float4x4(0.151932612061501,-0.194181486964226,0.032327372580767,-0.048541944473982,0.122748211026192,-0.151781082153320,0.060253851115704,-0.213596478104591,-0.034641698002815,-0.024433040991426,-0.224791020154953,-0.227160692214966,-0.013344342820346,0.081726633012295,0.067933477461338,-0.028128568083048));
res += mul(Get(s3,0,0), float4x4(0.138784661889076,0.188913628458977,-0.215353846549988,0.045738104730844,-0.046124462038279,0.085175544023514,-0.028662413358688,-0.024192962795496,0.110100068151951,0.110001228749752,-0.045553725212812,-0.059263661503792,-0.070588149130344,0.092266477644444,0.017513127997518,0.107768163084984));
res += mul(Get(s3,0,dy), float4x4(-0.019521011039615,0.108272895216942,-0.106148615479469,-0.129718348383904,-0.067962124943733,-0.064846403896809,-0.074792005121708,-0.076750054955482,0.076784655451775,-0.045941341668367,0.012397759594023,0.252732455730438,-0.001431219745427,0.007367418613285,-0.054636415094137,0.253724068403244));
res += mul(Get(s3,dx,-dy), float4x4(-0.129535555839539,-0.073637463152409,0.084706388413906,-0.049057606607676,0.200580462813377,-0.021457239985466,-0.018178887665272,0.010485554113984,0.058800153434277,-0.006149859633297,-0.070150852203369,-0.028025627136230,-0.057403452694416,0.049473926424980,0.069551959633827,-0.095395274460316));
res += mul(Get(s3,dx,0), float4x4(0.101180210709572,0.054654300212860,-0.014253224246204,-0.082789912819862,-0.029207233339548,-0.080337636172771,0.026188421994448,0.141264602541924,0.143256619572639,-0.005039181094617,-0.065914437174797,-0.028340626507998,-0.108746923506260,0.010629557073116,-0.015484603121877,-0.056221604347229));
res += mul(Get(s3,dx,dy), float4x4(-0.089665062725544,-0.018663447350264,0.003746641799808,0.136862084269524,0.083480149507523,0.046047057956457,0.011869270354509,-0.051010563969612,-0.080541022121906,-0.058872818946838,-0.030218631029129,0.203859791159630,0.096553944051266,0.039553884416819,-0.079863786697388,-0.009026463143528));
res = max(float4(0,0,0,0), res);
return res;
}