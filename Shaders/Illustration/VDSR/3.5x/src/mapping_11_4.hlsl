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
res += mul(Get(s0,-dx,-dy), float4x4(0.173854112625122,0.179089099168777,-0.070980682969093,0.085146479308605,-0.041601579636335,-0.068980835378170,0.126092791557312,-0.069010041654110,0.054489959031343,-0.014992155134678,0.031778611242771,0.060618106275797,-0.024964893236756,-0.065757006406784,0.012904829345644,0.031974282115698));
res += mul(Get(s0,-dx,0), float4x4(0.039774630218744,0.063606843352318,-0.078819319605827,0.106042422354221,0.120914936065674,0.098727919161320,-0.022673211991787,-0.027354747056961,0.004507388453931,-0.082735255360603,0.208863198757172,-0.093328893184662,0.198573783040047,0.072288714349270,0.010044529102743,0.056632477790117));
res += mul(Get(s0,-dx,dy), float4x4(-0.101325564086437,-0.055423889309168,0.124839968979359,0.072991244494915,-0.045507509261370,0.026011554524302,0.014081755653024,-0.147541642189026,0.028378222137690,-0.004555174149573,0.071699261665344,0.031119758263230,-0.186007767915726,0.094775862991810,-0.100276090204716,0.050326026976109));
res += mul(Get(s0,0,-dy), float4x4(0.193948253989220,0.219009310007095,-0.130642279982567,0.002987471409142,-0.167526423931122,-0.075637422502041,-0.104105688631535,0.098057270050049,-0.071817457675934,0.000533823040314,-0.038558501750231,-0.134253382682800,0.020160101354122,-0.107583269476891,0.014355735853314,-0.222970619797707));
res += mul(Get(s0,0,0), float4x4(0.049760874360800,0.090332195162773,0.013349886052310,0.059465870261192,-0.006934610661119,-0.096598573029041,0.073127470910549,0.214165866374969,0.133646994829178,0.047206643968821,-0.017694940790534,-0.186030492186546,-0.111491635441780,-0.027870049700141,0.232655316591263,0.043939076364040));
res += mul(Get(s0,0,dy), float4x4(-0.054250106215477,0.038374185562134,-0.184038728475571,0.019537325948477,-0.209480270743370,-0.100360646843910,-0.022938670590520,0.008854546584189,-0.014550367370248,-0.023103034123778,0.019774263724685,0.085941366851330,-0.011244053952396,0.091851308941841,0.152938932180405,-0.107321880757809));
res += mul(Get(s0,dx,-dy), float4x4(0.213100120425224,0.109931387007236,-0.116139031946659,0.063943535089493,-0.030912846326828,-0.058489382266998,-0.066569767892361,0.043109670281410,-0.028085343539715,0.113431729376316,0.109514720737934,-0.106294274330139,0.036302827298641,-0.005938123445958,-0.005425452254713,0.024827836081386));
res += mul(Get(s0,dx,0), float4x4(-0.101920858025551,-0.117393806576729,-0.009599606506526,-0.000973503745627,0.103575088083744,-0.254478365182877,0.083635993301868,0.066145621240139,0.196127027273178,0.011828286573291,0.095416910946369,0.006808714475483,-0.161449253559113,-0.155910849571228,0.021080862730742,0.141894966363907));
res += mul(Get(s0,dx,dy), float4x4(0.007317917887121,0.098874382674694,0.099551454186440,0.250326812267303,0.023231700062752,0.254899859428406,-0.004287182819098,0.122867263853550,-0.219668939709663,-0.135221272706985,0.006377095356584,-0.092736788094044,0.261898010969162,0.010742779821157,0.041879341006279,-0.009274687618017));
res += mul(Get(s1,-dx,-dy), float4x4(0.004344795364887,-0.029655380174518,0.131879106163979,-0.042867492884398,0.090656034648418,0.000082974605903,-0.049241747707129,0.164630934596062,-0.047637961804867,0.051683180034161,0.106011353433132,0.010918796062469,-0.046167559921741,0.067448452115059,0.165929853916168,-0.065639510750771));
res += mul(Get(s1,-dx,0), float4x4(-0.165216058492661,-0.027551570907235,-0.259989589452744,0.039032295346260,0.021408021450043,0.172593608498573,-0.157201379537582,0.107605941593647,-0.164083436131477,-0.245398476719856,-0.043058291077614,-0.078808687627316,0.096119888126850,0.101354040205479,-0.134571000933647,0.218875825405121));
res += mul(Get(s1,-dx,dy), float4x4(0.157139420509338,-0.017884522676468,-0.126432552933693,0.043435152620077,-0.049426302313805,-0.113184981048107,0.095866151154041,0.054884232580662,-0.042976729571819,-0.116947837173939,0.017964687198400,-0.007377132773399,0.038356594741344,0.131097853183746,0.273773640394211,0.066134080290794));
res += mul(Get(s1,0,-dy), float4x4(0.020269569009542,0.031110884621739,-0.060716666281223,-0.058925990015268,0.091517038643360,0.041854534298182,-0.058293908834457,0.096740789711475,-0.247937396168709,0.100568622350693,0.035858254879713,0.046722237020731,0.006817255634815,0.100619152188301,-0.028173953294754,0.000780908041634));
res += mul(Get(s1,0,0), float4x4(-0.093605816364288,-0.250959903001785,-0.001078339759260,-0.047718331217766,-0.095106564462185,0.017225651070476,-0.009656756184995,0.035052031278610,0.168231695890427,-0.153474479913712,-0.088386960327625,0.106183424592018,-0.194961249828339,0.031462769955397,0.069982431828976,0.114010289311409));
res += mul(Get(s1,0,dy), float4x4(-0.179580137133598,-0.010080578736961,0.059815991669893,0.095968507230282,0.079123429954052,-0.111438944935799,-0.023510091006756,-0.162707343697548,0.035213850438595,-0.129174217581749,-0.148667052388191,0.076290138065815,-0.045738086104393,-0.168088659644127,-0.241925910115242,0.215183228254318));
res += mul(Get(s1,dx,-dy), float4x4(0.030662616714835,0.079769536852837,0.085525624454021,-0.043010991066694,-0.086006067693233,0.029759110882878,0.050448697060347,0.101098045706749,-0.018457321450114,0.026505472138524,-0.072404898703098,-0.107250459492207,-0.033001177012920,-0.099663488566875,0.043861646205187,0.092305913567543));
res += mul(Get(s1,dx,0), float4x4(-0.267511576414108,-0.094023264944553,-0.030920300632715,0.217534497380257,0.062189344316721,-0.066325657069683,-0.079993858933449,0.006551099941134,0.038899622857571,-0.065322823822498,0.167930394411087,-0.044227443635464,0.054140727967024,-0.018219584599137,-0.147360116243362,-0.064595341682434));
res += mul(Get(s1,dx,dy), float4x4(0.047203402966261,0.049610644578934,-0.049301773309708,-0.115203581750393,-0.242287889122963,0.063459977507591,-0.016305319964886,-0.072497926652431,0.116407141089439,0.095214851200581,-0.115315482020378,-0.112770587205887,-0.190968751907349,-0.045533005148172,0.228685960173607,-0.020331230014563));
res += mul(Get(s2,-dx,-dy), float4x4(0.142144650220871,-0.140143930912018,0.056304085999727,-0.144013077020645,-0.014063231647015,0.157473579049110,-0.081167183816433,-0.103404045104980,0.047918815165758,-0.204391911625862,0.040981307625771,-0.007958639413118,0.057544060051441,0.029898360371590,-0.073813922703266,0.074585273861885));
res += mul(Get(s2,-dx,0), float4x4(0.181871131062508,0.064582094550133,-0.104040034115314,-0.032929431647062,0.027366548776627,0.053877670317888,-0.116054117679596,-0.101251132786274,0.179638311266899,0.077253237366676,-0.151155322790146,0.018697313964367,0.118883572518826,-0.128622218966484,-0.139194682240486,-0.054808389395475));
res += mul(Get(s2,-dx,dy), float4x4(0.290412276983261,-0.048450309783220,0.059123706072569,0.015287441201508,-0.208562850952148,0.223287284374237,-0.011876152828336,0.059744205325842,-0.153494194149971,-0.097503788769245,-0.025477729737759,-0.288603663444519,0.092070735991001,-0.092100672423840,0.081062376499176,0.065894968807697));
res += mul(Get(s2,0,-dy), float4x4(0.261724203824997,-0.229054138064384,-0.032253123819828,-0.049175959080458,-0.072495885193348,0.134504795074463,-0.101427562534809,-0.081841714680195,0.213766962289810,-0.416694760322571,-0.168168231844902,-0.379157304763794,0.148643404245377,-0.024799097329378,0.131216600537300,-0.050175365060568));
res += mul(Get(s2,0,0), float4x4(0.141834080219269,0.184950515627861,-0.122083224356174,0.003693669335917,-0.056263588368893,-0.078699566423893,0.119017302989960,-0.160375356674194,0.021816998720169,-0.028128366917372,-0.073924265801907,0.053753204643726,0.060629952698946,-0.047392319887877,0.102275326848030,-0.165182188153267));
res += mul(Get(s2,0,dy), float4x4(-0.061587713658810,-0.103896506130695,0.094952538609505,-0.166695296764374,0.069385617971420,0.017940483987331,-0.290603548288345,0.210300281643867,-0.073566660284996,-0.074846588075161,0.013721147552133,0.156106188893318,-0.048796486109495,0.002275889273733,-0.212523117661476,-0.072758391499519));
res += mul(Get(s2,dx,-dy), float4x4(0.122193731367588,-0.031723935157061,-0.082474932074547,0.077824294567108,0.154595807194710,0.079505525529385,0.135388031601906,-0.423366457223892,0.115549221634865,0.189734205603600,0.046850338578224,-0.206968516111374,-0.242232531309128,-0.093146190047264,0.030279887840152,0.021300069987774));
res += mul(Get(s2,dx,0), float4x4(0.069080770015717,0.091514877974987,0.192923679947853,0.160680666565895,-0.064942032098770,0.059851277619600,-0.107094839215279,-0.039303570985794,0.093975119292736,0.294477492570877,0.248025506734848,-0.048790372908115,0.175737380981445,-0.132968351244926,0.072415314614773,0.057523444294930));
res += mul(Get(s2,dx,dy), float4x4(-0.005215754732490,0.110348165035248,-0.062476832419634,-0.197297349572182,0.298097103834152,-0.012732021510601,-0.122193351387978,-0.113890513777733,-0.001196534023620,0.291359126567841,-0.263069450855255,-0.049825038760900,0.029846187680960,-0.014310817234218,-0.084984034299850,0.044544070959091));
res += mul(Get(s3,-dx,-dy), float4x4(0.045569799840450,-0.052608311176300,-0.072074219584465,0.099742092192173,0.095773987472057,0.043288771063089,-0.029662588611245,-0.011552512645721,-0.145223096013069,-0.143377691507339,0.036296579986811,0.040656160563231,-0.031090745702386,-0.025350017473102,0.011681785807014,-0.300324410200119));
res += mul(Get(s3,-dx,0), float4x4(0.031343542039394,-0.025457065552473,-0.038589902222157,-0.016001107171178,-0.000764994882047,-0.110984891653061,-0.040533773601055,-0.184362202882767,-0.075305022299290,0.033575713634491,0.235195100307465,0.216449081897736,0.044911984354258,-0.021905684843659,-0.100553542375565,0.156709760427475));
res += mul(Get(s3,-dx,dy), float4x4(0.165751338005066,0.117854818701744,-0.028550505638123,-0.000726563448552,-0.093383587896824,0.076592348515987,-0.133077621459961,0.051144111901522,-0.005948174279183,0.038080882281065,-0.006143353879452,-0.024534398689866,0.036269769072533,0.154220134019852,-0.175444871187210,0.041667010635138));
res += mul(Get(s3,0,-dy), float4x4(0.032580714672804,-0.031429268419743,-0.008939148858190,-0.106838263571262,-0.128417223691940,0.051996700465679,-0.045997422188520,0.028798086568713,-0.023768318817019,-0.156076058745384,0.193951383233070,-0.013976399786770,0.042638473212719,-0.020386509597301,-0.031504500657320,0.118736356496811));
res += mul(Get(s3,0,0), float4x4(0.032275345176458,-0.008979488164186,-0.131657361984253,0.183360457420349,-0.039269592612982,0.203695163130760,0.047920364886522,-0.035563249140978,0.100996106863022,-0.195177569985390,0.135532140731812,0.057093672454357,-0.074855841696262,0.148935660719872,-0.099813684821129,-0.004311414901167));
res += mul(Get(s3,0,dy), float4x4(0.026772677898407,0.058577276766300,-0.006760654505342,-0.088033773005009,-0.171498849987984,0.041957046836615,-0.121245913207531,-0.182271435856819,-0.061601314693689,0.056251537054777,-0.157122746109962,-0.080257430672646,-0.399798929691315,0.093137077987194,-0.031406600028276,0.181060820817947));
res += mul(Get(s3,dx,-dy), float4x4(0.069661706686020,0.151591777801514,-0.162830352783203,0.010691790841520,-0.124088093638420,-0.184392675757408,0.080775596201420,0.122352309525013,-0.074326261878014,0.093497164547443,-0.090581782162189,0.040527217090130,0.239163011312485,-0.176342144608498,-0.161353901028633,-0.038809478282928));
res += mul(Get(s3,dx,0), float4x4(-0.086162008345127,-0.121309727430344,0.068976067006588,0.078334525227547,0.003917725291103,0.067390702664852,-0.052724450826645,-0.003062866861001,0.030831309035420,0.140841275453568,-0.150779470801353,-0.178308755159378,0.020994858816266,0.006507492624223,0.005039899609983,0.063175342977047));
res += mul(Get(s3,dx,dy), float4x4(0.234190270304680,-0.075637489557266,0.088898144662380,-0.176229536533356,0.101354621350765,-0.241266056895256,-0.129813343286514,-0.200534552335739,0.044153682887554,0.171206355094910,-0.020033625885844,0.045223046094179,0.061396382749081,0.013790506869555,-0.073214776813984,0.029386006295681));
return max(float4(0,0,0,0), res);
}