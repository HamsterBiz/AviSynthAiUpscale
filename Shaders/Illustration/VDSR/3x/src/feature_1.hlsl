sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(0.236664414405823,-0.222840860486031,0.116333864629269,-0.017659770324826) * Get(-dx,-dy);
res += float4(-0.059714775532484,-0.008126131258905,-0.051029689610004,-0.153629124164581) * Get(-dx,0);
res += float4(-0.249436423182487,-0.141184747219086,0.055962663143873,0.124788880348206) * Get(-dx,dy);
res += float4(-0.011402379721403,0.294634133577347,-0.235693469643593,0.027931615710258) * Get(0,-dy);
res += float4(0.125434026122093,0.092574268579483,-0.045898601412773,-0.014079200103879) * Get(0,0);
res += float4(-0.165973082184792,0.147896394133568,-0.109418064355850,0.023930881172419) * Get(0,dy);
res += float4(0.115495249629021,-0.203823715448380,-0.182855129241943,-0.036736525595188) * Get(dx,-dy);
res += float4(-0.044894788414240,-0.116131469607353,0.048301905393600,-0.202731415629387) * Get(dx,0);
res += float4(0.104614436626434,-0.092578336596489,0.014028591103852,-0.045067060738802) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}