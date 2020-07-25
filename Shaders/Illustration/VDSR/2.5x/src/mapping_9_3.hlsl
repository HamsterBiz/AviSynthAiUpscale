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
res += mul(Get(s0,-dx,-dy), float4x4(-0.156581997871399,0.152949348092079,0.000194415595615,0.039527930319309,-0.134495988488197,-0.010691546835005,-0.069460980594158,-0.052152793854475,0.135876402258873,-0.020427599549294,0.066080465912819,0.226081848144531,-0.014145141467452,-0.079185403883457,0.020785944536328,0.050279244780540));
res += mul(Get(s0,-dx,0), float4x4(0.164752528071404,0.131187453866005,0.070705816149712,0.081878468394279,-0.030976708978415,0.073686033487320,-0.133760452270508,-0.114666908979416,0.127211555838585,-0.034483049064875,0.073988266289234,0.151222854852676,-0.029679976403713,0.039345700293779,-0.195779576897621,0.094482190907001));
res += mul(Get(s0,-dx,dy), float4x4(-0.145229339599609,-0.075952909886837,-0.074371792376041,0.017926184460521,-0.009663383476436,0.002827960532159,-0.078984744846821,0.104779452085495,0.034367188811302,0.043500229716301,-0.057851962745190,0.225400075316429,0.108574554324150,0.053569693118334,0.098674200475216,-0.000845935603138));
res += mul(Get(s0,0,-dy), float4x4(-0.083203904330730,0.017941473051906,0.101207941770554,-0.032021429389715,-0.175635561347008,0.164837405085564,0.016016485169530,0.063953347504139,-0.064475461840630,0.073445625603199,-0.176838159561157,0.134133026003838,-0.064706951379776,0.123201563954353,-0.068881809711456,0.171096920967102));
res += mul(Get(s0,0,0), float4x4(-0.129621654748917,0.029631402343512,-0.031294718384743,-0.073399052023888,0.100884288549423,-0.086027704179287,0.006558149587363,-0.113461941480637,-0.102491609752178,0.008615996688604,0.092798411846161,0.221963375806808,-0.009304475039244,-0.017239367589355,-0.104885995388031,-0.195745334029198));
res += mul(Get(s0,0,dy), float4x4(0.199262008070946,0.002410188550130,-0.140053763985634,-0.218477696180344,0.103567622601986,0.204860955476761,0.099780164659023,-0.234180852770805,0.221925690770149,-0.081777133047581,-0.219596266746521,0.013807280920446,0.273681879043579,-0.115246213972569,-0.035145428031683,0.187971949577332));
res += mul(Get(s0,dx,-dy), float4x4(-0.097873896360397,-0.099283270537853,0.071081638336182,-0.108995772898197,0.166310906410217,-0.180113837122917,-0.199983805418015,0.131926313042641,-0.015725197270513,0.100446134805679,-0.000521791807842,-0.155251994729042,-0.246007502079010,0.095298871397972,-0.010683018714190,-0.020473225042224));
res += mul(Get(s0,dx,0), float4x4(0.005170113407075,0.021941479295492,0.013538096100092,-0.070833802223206,-0.135176479816437,-0.022154301404953,-0.127980366349220,0.072012975811958,-0.117476612329483,0.039823714643717,-0.167822048068047,-0.099654182791710,0.093645393848419,0.074344791471958,0.191221266984940,0.039244797080755));
res += mul(Get(s0,dx,dy), float4x4(0.097201645374298,-0.064249806106091,-0.160146132111549,0.052389074116945,-0.036681227385998,0.128547325730324,0.108853623270988,0.131537377834320,-0.085137933492661,-0.008674109354615,0.044676523655653,-0.054235931485891,0.108678795397282,0.139581203460693,-0.273874193429947,-0.075214184820652));
res += mul(Get(s1,-dx,-dy), float4x4(0.201582938432693,0.146067157387733,0.069421730935574,0.123808957636356,0.049763333052397,-0.096249036490917,-0.072940722107887,0.015326915308833,0.042100988328457,0.011650382541120,0.196390196681023,0.075587160885334,-0.076659552752972,-0.193608656525612,-0.227657049894333,0.100746326148510));
res += mul(Get(s1,-dx,0), float4x4(0.031440604478121,0.019991409033537,-0.099410265684128,0.176007851958275,-0.075328536331654,-0.223389461636543,-0.110613353550434,-0.092564955353737,0.040154036134481,0.094343081116676,-0.055172175168991,0.218539178371429,0.201715841889381,-0.268689364194870,-0.101747602224350,0.115840427577496));
res += mul(Get(s1,-dx,dy), float4x4(0.063218325376511,-0.082633092999458,0.109018623828888,0.214402988553047,0.235416442155838,-0.186962872743607,-0.160798460245132,0.098510034382343,0.068807728588581,0.046015750616789,0.111706189811230,0.036495715379715,-0.008969989605248,-0.197264283895493,0.060126215219498,0.267149448394775));
res += mul(Get(s1,0,-dy), float4x4(-0.038331717252731,0.037013933062553,0.007659140508622,0.087083481252193,-0.214209720492363,0.215614199638367,0.111838519573212,0.246687546372414,0.046447213739157,0.066284127533436,0.129462465643883,0.035907965153456,-0.000598895479925,0.081987716257572,0.129148274660110,-0.018675180152059));
res += mul(Get(s1,0,0), float4x4(0.343698203563690,-0.108170971274376,0.202231332659721,-0.218022286891937,-0.072573348879814,-0.172007262706757,0.232561811804771,0.068779975175858,-0.212628751993179,0.112858101725578,-0.000776538567152,0.141164332628250,-0.020123893395066,-0.157706111669540,0.036785196512938,0.180990755558014));
res += mul(Get(s1,0,dy), float4x4(0.111392863094807,-0.058134544640779,-0.179052546620369,-0.025845125317574,-0.025792920961976,0.099285542964935,-0.068362951278687,-0.117379397153854,0.088179811835289,0.041663028299809,-0.037666179239750,-0.079120479524136,-0.088597536087036,0.041095014661551,0.133245378732681,-0.076114930212498));
res += mul(Get(s1,dx,-dy), float4x4(0.077429734170437,-0.002611036179587,0.050346679985523,-0.273417264223099,0.051885016262531,0.161115854978561,0.022121923044324,-0.029687121510506,0.094966918230057,0.067948132753372,0.184125214815140,-0.063322655856609,0.164008036255836,-0.096561908721924,-0.110191740095615,0.087191052734852));
res += mul(Get(s1,dx,0), float4x4(0.130463942885399,-0.107366427779198,0.015179255045950,0.026813615113497,-0.048392865806818,-0.148205175995827,-0.005486370529979,-0.101043008267879,0.078791864216328,0.068439908325672,0.126052930951118,-0.009447315707803,0.036301936954260,-0.015090708620846,-0.034807786345482,0.007207394577563));
res += mul(Get(s1,dx,dy), float4x4(0.055792629718781,-0.065325252711773,0.042687058448792,-0.218034014105797,-0.118058443069458,-0.091687701642513,0.007230358198285,-0.159929484128952,0.045821793377399,0.044224809855223,0.108119152486324,-0.016730124130845,0.051642455160618,-0.070532150566578,-0.027320757508278,-0.353220313787460));
res += mul(Get(s2,-dx,-dy), float4x4(-0.177407100796700,0.071666508913040,0.087763778865337,-0.033086478710175,-0.179508998990059,0.011886450462043,0.109729163348675,-0.088010780513287,0.053216405212879,-0.219176352024078,0.045309916138649,0.064039856195450,-0.019255395978689,-0.220475569367409,-0.215189844369888,-0.057920306921005));
res += mul(Get(s2,-dx,0), float4x4(0.039792738854885,0.197322890162468,0.029586764052510,0.027249842882156,-0.093658626079559,0.003178328275681,0.005995350424200,0.027073413133621,0.054099116474390,0.119143128395081,0.307414174079895,0.029887689277530,0.030926736071706,-0.061849702149630,0.049428127706051,0.016353741288185));
res += mul(Get(s2,-dx,dy), float4x4(-0.066121108829975,0.039699826389551,0.088190808892250,0.110179811716080,-0.155323937535286,-0.023286299780011,-0.028273345902562,0.066956087946892,0.063320919871330,-0.040239118039608,0.177566587924957,0.061279755085707,0.031358774751425,0.000124670623336,0.018330762162805,0.157166659832001));
res += mul(Get(s2,0,-dy), float4x4(0.099562302231789,-0.013314273208380,0.112057015299797,-0.026709781959653,-0.168940737843513,-0.036632426083088,-0.114783644676208,-0.041357181966305,0.027123317122459,-0.108420394361019,0.100384309887886,0.095448315143585,0.073452182114124,-0.089169278740883,0.011687709018588,0.044593743979931));
res += mul(Get(s2,0,0), float4x4(0.058668654412031,0.012936502695084,0.118060208857059,0.379449069499969,0.020608223974705,-0.076157413423061,-0.146354332566261,0.096541695296764,0.001883630757220,0.096245318651199,0.154015779495239,-0.053326111286879,-0.009722013026476,0.033044051378965,-0.016329556703568,-0.130924865603447));
res += mul(Get(s2,0,dy), float4x4(-0.033516164869070,-0.169899269938469,0.041511096060276,-0.027957534417510,-0.143416225910187,0.192293405532837,-0.018377378582954,-0.166971653699875,-0.123282670974731,0.030497701838613,-0.121212549507618,-0.023459307849407,0.200523078441620,0.274338841438293,-0.133199959993362,0.043893035501242));
res += mul(Get(s2,dx,-dy), float4x4(0.067785292863846,0.175798133015633,0.021155672147870,0.116969376802444,-0.005514128599316,0.084322623908520,-0.185962736606598,0.023521130904555,0.109080262482166,0.063467018306255,0.067437686026096,0.068615138530731,-0.101736500859261,-0.329646974802017,-0.045935600996017,0.131421983242035));
res += mul(Get(s2,dx,0), float4x4(-0.219413921236992,0.100461184978485,0.148790970444679,-0.006005591712892,-0.008849865756929,0.120031557977200,0.024443048983812,-0.044802058488131,-0.119848616421223,-0.091048114001751,-0.137277528643608,-0.039760783314705,-0.190950825810432,0.022236995398998,0.098557211458683,-0.024391341954470));
res += mul(Get(s2,dx,dy), float4x4(-0.073810584843159,0.141025304794312,-0.036387823522091,-0.131404593586922,0.045339282602072,0.009769677184522,-0.106262728571892,-0.028741773217916,0.068442352116108,0.039154961705208,-0.038366176187992,-0.074527047574520,-0.004670286085457,-0.105383723974228,-0.113721996545792,-0.090398743748665));
res += mul(Get(s3,-dx,-dy), float4x4(0.073343835771084,-0.083772517740726,-0.065022751688957,-0.090337321162224,-0.189562335610390,-0.028059190139174,0.185955017805099,-0.230103760957718,-0.015073481947184,0.032678268849850,-0.189225256443024,0.215423211455345,0.051593426615000,-0.008589556440711,0.040410533547401,0.022765412926674));
res += mul(Get(s3,-dx,0), float4x4(0.001780551625416,-0.100965157151222,-0.093830376863480,-0.130298554897308,-0.135176330804825,0.029575234279037,-0.371220767498016,0.020558962598443,0.255530506372452,0.114987313747406,-0.128310322761536,-0.124043062329292,-0.180735766887665,-0.023935282602906,0.143462389707565,-0.230702698230743));
res += mul(Get(s3,-dx,dy), float4x4(-0.023409167304635,-0.059333838522434,-0.110243968665600,-0.134766086935997,-0.228837013244629,0.009237339720130,-0.055291626602411,0.044686783105135,0.153853878378868,0.029331957921386,0.080482602119446,0.158167496323586,0.301483809947968,-0.041929025202990,-0.096644937992096,-0.089750200510025));
res += mul(Get(s3,0,-dy), float4x4(0.031945090740919,-0.089614160358906,0.025517219677567,-0.027812566608191,-0.238949462771416,-0.108063399791718,0.072260715067387,0.111648432910442,0.166883468627930,0.061352588236332,0.148191377520561,0.001818204997107,0.174123853445053,-0.151988610625267,0.128208890557289,-0.024499705061316));
res += mul(Get(s3,0,0), float4x4(0.029769696295261,0.073003254830837,-0.116620451211929,-0.035528708249331,0.003198816208169,0.223574861884117,-0.154424697160721,0.081561096012592,-0.188658401370049,0.023827411234379,0.188474595546722,-0.004922794178128,-0.049315683543682,-0.032607153058052,0.111305825412273,0.153895571827888));
res += mul(Get(s3,0,dy), float4x4(-0.105879686772823,0.148220047354698,0.111087948083878,-0.217483341693878,0.028450367972255,-0.068966425955296,-0.081582494080067,-0.049401070922613,0.070907436311245,0.004482627846301,0.279115468263626,-0.060187198221684,-0.096330843865871,0.015100411139429,-0.106360822916031,0.090190455317497));
res += mul(Get(s3,dx,-dy), float4x4(-0.157272323966026,0.087085247039795,-0.093596957623959,-0.043877776712179,-0.163215279579163,-0.119168765842915,0.050384569913149,-0.308810263872147,-0.024489417672157,-0.006110632792115,0.115629121661186,-0.114086180925369,-0.154732540249825,-0.255640953779221,0.153843611478806,-0.070849321782589));
res += mul(Get(s3,dx,0), float4x4(0.078835278749466,0.102580659091473,0.004802780691534,0.176979154348373,-0.025027789175510,0.130043759942055,-0.092727862298489,0.000687606632710,-0.076325796544552,0.133179977536201,-0.120851524174213,-0.096781320869923,0.107621110975742,-0.102796174585819,-0.020856376737356,-0.204807460308075));
res += mul(Get(s3,dx,dy), float4x4(-0.214624077081680,0.112263217568398,-0.011947403661907,0.054031923413277,0.015158618800342,-0.090886466205120,-0.026594348251820,0.101383872330189,0.031138991937041,0.036305543035269,0.135941624641418,-0.065318353474140,0.195085227489471,0.124813586473465,0.162599414587021,-0.064770139753819));
return max(float4(0,0,0,0), res);
}