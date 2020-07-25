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
res += mul(Get(s0,-dx,-dy), float4x4(-0.068710908293724,0.029090888798237,-0.027443677186966,-0.135199800133705,0.088474549353123,-0.200023800134659,-0.048727627843618,-0.002354419324547,0.040131669491529,-0.091321051120758,0.048354599624872,0.249497562646866,-0.156208083033562,0.111752979457378,-0.081674128770828,0.032912805676460));
res += mul(Get(s0,-dx,0), float4x4(-0.187648653984070,0.073248066008091,-0.010498829185963,-0.060648448765278,-0.054819818586111,-0.134915247559547,-0.076720684766769,-0.042078353464603,-0.027972847223282,-0.047445647418499,-0.104631930589676,-0.132936328649521,-0.106571488082409,0.014191531576216,0.158211007714272,-0.119021236896515));
res += mul(Get(s0,-dx,dy), float4x4(0.003256318159401,-0.029116876423359,0.011837022379041,-0.088078871369362,-0.054886296391487,-0.076300740242004,-0.015806457027793,0.163316458463669,-0.154380828142166,-0.107717439532280,0.094951197504997,0.073395632207394,0.162165299057961,-0.047574352473021,0.050579924136400,0.058041840791702));
res += mul(Get(s0,0,-dy), float4x4(0.085018925368786,0.259452581405640,0.046164788305759,-0.099467322230339,-0.018462209030986,-0.017551796510816,-0.047394335269928,-0.034573297947645,-0.044017739593983,-0.049534030258656,-0.200071573257446,-0.085763238370419,0.021865669637918,0.089814938604832,0.035639349371195,-0.064674220979214));
res += mul(Get(s0,0,0), float4x4(0.028677567839622,-0.043598446995020,-0.009285279549658,0.088525973260403,-0.041773173958063,-0.126338258385658,0.109853044152260,0.039320752024651,0.046569064259529,0.033934883773327,-0.036190446466208,0.118896231055260,0.022425664588809,-0.072462305426598,-0.042679943144321,0.141371965408325));
res += mul(Get(s0,0,dy), float4x4(0.114160068333149,-0.070170678198338,-0.012056422419846,0.033734545111656,0.175325214862823,0.106595873832703,0.136056810617447,0.085910394787788,-0.098268866539001,0.120245754718781,0.195507735013962,0.122689902782440,0.003947584424168,-0.110757961869240,0.085994318127632,0.218014970421791));
res += mul(Get(s0,dx,-dy), float4x4(-0.065002247691154,-0.009267282672226,0.195795446634293,-0.055501647293568,0.140149667859077,0.115912541747093,-0.020352952182293,0.057405881583691,0.042356919497252,-0.165125846862793,-0.131842032074928,0.166928961873055,0.127878636121750,-0.162284806370735,0.095470763742924,0.012669124640524));
res += mul(Get(s0,dx,0), float4x4(0.055872566998005,0.072346352040768,-0.123850442469120,0.071119032800198,0.108711346983910,0.097354881465435,-0.049580704420805,0.013801124878228,0.092554271221161,-0.060138888657093,0.095444753766060,0.076272472739220,-0.107625782489777,-0.081316463649273,0.073166273534298,-0.149314075708389));
res += mul(Get(s0,dx,dy), float4x4(-0.087223187088966,-0.278647601604462,0.138706400990486,-0.084523744881153,0.032004732638597,0.030044997110963,0.019847581163049,-0.058812748640776,0.176923900842667,-0.144445180892944,0.069394946098328,0.038183003664017,0.129572317004204,-0.130806893110275,0.054419033229351,0.021859066560864));
res += mul(Get(s1,-dx,-dy), float4x4(0.195134252309799,0.159030735492706,0.046980503946543,-0.171125113964081,0.166881710290909,0.032153964042664,-0.013940536417067,0.042496781796217,-0.019838055595756,0.040742710232735,-0.118428207933903,0.125546321272850,-0.111196197569370,-0.107403166592121,0.145351931452751,-0.082420572638512));
res += mul(Get(s1,-dx,0), float4x4(-0.092052862048149,0.076620839536190,-0.064207516610622,0.057980559766293,0.042166683822870,-0.084303982555866,-0.029479807242751,0.068870760500431,-0.109028697013855,0.053189650177956,-0.051819894462824,0.037619948387146,0.076344907283783,0.133492663502693,0.168910190463066,-0.118072934448719));
res += mul(Get(s1,-dx,dy), float4x4(-0.094168454408646,0.037457507103682,0.134718134999275,-0.079860493540764,0.030991617590189,-0.006161024793983,0.053085513412952,-0.005165569018573,0.108900748193264,0.217751204967499,-0.163796156644821,-0.081835016608238,-0.064898416399956,0.056113008409739,-0.100564256310463,0.120034255087376));
res += mul(Get(s1,0,-dy), float4x4(0.113366022706032,0.059890229254961,0.002174928551540,0.015429841354489,-0.128830611705780,0.067223444581032,-0.014419574290514,0.027750182896852,0.117681495845318,0.053834132850170,0.125837758183479,0.064311079680920,-0.121593885123730,-0.096589595079422,0.025882596150041,0.129641637206078));
res += mul(Get(s1,0,0), float4x4(0.176638215780258,0.109495796263218,-0.022345688194036,0.015404688194394,-0.046732608228922,-0.054150886833668,0.170044109225273,0.113650448620319,0.104758560657501,0.068607017397881,0.015361505560577,-0.034958794713020,0.061515200883150,0.151538372039795,-0.052531111985445,0.005295529961586));
res += mul(Get(s1,0,dy), float4x4(0.195312500000000,0.152046248316765,-0.163394346833229,-0.022478302940726,0.029967842623591,-0.204653725028038,-0.104735329747200,0.160199701786041,-0.087720684707165,0.126990839838982,0.105281166732311,-0.174168661236763,-0.020404880866408,0.072538025677204,-0.140179812908173,0.078938849270344));
res += mul(Get(s1,dx,-dy), float4x4(0.107324004173279,0.009739211760461,-0.047511231154203,0.016649723052979,-0.011571364477277,0.297681033611298,-0.057683143764734,0.285573363304138,-0.112418927252293,-0.040378026664257,-0.138759180903435,-0.145703837275505,-0.075150795280933,0.128838419914246,-0.059494316577911,0.058886896818876));
res += mul(Get(s1,dx,0), float4x4(0.022484570741653,-0.213967174291611,0.145543009042740,0.099487766623497,0.067496284842491,0.296439409255981,0.068191796541214,0.171799272298813,-0.042172323912382,-0.082384318113327,0.066292420029640,0.202520191669464,-0.078937157988548,0.101353868842125,0.031274251639843,0.011394736357033));
res += mul(Get(s1,dx,dy), float4x4(0.286439985036850,-0.220369979739189,-0.012783283367753,0.197729840874672,-0.183586776256561,0.141073167324066,0.059969011694193,-0.173671379685402,0.082981213927269,0.063544116914272,0.140822008252144,0.020170751959085,-0.092267736792564,0.175066098570824,-0.176932230591774,-0.040284391492605));
res += mul(Get(s2,-dx,-dy), float4x4(-0.077697925269604,0.058345314115286,0.004328073002398,-0.118283472955227,-0.044283244758844,-0.031137732788920,-0.174159303307533,0.038394808769226,0.226689860224724,-0.098001763224602,0.125797599554062,-0.056438487023115,-0.070989958941936,-0.263201385736465,0.073369413614273,-0.026102401316166));
res += mul(Get(s2,-dx,0), float4x4(-0.177740216255188,0.120218522846699,0.040021505206823,0.077757813036442,0.106366142630577,-0.007229203358293,-0.080113805830479,-0.105653278529644,0.019773615524173,0.002740500029176,-0.002149594947696,0.091818481683731,-0.146681040525436,-0.028346018865705,-0.193821147084236,0.075729392468929));
res += mul(Get(s2,-dx,dy), float4x4(0.157676532864571,-0.064229883253574,-0.024306731298566,-0.030312374234200,0.020369792357087,-0.010287138633430,-0.031107313930988,-0.087376959621906,0.068645358085632,-0.014771449379623,-0.150152757763863,0.148274689912796,-0.236766979098320,-0.173938900232315,-0.077832862734795,-0.119547583162785));
res += mul(Get(s2,0,-dy), float4x4(0.013819590210915,0.084299519658089,-0.048194963485003,0.113657914102077,0.093542464077473,0.001240549026988,0.145633026957512,-0.132716834545135,0.158518016338348,-0.067999199032784,-0.257001727819443,-0.081624016165733,-0.031244963407516,-0.088264659047127,0.124030567705631,-0.036968979984522));
res += mul(Get(s2,0,0), float4x4(-0.089874453842640,0.039874996989965,-0.003488652175292,0.010801567696035,0.053272102028131,-0.061421319842339,-0.103423103690147,-0.204014524817467,-0.033803474158049,-0.033088769763708,0.060838133096695,-0.060000088065863,-0.120067253708839,0.188022136688232,0.013761154375970,-0.017888838425279));
res += mul(Get(s2,0,dy), float4x4(-0.219903036952019,-0.165650025010109,0.028047783300281,0.091236405074596,0.065633945167065,0.019375303760171,0.076824069023132,0.295778840780258,0.018579367548227,0.181060969829559,-0.107601344585419,0.233068540692329,-0.183035731315613,-0.183825999498367,-0.042426891624928,0.028507083654404));
res += mul(Get(s2,dx,-dy), float4x4(-0.108720429241657,0.029900444671512,-0.093560628592968,-0.112057685852051,0.043095160275698,0.032852966338396,-0.058799091726542,-0.028653156012297,-0.192240044474602,-0.214022889733315,-0.044154580682516,-0.209981918334961,-0.134718582034111,-0.053649011999369,-0.032542988657951,0.187174513936043));
res += mul(Get(s2,dx,0), float4x4(0.004536626860499,0.093406915664673,0.098453432321548,0.028860088437796,0.004610862582922,-0.146292462944984,-0.167511790990829,-0.048873428255320,-0.126483976840973,0.062243636697531,-0.144951790571213,-0.069636695086956,0.046357866376638,-0.082477807998657,-0.050594691187143,-0.018665116280317));
res += mul(Get(s2,dx,dy), float4x4(-0.152653828263283,0.033600516617298,0.083313427865505,-0.180999517440796,-0.002629019087180,0.058921311050653,0.045235637575388,0.035154312849045,-0.144727095961571,0.017681626603007,-0.114533677697182,0.113224603235722,-0.062220368534327,-0.058216750621796,0.000898450030945,0.018406108021736));
res += mul(Get(s3,-dx,-dy), float4x4(0.076523557305336,0.075870305299759,0.022861681878567,-0.091759487986565,-0.062137857079506,0.063998788595200,-0.021911403164268,-0.005090916529298,-0.198332622647285,0.046248625963926,0.056216318160295,-0.112433299422264,-0.088724859058857,-0.224890470504761,-0.119609266519547,-0.111136190593243));
res += mul(Get(s3,-dx,0), float4x4(-0.049473579972982,0.127647846937180,-0.096088938415051,-0.023470943793654,0.183382734656334,0.000890360272024,0.101493224501610,-0.081270441412926,0.071573846042156,-0.052925888448954,0.030217446386814,-0.085553564131260,-0.096459940075874,0.026932585984468,0.022659106180072,-0.122839175164700));
res += mul(Get(s3,-dx,dy), float4x4(-0.017862452194095,0.076654665172100,0.050718024373055,-0.238621339201927,0.054405502974987,0.099708445370197,-0.163172855973244,0.069911226630211,-0.170100748538971,0.034691289067268,-0.005523749627173,-0.097938142716885,0.183557137846947,-0.001742893131450,0.001326109748334,-0.119165353477001));
res += mul(Get(s3,0,-dy), float4x4(0.044110033661127,-0.165633514523506,0.023612711578608,0.048308741301298,0.128091946244240,-0.135501176118851,-0.136674836277962,-0.055734522640705,0.135917186737061,-0.028584968298674,-0.030025746673346,0.126738592982292,0.082366980612278,0.118634849786758,-0.003698892891407,0.034221071749926));
res += mul(Get(s3,0,0), float4x4(0.094414062798023,0.042574301362038,-0.300426661968231,-0.032982446253300,-0.120320118963718,0.091269947588444,0.105218917131424,-0.038379807025194,-0.160846859216690,-0.008114842697978,-0.030399059876800,0.027785329148173,0.002636366290972,0.122211344540119,0.041185647249222,0.028905283659697));
res += mul(Get(s3,0,dy), float4x4(-0.126811251044273,-0.032080490142107,-0.073646634817123,-0.188151389360428,0.055116169154644,-0.020073285326362,-0.066536270081997,0.002239870605990,-0.051470972597599,-0.106872648000717,-0.200522556900978,-0.027582593262196,0.046938966959715,-0.000053726533224,0.085282064974308,0.013106226921082));
res += mul(Get(s3,dx,-dy), float4x4(-0.201021283864975,0.014555860310793,-0.077948331832886,-0.073804140090942,0.056077156215906,0.044713217765093,-0.053325124084949,0.115434207022190,-0.011622288264334,-0.069470152258873,0.228337943553925,-0.061258446425200,-0.059490222483873,0.092165298759937,0.022482518106699,-0.028888719156384));
res += mul(Get(s3,dx,0), float4x4(-0.018691247329116,0.279169082641602,0.058634508401155,-0.155104309320450,0.094061896204948,0.033400617539883,-0.017282159999013,0.068554155528545,0.117460966110229,-0.133886024355888,-0.019513968378305,0.045806806534529,-0.025334509089589,-0.018927602097392,-0.032042663544416,0.182855397462845));
res += mul(Get(s3,dx,dy), float4x4(-0.020925657823682,-0.022481866180897,0.060132101178169,-0.303476363420486,-0.074919790029526,-0.039599880576134,-0.089536935091019,-0.029525220394135,0.018736734986305,-0.050874035805464,0.050884652882814,0.151196390390396,0.029598571360111,-0.091206200420856,0.016836788505316,0.140357464551926));
return max(float4(0,0,0,0), res);
}