sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(-0.045529812574387,-0.148313090205193,-0.365911096334457,0.025405090302229) * Get(-dx,-dy);
res += float4(0.046178802847862,0.183703318238258,-0.044058330357075,-0.053786352276802) * Get(-dx,0);
res += float4(-0.034085642546415,-0.112787730991840,-0.155164301395416,-0.093069218099117) * Get(-dx,dy);
res += float4(0.044256363064051,-0.136997655034065,0.043356642127037,0.043572705239058) * Get(0,-dy);
res += float4(0.032068740576506,0.174998596310616,-0.004203732591122,-0.099367067217827) * Get(0,0);
res += float4(0.014948618598282,-0.009638899937272,0.130662277340889,-0.070761695504189) * Get(0,dy);
res += float4(-0.051551885902882,-0.036399696022272,-0.029181199148297,0.175306543707848) * Get(dx,-dy);
res += float4(-0.024676317349076,0.103373065590858,0.142199486494064,0.010397662408650) * Get(dx,0);
res += float4(-0.036703441292048,-0.112425610423088,0.327939718961716,-0.029779478907585) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}