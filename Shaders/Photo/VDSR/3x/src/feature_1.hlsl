sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0,0,0,0);
res += float4(0.037523116916418,0.023602211847901,0.014860891737044,0.001312633394264) * Get(-dx,-dy);
res += float4(-0.402053624391556,-0.287734359502792,0.201473772525787,-0.122552514076233) * Get(-dx,0);
res += float4(-0.129903063178062,0.075366280972958,-0.049484979361296,0.048814080655575) * Get(-dx,dy);
res += float4(0.028950178995728,-0.002920631784946,-0.204013675451279,-0.053422287106514) * Get(0,-dy);
res += float4(-0.092097133398056,-0.237209916114807,0.256657749414444,0.048411324620247) * Get(0,0);
res += float4(-0.046801280230284,-0.107590727508068,-0.281228482723236,-0.223664522171021) * Get(0,dy);
res += float4(0.056366574019194,-0.103252403438091,-0.089986518025398,0.027340319007635) * Get(dx,-dy);
res += float4(0.031901776790619,0.070254743099213,0.080443814396858,0.632753670215607) * Get(dx,0);
res += float4(0.039273615926504,0.128835871815681,-0.113049685955048,-0.076222352683544) * Get(dx,dy);
return max(float4(0,0,0,0), res);
}