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
res += dot(float4(-0.428268820047379,0.110109895467758,-0.004414341412485,-0.558538675308228), Get(s1,-dx,-dy));
res += dot(float4(-0.198979154229164,-0.054230239242315,0.388037294149399,0.035712223500013), Get(s2,-dx,-dy));
res += dot(float4(0.090328909456730,-0.372660160064697,-0.063839063048363,-0.153148561716080), Get(s3,-dx,-dy));
res += dot(float4(0.649421691894531,0.173435360193253,0.073094531893730,-0.216154575347900), Get(s4,-dx,-dy));
res += dot(float4(-0.641518354415894,-0.205308482050896,-0.072764903306961,0.023994276300073), Get(s1,-dx,0));
res += dot(float4(0.119446404278278,0.000659005367197,0.541909158229828,0.190804868936539), Get(s2,-dx,0));
res += dot(float4(0.003291632747278,0.054101157933474,-0.154814615845680,0.050850797444582), Get(s3,-dx,0));
res += dot(float4(0.363303273916245,0.390479952096939,0.016154840588570,-0.226072087883949), Get(s4,-dx,0));
res += dot(float4(0.297334223985672,0.821142792701721,-0.004331595730036,-0.440266102552414), Get(s1,-dx,dy));
res += dot(float4(0.015232740901411,0.007234071381390,0.388162225484848,-0.201858550310135), Get(s2,-dx,dy));
res += dot(float4(0.002076617209241,0.464809507131577,0.046486578881741,-0.086904302239418), Get(s3,-dx,dy));
res += dot(float4(0.220852077007294,0.045729398727417,-0.060778524726629,0.515303075313568), Get(s4,-dx,dy));
res += dot(float4(-0.304222702980042,-0.232675030827522,0.016409546136856,0.208665385842323), Get(s1,0,-dy));
res += dot(float4(0.346367597579956,0.122303619980812,0.195504099130630,0.138165071606636), Get(s2,0,-dy));
res += dot(float4(0.062119476497173,-0.322346627712250,0.199463203549385,-0.130918830633163), Get(s3,0,-dy));
res += dot(float4(0.425502628087997,-0.096090123057365,0.023318016901612,-0.260844796895981), Get(s4,0,-dy));
res += dot(float4(-0.749747216701508,-1.518939733505249,-0.014574725180864,2.088714122772217), Get(s1,0,0));
res += dot(float4(0.088079452514648,0.145438119769096,-0.877738654613495,-0.228618711233139), Get(s2,0,0));
res += dot(float4(-0.118466176092625,-0.027379577979445,0.265691220760345,0.461523920297623), Get(s3,0,0));
res += dot(float4(-1.179763317108154,0.020101366564631,0.017326207831502,-0.190624505281448), Get(s4,0,0));
res += dot(float4(0.336753726005554,0.386537462472916,-0.025132194161415,-0.133217558264732), Get(s1,0,dy));
res += dot(float4(-0.131526440382004,-0.027494553476572,-0.591582894325256,0.007046220824122), Get(s2,0,dy));
res += dot(float4(-0.437301903963089,0.561226844787598,0.040722839534283,-0.002406357554719), Get(s3,0,dy));
res += dot(float4(-0.767647445201874,-0.100523389875889,0.021634247153997,0.470227599143982), Get(s4,0,dy));
res += dot(float4(0.325360029935837,0.506704211235046,-0.045706178992987,-0.687567591667175), Get(s1,dx,-dy));
res += dot(float4(0.007683893200010,0.012143815867603,0.457240641117096,-0.089312322437763), Get(s2,dx,-dy));
res += dot(float4(0.133890464901924,0.152870386838913,-0.079820014536381,-0.009191229008138), Get(s3,dx,-dy));
res += dot(float4(0.544376909732819,0.092619180679321,-0.001752285985276,0.180919811129570), Get(s4,dx,-dy));
res += dot(float4(0.447240918874741,0.142203107476234,-0.045943137258291,-0.106598608195782), Get(s1,dx,0));
res += dot(float4(-0.241251602768898,0.182147011160851,-0.090046048164368,-0.125293523073196), Get(s2,dx,0));
res += dot(float4(0.016004044562578,-0.147985413670540,0.031350463628769,-0.041582308709621), Get(s3,dx,0));
res += dot(float4(-0.104085281491280,-0.147242933511734,0.027508880943060,0.179429978132248), Get(s4,dx,0));
res += dot(float4(0.421356320381165,0.455306500196457,-0.039321754127741,-0.730114281177521), Get(s1,dx,dy));
res += dot(float4(0.139485746622086,0.079531565308571,-0.293357551097870,0.339453697204590), Get(s2,dx,dy));
res += dot(float4(-0.125584900379181,-0.070675589144230,-0.062290582805872,-0.033851243555546), Get(s3,dx,dy));
res += dot(float4(-0.116911262273788,0.052408896386623,-0.000495792017318,-0.184035658836365), Get(s4,dx,dy));
return float4(tex2D(s0, tex)[0] + res, 0, 0, 1);
}