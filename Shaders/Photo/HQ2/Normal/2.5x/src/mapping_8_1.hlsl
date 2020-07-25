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
res += mul(Get(s0,-dx,-dy), float4x4(0.137335479259491,-0.000369605259039,-0.030764611437917,0.014916313812137,0.027644142508507,-0.000027817253795,0.019024895504117,0.007357761729509,0.031628683209419,-0.000046853048843,0.001653589657508,-0.001423079054803,0.048247292637825,-0.000137671202538,-0.006064772140235,0.000855485966895));
res += mul(Get(s0,-dx,0), float4x4(0.091297730803490,-0.000079243320215,0.011161982081831,0.014587093144655,0.033706583082676,-0.000363574188668,0.005250235088170,0.004016207531095,0.006235467735678,-0.000085055784439,0.007349464576691,-0.001536843250506,0.036804221570492,-0.000489934638608,0.006448430940509,0.007069273851812));
res += mul(Get(s0,-dx,dy), float4x4(0.044023670256138,-0.000300861138385,0.007459811400622,0.011360079050064,-0.004490790888667,0.000121075689094,0.008825357072055,0.007581664714962,-0.019551821053028,-0.000338948972058,-0.003299955511466,0.010288772173226,0.030016230419278,0.000186352117453,0.002730691106990,-0.001787511981092));
res += mul(Get(s0,0,-dy), float4x4(0.022152254357934,0.001427792711183,-0.042446177452803,-0.004009709693491,-0.014471176080406,-0.000530907127541,0.026011141017079,0.015526574105024,0.022277483716607,-0.000104445789475,-0.001361355301924,0.004220100119710,-0.010128466412425,-0.000273304613074,-0.002361483406276,0.006558041088283));
res += mul(Get(s0,0,0), float4x4(-0.017848948016763,0.001168381073512,0.015307401306927,-0.014392284676433,0.059536609798670,0.002407744061202,-0.021773107349873,-0.019061636179686,-0.012062205933034,-0.000236766340095,0.003791671711951,0.004899004939944,-0.035537596791983,0.000602012209129,0.000979226781055,-0.007181324064732));
res += mul(Get(s0,0,dy), float4x4(-0.010686532594264,-0.000917034223676,0.014162745326757,0.024281527847052,-0.022233216091990,-0.000189749189303,0.020966453477740,0.003354645334184,-0.032749060541391,0.000152315100422,-0.007912412285805,0.006309531629086,-0.048841498792171,-0.000317756144796,0.027365209534764,-0.000348393950844));
res += mul(Get(s0,dx,-dy), float4x4(0.008704528212547,0.000529276090674,-0.012812662869692,0.004041806329042,-0.066159375011921,-0.000264406611677,0.027815807610750,0.010138249956071,-0.048046145588160,-0.000048602913012,-0.003016076283529,-0.000186965931789,-0.003161177039146,0.000354044372216,-0.005896516144276,-0.001809848472476));
res += mul(Get(s0,dx,0), float4x4(0.088607892394066,0.000860241241753,0.002220620168373,0.001328988466412,-0.002818557899445,-0.000578031816985,0.018459890037775,0.015063361264765,-0.033653169870377,0.000657406460959,-0.004484360106289,-0.004070594441146,0.057205110788345,0.000744871620554,-0.013277390040457,-0.006123871076852));
res += mul(Get(s0,dx,dy), float4x4(0.032431703060865,-0.000069998510298,-0.014399606734514,0.016105586662889,-0.024041272699833,-0.000181497744052,0.013032616116107,0.011241666041315,0.014343068003654,0.000658066419419,-0.014317399822176,-0.003891981206834,0.012796002440155,-0.000078168450273,0.002832797355950,-0.002506210468709));
res += mul(Get(s1,-dx,-dy), float4x4(-0.010770888999104,-0.000043195057515,0.003924515098333,-0.000086737061793,0.034303255379200,-0.000017327176465,0.008033600635827,0.003798400051892,-0.009290318936110,-0.000260250817519,0.007576760835946,0.001480105333030,-0.006043960340321,0.000310351548251,0.016145227476954,0.002992634894326));
res += mul(Get(s1,-dx,0), float4x4(-0.011843519285321,-0.000000326285544,0.003187438705936,0.000392118468881,0.014583940617740,-0.000308297632728,0.001550334272906,0.000482948031276,-0.113945126533508,-0.000362070219126,0.016047524288297,-0.001677948981524,0.081933371722698,-0.000166522702784,-0.011045140214264,0.010568793863058));
res += mul(Get(s1,-dx,dy), float4x4(-0.012524855323136,-0.000034999240597,0.000317762780469,0.001305491896346,-0.024311382323503,-0.000033911994251,0.008746807463467,0.000536130450200,-0.065682269632816,0.000569970754441,-0.000052381357818,-0.001787550398149,0.065084971487522,0.000371041882318,0.000195481043193,-0.004214768763632));
res += mul(Get(s1,0,-dy), float4x4(-0.005718983709812,0.000003976581866,0.001056901644915,0.000424318510341,-0.031354781240225,-0.000341518432833,0.017497992143035,0.010618036612868,0.045324444770813,-0.000228486416745,-0.010896245948970,0.016588509082794,-0.047359697520733,-0.000510190671775,0.044754832983017,0.006040432490408));
res += mul(Get(s1,0,0), float4x4(-0.022694587707520,-0.000187077341252,0.004895276390016,0.002134074922651,0.042819838970900,0.001233312650584,-0.022749459370971,-0.009929221123457,0.085789181292057,0.003025763900951,-0.025702331215143,-0.023949068039656,-0.015560291707516,0.000036315090256,-0.004883700050414,0.009969131089747));
res += mul(Get(s1,0,dy), float4x4(-0.023046303540468,-0.000075680836744,0.003559777978808,0.002474470296875,-0.006500893272460,0.000127536273794,0.010132310912013,-0.003364158095792,0.008241718634963,0.000099485696410,0.025974098592997,-0.000738064467441,0.008181312121451,0.000573180732317,0.004828820936382,-0.011435463093221));
res += mul(Get(s1,dx,-dy), float4x4(0.012959021143615,0.000254128070083,-0.005390536040068,-0.000963269791100,-0.067318111658096,-0.000487466284540,0.022589221596718,0.003782638115808,-0.024920504540205,0.000246238167165,-0.004059550818056,0.004517820198089,0.018768377602100,0.000476788613014,0.019164184108377,-0.002981757279485));
res += mul(Get(s1,dx,0), float4x4(0.010043030604720,0.000293537741527,-0.006929587107152,-0.003255843184888,0.009137016721070,0.000087802640337,0.002215872053057,0.004341627936810,0.038507975637913,-0.000681793491822,0.017311837524176,0.014452571049333,0.051410265266895,0.000406842853408,-0.011114008724689,0.001432746998034));
res += mul(Get(s1,dx,dy), float4x4(-0.006885655689985,0.000057134693634,-0.001240839133970,-0.000866380345542,0.018314857035875,0.000239896384301,0.006972718518227,-0.001237932825461,-0.008327392861247,-0.000064799634856,0.022815542295575,0.001438311184756,0.046356197446585,0.000032797561289,-0.005054074339569,0.000387022562791));
res += mul(Get(s2,-dx,-dy), float4x4(0.000177150068339,0.000195356042241,-0.005144919734448,-0.000596297613811,0.066360607743263,0.000108197054942,0.012091242708266,0.003904854413122,-0.007333566434681,-0.000018947002900,-0.004233580548316,0.001727258670144,-0.018896924331784,-0.000214583240449,0.007370779290795,-0.001155981561169));
res += mul(Get(s2,-dx,0), float4x4(0.011587952263653,0.000541286251973,-0.008184719830751,-0.002144816797227,0.110078401863575,-0.000909340567887,0.010763617232442,0.013368322513998,-0.007030961569399,-0.000120136573969,-0.003003708552569,0.006981642916799,-0.001214660238475,-0.000504331022967,0.008394997566938,0.007286749314517));
res += mul(Get(s2,-dx,dy), float4x4(0.009996667504311,0.000257213716395,-0.008568859659135,-0.000247530435445,0.052449710667133,-0.000212144484976,0.004902208689600,0.006902702152729,0.015574593096972,0.000395706709241,-0.010799258016050,-0.005411521065980,0.058808580040932,-0.000069842142693,-0.012300904840231,0.011210453696549));
res += mul(Get(s2,0,-dy), float4x4(0.000332356314175,0.000260894972598,0.002173929242417,-0.001617851434276,-0.020727040246129,-0.000662382866722,0.023275930434465,0.003516319906339,-0.020921200513840,-0.000212563245441,0.002296671038494,0.006346681620926,-0.018032981082797,-0.000041196908569,-0.000072564682341,-0.002123822225258));
res += mul(Get(s2,0,0), float4x4(0.024937901645899,-0.000277794926660,0.007082640193403,0.008923126384616,-0.048285033553839,0.000403028068831,-0.000054434654885,-0.008069046773016,-0.033244289457798,-0.000290386466077,-0.005267042666674,0.010672229342163,-0.057907059788704,0.000494767678902,0.007312379311770,-0.012197720818222));
res += mul(Get(s2,0,dy), float4x4(0.044870045036077,-0.000329084636178,-0.007409825921059,0.009274572134018,-0.047679707407951,-0.000114918104373,0.007214051671326,-0.000432805827586,-0.014889561571181,0.000889139133506,-0.004021191503853,-0.011308839544654,-0.059705927968025,-0.000142223318107,0.010473770089447,0.003562131430954));
res += mul(Get(s2,dx,-dy), float4x4(-0.014571299776435,0.000105694169179,0.007011346518993,-0.003721597837284,0.006382874213159,-0.000178380490979,0.002421064069495,0.004191295709461,-0.004860499408096,0.000553975580260,-0.006955355871469,-0.002142458921298,0.023436829447746,0.000056429678807,-0.006494349800050,0.000346555985743));
res += mul(Get(s2,dx,0), float4x4(-0.045499730855227,-0.000302830303553,0.013646563515067,0.005365959368646,0.015039702877402,0.000056878940086,-0.005765526555479,-0.000823314127047,0.021581415086985,0.001135481637903,-0.020647276192904,-0.006519069895148,0.024803070351481,0.000226460106205,-0.005138215143234,-0.004987571854144));
res += mul(Get(s2,dx,dy), float4x4(-0.013875963166356,0.000101550103864,-0.008386622183025,0.004943665117025,-0.012210435234010,-0.000066558895924,0.006217071320862,0.001589965773746,0.038832016289234,0.000170072657056,-0.004897189792246,-0.008011311292648,0.002018034225330,0.000063598206907,0.006082143634558,-0.001907796133310));
res += mul(Get(s3,-dx,-dy), float4x4(-0.051350869238377,0.000066164349846,0.018955275416374,-0.000075509749877,-0.038677290081978,0.000637258985080,-0.013655168004334,-0.006439281627536,-0.064696207642555,-0.000008669843737,0.042617555707693,0.001909226644784,0.014721186831594,-0.000191771818209,-0.003394179511815,0.000001346602403));
res += mul(Get(s3,-dx,0), float4x4(-0.095466479659081,-0.000382310972782,0.017012385651469,0.000250279234024,0.008765745908022,0.000997741124593,-0.002874961122870,-0.005647826474160,-0.005774362012744,-0.000022915048248,-0.006240674760193,0.002266510389745,0.009062372148037,0.000395245035179,0.000443152908701,-0.003336921334267));
res += mul(Get(s3,-dx,dy), float4x4(-0.057850446552038,0.000109250780952,0.005264900159091,0.000746119592804,0.019572000950575,-0.000380465266062,-0.000256119557889,0.006415381561965,-0.014199088327587,0.000189539132407,-0.001447665388696,-0.001495561562479,0.018270390108228,0.000044136009819,-0.005440991837531,0.004401414655149));
res += mul(Get(s3,0,-dy), float4x4(0.009926559403539,-0.000186690318515,0.013140258379281,0.010422677733004,0.034157026559114,0.000998669303954,0.001815994619392,-0.006540572736412,-0.037068486213684,-0.000630609109066,0.049122639000416,0.005748096387833,0.033629942685366,0.000332808966050,-0.011894130147994,-0.002325524808839));
res += mul(Get(s3,0,0), float4x4(0.049233175814152,0.002060216385871,-0.015405042096972,-0.015121050179005,0.006502722389996,-0.001809266861528,0.029247568920255,0.024713311344385,0.021774146705866,0.000641223159619,-0.015236068516970,0.001238937838934,0.012906685471535,-0.000109495544166,0.014451900497079,0.000203030635021));
res += mul(Get(s3,0,dy), float4x4(0.001017613220029,-0.000039830458263,0.010978669859469,0.000805420975666,-0.005401117727160,0.000824338407256,-0.011209726333618,-0.000645617139526,0.026537217199802,0.000637344724964,-0.004858940374106,-0.007396739441901,0.010311986319721,-0.000393292284571,0.004410036839545,0.012086022645235));
res += mul(Get(s3,dx,-dy), float4x4(0.018208350986242,0.000642712519038,0.006921057123691,-0.000551547564100,-0.003309280844405,-0.000555846549105,0.011371599510312,0.007350219879299,0.020997770130634,-0.000369870278519,0.023212999105453,0.002351526869461,-0.018449703231454,-0.000299180595903,-0.007370001170784,0.001650161808357));
res += mul(Get(s3,dx,0), float4x4(0.087962903082371,-0.000200462236535,0.003464732319117,0.009479716420174,-0.039518330246210,0.000665524858050,-0.008765228092670,-0.001919444650412,0.007160316687077,-0.000377967808163,0.003072563558817,0.005633831489831,-0.044456463307142,-0.000281467247987,0.012649768032134,0.001557146199048));
res += mul(Get(s3,dx,dy), float4x4(0.043219406157732,-0.000191745231859,-0.003488485002890,0.006184205412865,0.002263330155984,0.000919368409086,-0.000730552594177,-0.010276949964464,0.019522126764059,0.000033086635085,0.009322035126388,0.002565657487139,-0.047479722648859,-0.000195095562958,0.008308781310916,0.003584021469578));
return max(float4(0,0,0,0), res);
}