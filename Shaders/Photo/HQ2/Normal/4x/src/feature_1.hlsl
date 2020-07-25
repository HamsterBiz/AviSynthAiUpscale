sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(-0.167633399367332,0.033397477120161,0.107044197618961,-0.103866495192051) * Get(-dx,-dy);
res += float4(0.033452134579420,-0.293549507856369,0.014225772581995,-0.043802354484797) * Get(-dx,0);
res += float4(-0.033627934753895,0.028297571465373,-0.027640642598271,-0.041998848319054) * Get(-dx,dy);
res += float4(-0.177719488739967,0.391849637031555,-0.151920303702354,-0.076942265033722) * Get(0,-dy);
res += float4(1.397964239120483,-0.209489524364471,-0.520003616809845,-0.092475965619087) * Get(0,0);
res += float4(-0.113173849880695,0.095612972974777,0.351607859134674,-0.134601354598999) * Get(0,dy);
res += float4(0.096643581986427,0.300997942686081,0.170746386051178,0.104329228401184) * Get(dx,-dy);
res += float4(-0.438971847295761,-0.052863076329231,0.028947614133358,0.143844053149223) * Get(dx,0);
res += float4(-0.061622735112906,-0.009209446609020,0.312532186508179,0.009884902276099) * Get(dx,dy);
res = max(float4(0,0,0,0), res);
return res;
}