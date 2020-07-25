sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(s, x, y)   tex2D(s, tex + float2(x, y))

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float res = 0;
res += dot(float4(0.174451306462288,-0.065725132822990,0.048739954829216,-0.022093515843153), Get(s1,-dx,-dy));
res += dot(float4(0.073790661990643,0.019804835319519,-0.133518874645233,-0.183471798896790), Get(s2,-dx,-dy));
res += dot(float4(0.051657605916262,-0.031896166503429,0.000458638300188,0.072210080921650), Get(s3,-dx,-dy));
res += dot(float4(-0.026003666222095,-0.077385529875755,0.045061673969030,0.215796291828156), Get(s4,-dx,-dy));
res += dot(float4(0.112419255077839,-0.038716416805983,0.250747829675674,0.163224667310715), Get(s1,-dx,0));
res += dot(float4(0.078727722167969,-0.140310481190681,-0.171823322772980,-0.105959378182888), Get(s2,-dx,0));
res += dot(float4(0.018033983185887,0.004652721807361,0.222952857613564,-0.162396267056465), Get(s3,-dx,0));
res += dot(float4(0.080136679112911,-0.221224159002304,-0.196042105555534,0.038473822176456), Get(s4,-dx,0));
res += dot(float4(0.180481836199760,-0.191383734345436,-0.027878237888217,0.171380370855331), Get(s1,-dx,dy));
res += dot(float4(-0.011682001873851,-0.144631028175354,-0.134306699037552,0.023850021883845), Get(s2,-dx,dy));
res += dot(float4(-0.020452000200748,0.032078068703413,0.023360431194305,-0.137076467275620), Get(s3,-dx,dy));
res += dot(float4(0.120921321213245,0.138175070285797,0.054903116077185,0.042470030486584), Get(s4,-dx,dy));
res += dot(float4(-0.043048132210970,0.034119535237551,0.056140445172787,-0.090367168188095), Get(s1,0,-dy));
res += dot(float4(0.195255145430565,0.122562341392040,0.009725019335747,-0.326121509075165), Get(s2,0,-dy));
res += dot(float4(0.455031633377075,-0.024250028654933,-0.027453424409032,0.121670231223106), Get(s3,0,-dy));
res += dot(float4(0.161185398697853,0.035895992070436,-0.158834204077721,0.090161181986332), Get(s4,0,-dy));
res += dot(float4(-0.382847517728806,0.138425275683403,0.208196699619293,-0.045418098568916), Get(s1,0,0));
res += dot(float4(0.038779456168413,-0.041364599019289,0.010289164260030,0.002324854722247), Get(s2,0,0));
res += dot(float4(0.054304182529449,0.138024672865868,0.207593798637390,0.011527774855494), Get(s3,0,0));
res += dot(float4(-0.027419582009315,-0.259809255599976,-0.259682387113571,0.103341057896614), Get(s4,0,0));
res += dot(float4(0.107725724577904,0.064509354531765,-0.074943467974663,0.124523058533669), Get(s1,0,dy));
res += dot(float4(-0.318534106016159,-0.079960934817791,-0.064932279288769,0.078937053680420), Get(s2,0,dy));
res += dot(float4(-0.096942305564880,0.045632652938366,0.009598603472114,-0.065427303314209), Get(s3,0,dy));
res += dot(float4(-0.176199823617935,-0.080340057611465,0.072620116174221,0.174565553665161), Get(s4,0,dy));
res += dot(float4(0.050381768494844,-0.049826100468636,-0.073458530008793,-0.089215345680714), Get(s1,dx,-dy));
res += dot(float4(0.021348513662815,0.117062151432037,0.007233527954668,0.087292365729809), Get(s2,dx,-dy));
res += dot(float4(0.090302854776382,-0.047003962099552,-0.100088566541672,-0.058779302984476), Get(s3,dx,-dy));
res += dot(float4(0.120156809687614,0.143334850668907,0.033154364675283,-0.035438094288111), Get(s4,dx,-dy));
res += dot(float4(-0.031921852380037,0.060053091496229,-0.208875283598900,-0.131669417023659), Get(s1,dx,0));
res += dot(float4(-0.136563479900360,0.066131465137005,-0.095788560807705,0.169865101575851), Get(s2,dx,0));
res += dot(float4(-0.033487826585770,0.184110358357430,-0.229430824518204,0.066175870597363), Get(s3,dx,0));
res += dot(float4(-0.038160126656294,0.153801172971725,0.271274000406265,-0.124600261449814), Get(s4,dx,0));
res += dot(float4(0.112531796097755,0.127369120717049,-0.167312383651733,0.077424161136150), Get(s1,dx,dy));
res += dot(float4(-0.135557442903519,0.095667488873005,-0.072813339531422,-0.004491989500821), Get(s2,dx,dy));
res += dot(float4(-0.100204162299633,0.047167070209980,-0.190132603049278,0.048051591962576), Get(s3,dx,dy));
res += dot(float4(-0.179036796092987,-0.015610196627676,0.123415380716324,0.088334158062935), Get(s4,dx,dy));
return float4(tex2D(s0, tex)[0] + res, 0, 0, 1);
}