sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(0.050866540521383,-0.075458846986294,-0.041240524500608,-0.023199107497931) * Get(-dx,-dy);
res += float4(-0.086792320013046,0.019857628270984,0.021899541839957,-0.103119440376759) * Get(-dx,0);
res += float4(-0.205754280090332,-0.117821887135506,0.348420917987823,-0.142760887742043) * Get(-dx,dy);
res += float4(-0.011468441225588,-0.100119806826115,-0.108559265732765,0.196837544441223) * Get(0,-dy);
res += float4(-0.055458277463913,-0.031955305486917,0.018888786435127,0.243326857686043) * Get(0,0);
res += float4(0.484125554561615,-0.164638042449951,0.042079888284206,0.365734606981277) * Get(0,dy);
res += float4(-0.116725429892540,0.017777135595679,0.026529725641012,-0.164704859256744) * Get(dx,-dy);
res += float4(-0.130805969238281,0.317145645618439,0.000028182281312,-0.160544827580452) * Get(dx,0);
res += float4(0.158505097031593,0.204273223876953,-0.140532940626144,-0.041727401316166) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}