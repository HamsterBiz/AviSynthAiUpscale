sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);

#define Get(s)   tex2D(s, tex)

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.1292417496442795,-0.0586551241576672,-0.0544874630868435,0.0257972721010447);
res += mul(Get(s0), float4x4(0.3076466619968414,0.4016776680946350,-0.1198760792613029,-0.1747958958148956,-0.2166879773139954,0.4447996616363525,0.5888984799385071,0.2551623582839966,-0.0231041051447392,0.4014312028884888,0.5073022246360779,0.1049164682626724,-0.0413290932774544,-0.4083781540393829,-0.5135418176651001,0.1098513528704643));
res += mul(Get(s1), float4x4(-0.2737123668193817,0.5598254799842834,-0.2111054807901382,0.0713212639093399,-0.0079713845625520,-0.3198900222778320,-0.3855170011520386,-0.1312726736068726,-0.1972996741533279,0.7565959095954895,0.2306312620639801,0.1362128704786301,0.0843656584620476,-0.0794539004564285,-0.6203055381774902,0.0148940626531839));
res += mul(Get(s2), float4x4(-0.0048199263401330,-0.1781041771173477,-0.9909001588821411,0.0280479323118925,0.2635142207145691,0.2500170469284058,0.3367792367935181,-0.5014277100563049,0.1723911613225937,-0.1806103438138962,0.6606557965278625,0.3739828467369080,-0.0571628808975220,0.8772159814834595,-1.1238677501678467,0.1646365225315094));
res += Get(s3);
res = max(float4(0, 0, 0, 0), res) + float4(1.0032242536544800,0.0840198770165443,0.1247207820415497,0.8609580397605896) * min(float4(0, 0, 0, 0), res);
return res;
}