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
res += mul(Get(s0,-dx,-dy), float4x4(0.069410458207130,0.000092557093012,-0.013788293115795,-0.055635783821344,-0.141340240836143,0.074668586254120,0.103856712579727,0.126024842262268,0.096353821456432,0.048434063792229,0.069321058690548,-0.038815315812826,0.135236829519272,0.035667888820171,-0.161545082926750,0.083111837506294));
res += mul(Get(s0,-dx,0), float4x4(-0.013962480239570,0.070962823927402,0.074722923338413,-0.036412518471479,-0.098438665270805,-0.036989971995354,0.074277915060520,0.019942918792367,-0.074928909540176,-0.094778761267662,-0.031561523675919,-0.130197837948799,-0.064676642417908,0.240925118327141,-0.035065811127424,-0.090588279068470));
res += mul(Get(s0,-dx,dy), float4x4(0.078232206404209,0.120478548109531,0.037527460604906,0.016112668439746,-0.096765488386154,-0.110314704477787,-0.044852934777737,-0.081228055059910,0.079262167215347,-0.029336612671614,-0.157703608274460,0.066845431923866,-0.037805099040270,-0.029978375881910,0.035431075841188,-0.014805690385401));
res += mul(Get(s0,0,-dy), float4x4(0.019017852842808,-0.139551147818565,0.057487349957228,-0.051184944808483,-0.166393935680389,0.116675265133381,-0.088305398821831,0.013020832091570,-0.125334098935127,-0.085808262228966,0.076528288424015,0.098626405000687,0.007014652714133,-0.137557208538055,0.107174292206764,-0.187588617205620));
res += mul(Get(s0,0,0), float4x4(0.036047995090485,0.095505602657795,0.105526812374592,0.040695555508137,-0.037169706076384,-0.052773609757423,0.155264928936958,-0.088934458792210,0.174997255206108,-0.076722659170628,-0.001667942153290,-0.104000560939312,-0.131268694996834,-0.153212472796440,0.054232019931078,-0.063556633889675));
res += mul(Get(s0,0,dy), float4x4(-0.081590503454208,0.119871050119400,-0.095439679920673,-0.109156727790833,-0.038877699524164,-0.129697769880295,0.010431166738272,-0.166852816939354,-0.086950555443764,-0.024430442601442,-0.020399592816830,0.049792245030403,0.131845369935036,0.107461944222450,0.144142493605614,-0.113730236887932));
res += mul(Get(s0,dx,-dy), float4x4(0.030055528506637,0.038596589118242,0.099178478121758,-0.123845852911472,0.079436622560024,0.245701596140862,-0.130422189831734,-0.005520973820239,0.093463338911533,-0.014900461770594,-0.114849098026752,0.054623909294605,0.020817477256060,-0.223952218890190,0.045675411820412,0.095626994967461));
res += mul(Get(s0,dx,0), float4x4(-0.207767933607101,-0.002900889143348,0.013640083372593,0.050776746124029,-0.040599890053272,0.116308845579624,0.136184126138687,0.063258044421673,0.007676925044507,-0.025677466765046,0.063652798533440,0.094218090176582,-0.078058570623398,0.080391891300678,0.067757405340672,0.006509216967970));
res += mul(Get(s0,dx,dy), float4x4(0.078893221914768,-0.120461255311966,0.087031669914722,-0.028022825717926,0.027460698038340,0.066107273101807,0.054457593709230,0.092546693980694,0.152294859290123,-0.069794096052647,-0.167512550950050,-0.211716398596764,-0.108682774007320,0.044891417026520,-0.037772376090288,-0.053560029715300));
res += mul(Get(s1,-dx,-dy), float4x4(-0.062476899474859,0.326093822717667,-0.112281575798988,-0.127742901444435,0.039814960211515,0.011162159033120,0.226888492703438,-0.197153463959694,-0.029245333746076,0.097962193191051,-0.215038344264030,-0.098798207938671,-0.020312184467912,0.024699460715055,-0.076958633959293,-0.088163971900940));
res += mul(Get(s1,-dx,0), float4x4(0.151298284530640,0.036737598478794,0.022575534880161,0.145263433456421,-0.002684928011149,0.067149743437767,0.062218759208918,0.096198230981827,0.011258357204497,0.084476478397846,0.089033760130405,-0.056009694933891,-0.054151210933924,-0.101674377918243,-0.219880878925323,0.067740604281425));
res += mul(Get(s1,-dx,dy), float4x4(0.068338431417942,0.107929177582264,0.159206435084343,0.026853064075112,0.010640730150044,-0.355683773756027,-0.009464785456657,-0.001745663234033,0.041920844465494,0.015061875805259,-0.038484457880259,-0.237768992781639,-0.088197655975819,0.069998301565647,0.146186843514442,0.107019901275635));
res += mul(Get(s1,0,-dy), float4x4(-0.093344554305077,0.050275187939405,-0.321154117584229,0.062786974012852,0.012945888563991,0.119086116552353,-0.088784903287888,-0.020101837813854,0.083392128348351,-0.005118553992361,0.018065765500069,-0.082052916288376,0.010091050527990,0.114622272551060,-0.025950675830245,0.078064382076263));
res += mul(Get(s1,0,0), float4x4(0.103770181536674,-0.089328952133656,-0.002073501469567,0.026720549911261,-0.141217350959778,0.023956067860126,-0.141148731112480,-0.195868447422981,0.086825862526894,-0.074992328882217,-0.022167690098286,0.047430846840143,0.011257259175181,-0.048003338277340,0.299570232629776,-0.164118424057961));
res += mul(Get(s1,0,dy), float4x4(-0.107932373881340,-0.089161463081837,0.034202057868242,-0.046556182205677,0.003269523615018,-0.011255492456257,-0.150168493390083,-0.103870540857315,0.007172053214163,0.059457685798407,-0.022244604304433,0.046282704919577,0.084178574383259,0.083401970565319,0.046174880117178,-0.058124810457230));
res += mul(Get(s1,dx,-dy), float4x4(-0.062982603907585,0.040026679635048,0.141473382711411,-0.067355528473854,-0.030639149248600,-0.076913647353649,0.057628445327282,0.242925390601158,0.147066742181778,0.005591492168605,-0.032189436256886,-0.189778327941895,-0.102780953049660,-0.055444855242968,-0.087713561952114,-0.013487128540874));
res += mul(Get(s1,dx,0), float4x4(0.104728870093822,0.083566434681416,-0.024769661948085,0.094656646251678,0.057698685675859,-0.046638939529657,-0.006405756343156,-0.073354095220566,0.014820213429630,-0.115782514214516,-0.136123523116112,-0.101469635963440,-0.003061067778617,-0.030853765085340,0.097350507974625,0.001184681430459));
res += mul(Get(s1,dx,dy), float4x4(0.058910869061947,0.073508992791176,-0.001414332306013,-0.152833133935928,0.090213797986507,0.126944407820702,-0.134747475385666,-0.031699456274509,-0.018242316320539,-0.052603013813496,0.018520873039961,-0.243087291717529,-0.068006008863449,0.111464813351631,0.130195572972298,-0.235110864043236));
res += mul(Get(s2,-dx,-dy), float4x4(0.025582712143660,0.079557895660400,0.018674697726965,-0.013809612952173,-0.088067367672920,-0.033005278557539,-0.048032924532890,0.185008600354195,-0.206196025013924,-0.066864207386971,0.159922659397125,-0.098118878901005,-0.051945794373751,-0.018587496131659,0.095886446535587,-0.108064576983452));
res += mul(Get(s2,-dx,0), float4x4(-0.064507655799389,0.180316597223282,-0.003742607543245,-0.131320297718048,-0.008480901829898,0.011630168184638,-0.097863003611565,0.015795400366187,-0.057159975171089,-0.017840225249529,0.018089976161718,0.012312677688897,0.070920631289482,0.016599413007498,0.077418237924576,0.018082771450281));
res += mul(Get(s2,-dx,dy), float4x4(-0.060853544622660,0.227934539318085,-0.177769616246223,0.062968119978905,0.058190967887640,0.149282366037369,-0.049317985773087,0.129377946257591,-0.179073542356491,0.044065579771996,0.124491184949875,-0.132418736815453,-0.047191832214594,0.085901185870171,0.056541886180639,-0.128585085272789));
res += mul(Get(s2,0,-dy), float4x4(0.046321965754032,-0.080298282206059,0.185822486877441,-0.100717723369598,-0.151551038026810,-0.024478785693645,0.167745739221573,-0.148716300725937,-0.070192404091358,-0.043262068182230,-0.072024986147881,0.010874235071242,-0.066490501165390,-0.051955971866846,-0.108589626848698,-0.039284519851208));
res += mul(Get(s2,0,0), float4x4(-0.014926118776202,0.086528040468693,0.248741015791893,0.234102785587311,0.064037516713142,-0.030657304450870,-0.031145306304097,0.122266463935375,0.004695831332356,0.037626937031746,-0.107547849416733,-0.200647950172424,-0.164000526070595,0.033213205635548,0.008674128912389,-0.001356963417493));
res += mul(Get(s2,0,dy), float4x4(-0.119245998561382,0.037894740700722,-0.039847746491432,-0.084249764680862,0.058403085917234,0.019622582942247,0.270630240440369,0.090243972837925,-0.010561884380877,0.142460674047470,-0.158481746912003,0.038355868309736,0.140845745801926,0.120369210839272,-0.042809650301933,0.079439572989941));
res += mul(Get(s2,dx,-dy), float4x4(0.137216925621033,0.155833378434181,-0.031453642994165,0.001763126114383,-0.092774502933025,-0.095557667315006,0.017729941755533,-0.163631767034531,-0.001096131512895,0.040576882660389,0.091736309230328,0.173053771257401,-0.112455531954765,-0.110968761146069,0.185992807149887,0.102777503430843));
res += mul(Get(s2,dx,0), float4x4(0.003779629012570,-0.133816674351692,-0.001865860191174,-0.051433999091387,0.005185078363866,0.105972938239574,-0.121743083000183,-0.008621717803180,0.047640223056078,0.139388725161552,0.012385610491037,-0.064518302679062,-0.103691376745701,-0.199064493179321,0.280939161777496,-0.037000451236963));
res += mul(Get(s2,dx,dy), float4x4(0.020904084667563,-0.031460594385862,0.164281442761421,-0.179445296525955,-0.057670392096043,0.123962961137295,0.020870178937912,0.109595604240894,-0.048154447227716,0.163582548499107,-0.009607802145183,-0.089533150196075,0.007399488240480,0.049178179353476,0.112480707466602,-0.071914479136467));
res += mul(Get(s3,-dx,-dy), float4x4(0.059552576392889,-0.049864683300257,-0.075241304934025,-0.066797725856304,0.028201289474964,-0.006187957245857,-0.031096877530217,-0.015621373429894,-0.116955503821373,-0.024202018976212,-0.032513815909624,0.099324069917202,-0.193863376975060,0.064214594662189,-0.013243380934000,0.111640840768814));
res += mul(Get(s3,-dx,0), float4x4(-0.101585619151592,-0.017197111621499,-0.001030753832310,0.253504097461700,-0.124858543276787,-0.147934332489967,-0.107068039476871,0.103344358503819,0.009606212377548,-0.138292714953423,-0.033514074981213,-0.032030712813139,0.168691232800484,0.117142803966999,0.006412489339709,-0.071068659424782));
res += mul(Get(s3,-dx,dy), float4x4(-0.128135189414024,0.063322037458420,0.113814406096935,-0.042971879243851,-0.030320633202791,-0.072463922202587,0.164006069302559,-0.066871784627438,-0.303233623504639,0.119390107691288,0.022687038406730,0.125651538372040,-0.265751868486404,-0.057407140731812,-0.004426972940564,-0.045873008668423));
res += mul(Get(s3,0,-dy), float4x4(-0.112984672188759,0.070228055119514,0.127984166145325,-0.030772525817156,-0.041602466255426,-0.089393936097622,0.055267274379730,0.087082579731941,0.051824137568474,0.107895486056805,0.099876418709755,-0.068930111825466,-0.108235746622086,-0.114415347576141,-0.190314158797264,0.068341061472893));
res += mul(Get(s3,0,0), float4x4(-0.311840116977692,-0.009364652447402,-0.093603141605854,0.233950480818748,-0.003179464722052,0.064998432993889,-0.041618537157774,-0.066789530217648,-0.093144215643406,0.023871460929513,0.006247971206903,0.005559335462749,0.098515965044498,0.034329630434513,-0.150313362479210,-0.085715875029564));
res += mul(Get(s3,0,dy), float4x4(-0.050271630287170,0.126101359724998,0.023268541321158,-0.223390981554985,0.028425853699446,0.039092235267162,0.130361929535866,-0.123096227645874,-0.048394288867712,0.054250728338957,0.077377445995808,0.026781275868416,0.130685776472092,0.079968877136707,0.166342705488205,0.068339630961418));
res += mul(Get(s3,dx,-dy), float4x4(-0.014159773476422,0.004678619094193,-0.096297457814217,0.065618529915810,0.054082095623016,-0.128267049789429,-0.171688258647919,-0.083266220986843,-0.178639754652977,0.007348339539021,0.026410745456815,0.137554198503494,0.070692926645279,-0.138863950967789,-0.135074570775032,0.004949111957103));
res += mul(Get(s3,dx,0), float4x4(0.000574333826080,-0.125835224986076,0.077449344098568,0.256994098424911,0.082749873399734,-0.160008132457733,0.057460609823465,-0.094412587583065,0.160753056406975,0.192901790142059,-0.196992784738541,-0.047403626143932,-0.026548080146313,0.100314036011696,0.104536533355713,-0.173160329461098));
res += mul(Get(s3,dx,dy), float4x4(-0.081967569887638,-0.082917362451553,-0.062125716358423,0.090006344020367,0.033420089632273,-0.008438617922366,0.004441349301487,0.096802033483982,-0.218243360519409,0.158814534544945,0.048230431973934,-0.150960654020309,-0.030306510627270,-0.129042640328407,-0.015445366501808,-0.071581557393074));
return max(float4(0,0,0,0), res);
}