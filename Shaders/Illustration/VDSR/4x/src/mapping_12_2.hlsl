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
res += mul(Get(s0,-dx,-dy), float4x4(0.019222827628255,-0.069728858768940,-0.021387098357081,-0.003688419470564,0.043285321444273,-0.071121186017990,-0.151931807398796,-0.305369347333908,0.061536047607660,-0.062561891973019,-0.144742488861084,-0.113286748528481,0.143302604556084,0.018937733024359,0.155700325965881,-0.275939047336578));
res += mul(Get(s0,-dx,0), float4x4(-0.047307796776295,-0.241496667265892,-0.059378653764725,0.071742676198483,-0.005386265926063,0.100471384823322,0.175588980317116,-0.171477079391479,-0.032776478677988,-0.247757717967033,-0.090218685567379,0.206150472164154,-0.054270405322313,-0.269157677888870,-0.117680594325066,-0.018456388264894));
res += mul(Get(s0,-dx,dy), float4x4(-0.183071389794350,0.073605448007584,0.107221618294716,0.191111341118813,-0.194599747657776,-0.152466028928757,-0.219985798001289,-0.185360252857208,-0.025466961786151,0.255297780036926,0.194762289524078,-0.177438467741013,0.112665034830570,0.224093794822693,0.081804364919662,-0.072773173451424));
res += mul(Get(s0,0,-dy), float4x4(-0.062563143670559,-0.113615699112415,-0.077462360262871,-0.092510446906090,-0.104356616735458,0.115670494735241,-0.105562634766102,-0.099911905825138,-0.069355905056000,-0.095414943993092,0.003724929410964,-0.088349990546703,0.044053945690393,0.018399430438876,-0.105192936956882,0.047332473099232));
res += mul(Get(s0,0,0), float4x4(-0.036162119358778,-0.112725682556629,0.068715088069439,-0.113533288240433,-0.018883299082518,-0.013798994012177,0.015378223732114,-0.179222643375397,-0.011020773090422,0.137165099382401,-0.014980903826654,-0.096356354653835,0.032510321587324,0.052696097642183,-0.055931713432074,-0.083904266357422));
res += mul(Get(s0,0,dy), float4x4(-0.029801648110151,-0.016050780192018,-0.065321750938892,-0.131896793842316,0.188477233052254,0.116043314337730,-0.097125336527824,0.025043444707990,0.050405457615852,-0.011900186538696,-0.080960102379322,-0.152678728103638,-0.238508671522141,0.073800802230835,-0.107030034065247,0.019483201205730));
res += mul(Get(s0,dx,-dy), float4x4(0.205027371644974,0.142558068037033,-0.156680524349213,0.052081495523453,-0.003210839116946,-0.063219361007214,-0.179410994052887,0.063027039170265,0.014252509921789,-0.192707508802414,0.258773386478424,0.148976862430573,-0.112771123647690,-0.007632631342858,-0.061803076416254,0.007829132489860));
res += mul(Get(s0,dx,0), float4x4(0.073060177266598,0.041450057178736,-0.094975896179676,0.026670165359974,0.080761805176735,-0.166490480303764,-0.128590464591980,-0.056827362626791,0.089630961418152,0.186247274279594,-0.074624463915825,0.039787247776985,-0.033110566437244,0.056054748594761,0.084558963775635,-0.080936439335346));
res += mul(Get(s0,dx,dy), float4x4(-0.264938890933990,-0.079321995377541,0.106475338339806,0.073276855051517,0.074619635939598,-0.095832049846649,0.067682951688766,-0.163893923163414,0.150588467717171,0.106492891907692,-0.036170527338982,0.066565282642841,0.012065674178302,0.035677332431078,-0.077659025788307,-0.029510686174035));
res += mul(Get(s1,-dx,-dy), float4x4(-0.042987983673811,0.123051032423973,0.075650140643120,-0.212991356849670,0.074831873178482,0.018175268545747,-0.201969981193542,0.096549212932587,-0.203389257192612,-0.072421424090862,0.221988990902901,-0.089198842644691,-0.059924677014351,-0.005096118897200,-0.030576536431909,-0.069097310304642));
res += mul(Get(s1,-dx,0), float4x4(-0.051516551524401,0.130021303892136,-0.012368815951049,-0.020854607224464,-0.084834247827530,-0.038321066647768,0.128372862935066,0.110366560518742,-0.054562702775002,0.224897310137749,0.032113138586283,0.147570997476578,0.006584273185581,0.092577017843723,-0.151580587029457,-0.055074352771044));
res += mul(Get(s1,-dx,dy), float4x4(0.018303070217371,-0.010445843450725,-0.046838223934174,0.086828567087650,0.050730593502522,-0.083242334425449,-0.134421780705452,-0.014287672936916,-0.089361153542995,0.086633421480656,-0.029209859669209,-0.030426634475589,0.112309537827969,-0.193262249231339,0.305102378129959,-0.229034096002579));
res += mul(Get(s1,0,-dy), float4x4(0.051652856171131,-0.204464927315712,-0.113281562924385,-0.063401684165001,-0.047813829034567,0.103224687278271,0.120043784379959,0.200600340962410,0.074508205056190,-0.128584638237953,0.193474084138870,-0.037703957408667,0.050231840461493,-0.032266523689032,0.243859827518463,0.152055442333221));
res += mul(Get(s1,0,0), float4x4(-0.149650380015373,0.129321470856667,0.004437658935785,-0.002863487461582,0.008778981864452,0.085367180407047,-0.082848653197289,0.087314069271088,0.062079802155495,0.270001024007797,0.090949699282646,-0.041107382625341,0.027506407350302,0.015510808676481,-0.129946067929268,0.029825834557414));
res += mul(Get(s1,0,dy), float4x4(0.101840972900391,-0.075334660708904,-0.203923299908638,-0.129570811986923,0.067401953041553,0.101125866174698,0.012345892377198,0.000274753954727,-0.082996644079685,-0.122987866401672,0.050797116011381,-0.036472547799349,-0.128274664282799,0.050904721021652,0.007415542379022,0.161359921097755));
res += mul(Get(s1,dx,-dy), float4x4(-0.089581206440926,0.054635465145111,0.059473417699337,0.020881554111838,0.108070462942123,-0.004169400315732,0.099504843354225,0.035873990505934,-0.087064087390900,0.113169290125370,-0.103416815400124,0.095177762210369,-0.020253801718354,0.050726640969515,-0.127798363566399,0.019235150888562));
res += mul(Get(s1,dx,0), float4x4(0.206011965870857,-0.194355785846710,0.250308483839035,-0.185614004731178,0.042104985564947,-0.017890648916364,0.123944245278835,-0.002478552516550,-0.137812107801437,0.055144000798464,0.101472608745098,-0.016822824254632,-0.111717961728573,0.010963159613311,-0.110474281013012,0.121502324938774));
res += mul(Get(s1,dx,dy), float4x4(0.035676535218954,0.059279199689627,0.072862736880779,0.049707859754562,0.024906873703003,0.215080171823502,-0.047754023224115,0.129124537110329,0.247343733906746,-0.006622622720897,0.144174084067345,-0.094630479812622,0.145803421735764,0.140319451689720,-0.034112866967916,0.168935120105743));
res += mul(Get(s2,-dx,-dy), float4x4(0.083775244653225,-0.099781408905983,-0.183880895376205,0.127408608794212,-0.005201884545386,-0.158741667866707,-0.110885731875896,-0.115002796053886,-0.135040879249573,-0.120122499763966,-0.071622043848038,0.125481322407722,0.188497409224510,0.083846502006054,0.078725591301918,0.039942014962435));
res += mul(Get(s2,-dx,0), float4x4(0.060244977474213,-0.135502055287361,-0.059369575232267,0.083281837403774,0.068502679467201,-0.004469374194741,-0.024377966299653,0.134813472628593,0.145700216293335,-0.085692293941975,-0.084170013666153,-0.033093608915806,-0.054546844214201,-0.204960465431213,-0.061506815254688,-0.174166828393936));
res += mul(Get(s2,-dx,dy), float4x4(0.017847184091806,0.113717414438725,-0.056002933532000,0.093266360461712,-0.176187619566917,-0.060737241059542,-0.200188025832176,-0.047847751528025,-0.132543876767159,-0.055354058742523,-0.080865055322647,0.140997052192688,-0.045148562639952,0.001608897116967,-0.172165602445602,0.055192407220602));
res += mul(Get(s2,0,-dy), float4x4(0.135831892490387,-0.073958292603493,-0.199259296059608,0.357933819293976,-0.046497557312250,-0.000519974622875,-0.011476229876280,0.037955392152071,-0.031475082039833,-0.080895766615868,-0.096601024270058,-0.018272904679179,0.102080836892128,-0.113658443093300,-0.104996696114540,0.077607609331608));
res += mul(Get(s2,0,0), float4x4(0.009510640054941,0.027148818597198,0.136295899748802,-0.082595318555832,-0.144074678421021,0.035685114562511,-0.009995813481510,-0.063911974430084,0.021896524354815,0.006452456582338,0.101768620312214,-0.019354600459337,-0.039584670215845,0.010776869952679,-0.026014868170023,0.083156563341618));
res += mul(Get(s2,0,dy), float4x4(-0.425190806388855,-0.098337650299072,0.017815141007304,0.081994339823723,-0.011988834477961,0.084746792912483,-0.157104015350342,-0.130828678607941,0.070811621844769,-0.064009405672550,0.217510223388672,0.147357717156410,-0.009868823923171,-0.076436810195446,-0.155554831027985,0.026995364576578));
res += mul(Get(s2,dx,-dy), float4x4(0.143562570214272,0.021294789388776,-0.008888962678611,0.006136287469417,-0.151381522417068,0.063297294080257,0.140914171934128,0.079245358705521,0.005570512264967,-0.056832537055016,-0.011827353388071,-0.197524011135101,0.118532352149487,0.016839107498527,-0.020921777933836,-0.156096667051315));
res += mul(Get(s2,dx,0), float4x4(-0.016963953152299,-0.114553727209568,-0.319685310125351,-0.021981062367558,0.167840778827667,-0.039403192698956,0.083520621061325,0.070238359272480,0.033030651509762,0.208530202507973,-0.110805600881577,-0.087330408394337,0.010460942052305,-0.052294816821814,-0.140055030584335,-0.000750295992475));
res += mul(Get(s2,dx,dy), float4x4(-0.029978966340423,0.024513781070709,-0.006239308975637,-0.078660197556019,0.164666458964348,-0.001606030971743,0.173661082983017,-0.185469999909401,0.032986037433147,-0.143965989351273,0.153234004974365,-0.049558941274881,-0.302092611789703,0.042041622102261,-0.047810636460781,0.243872880935669));
res += mul(Get(s3,-dx,-dy), float4x4(-0.087162852287292,-0.098373189568520,-0.129061907529831,-0.056096646934748,0.064823761582375,-0.159932136535645,-0.123049415647984,0.278805255889893,0.092782609164715,-0.055252090096474,-0.023223109543324,0.021380141377449,-0.107097223401070,0.283954411745071,0.017652492970228,-0.223605751991272));
res += mul(Get(s3,-dx,0), float4x4(0.014417347498238,0.022449834272265,0.108000606298447,-0.126366451382637,-0.077629171311855,0.188621237874031,0.070009544491768,-0.045482218265533,0.156223773956299,-0.070113927125931,-0.120350658893585,-0.097675450146198,-0.211275637149811,-0.093288451433182,-0.018747659400105,0.019260950386524));
res += mul(Get(s3,-dx,dy), float4x4(0.108107738196850,0.036904752254486,0.086017183959484,-0.163342028856277,0.032647453248501,-0.110193632543087,0.116327777504921,-0.083435602486134,-0.135019719600677,-0.165641665458679,-0.072789989411831,0.011527125723660,0.174393534660339,-0.145770534873009,-0.050139229744673,-0.014912463724613));
res += mul(Get(s3,0,-dy), float4x4(-0.086450710892677,-0.056156802922487,0.162630632519722,-0.111058555543423,0.047993842512369,-0.013397319242358,-0.108985811471939,0.028843931853771,-0.109853006899357,0.151380091905594,0.089301325380802,0.126486808061600,-0.129258424043655,0.083039365708828,-0.054699346423149,-0.048327248543501));
res += mul(Get(s3,0,0), float4x4(0.073968358337879,-0.097954861819744,-0.044738780707121,0.141936242580414,-0.283150196075439,-0.054854098707438,0.084297887980938,0.056280799210072,0.098485827445984,-0.064260281622410,-0.069962203502655,-0.075662769377232,0.024343311786652,-0.114765256643295,0.028994718566537,0.099942773580551));
res += mul(Get(s3,0,dy), float4x4(-0.107552520930767,-0.047866445034742,-0.146340847015381,-0.106779120862484,0.097429081797600,-0.068634249269962,-0.043510571122169,-0.091686047613621,-0.123774304986000,-0.076792053878307,-0.119018658995628,-0.063599355518818,0.234763041138649,-0.035315457731485,0.016139114275575,-0.166468888521194));
res += mul(Get(s3,dx,-dy), float4x4(-0.144736498594284,-0.161699071526527,0.004429541528225,-0.071438662707806,0.058216195553541,0.028249535709620,-0.076419249176979,-0.014211834408343,0.056146010756493,0.066702261567116,0.028431041166186,0.194222614169121,0.007790112402290,0.034127097576857,0.033394783735275,-0.131487295031548));
res += mul(Get(s3,dx,0), float4x4(0.091760814189911,0.016588052734733,0.035538189113140,0.125808030366898,-0.093122310936451,0.007937833666801,0.005706652067602,0.159237861633301,-0.173798844218254,-0.018389476463199,0.115371599793434,0.110762953758240,0.041828170418739,0.059242986142635,0.075416184961796,0.267191290855408));
res += mul(Get(s3,dx,dy), float4x4(-0.005778633989394,0.167059853672981,-0.043378371745348,0.004354148171842,-0.058903045952320,-0.157076150178909,0.043661620467901,0.082439579069614,-0.198239594697952,-0.082066565752029,0.072562679648399,0.289085328578949,-0.059780213981867,-0.047143448144197,-0.073633939027786,-0.154256060719490));
return max(float4(0,0,0,0), res);
}