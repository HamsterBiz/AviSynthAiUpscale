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
res += dot(float4(0.078514359891415,-0.123635306954384,-0.165326386690140,-0.117229394614697), Get(s1,-dx,-dy));
res += dot(float4(0.087814040482044,0.077227681875229,0.132236421108246,-0.182224422693253), Get(s2,-dx,-dy));
res += dot(float4(-0.260963976383209,-0.137699738144875,0.046923547983170,0.116620950400829), Get(s3,-dx,-dy));
res += dot(float4(0.026242131367326,0.091687418520451,-0.104815781116486,0.097650513052940), Get(s4,-dx,-dy));
res += dot(float4(0.141552001237869,0.042397357523441,-0.366510748863220,0.008048880845308), Get(s1,-dx,0));
res += dot(float4(-0.077375538647175,0.032086029648781,-0.011612618342042,0.054001979529858), Get(s2,-dx,0));
res += dot(float4(0.066458448767662,-0.282417029142380,0.209852471947670,0.318062484264374), Get(s3,-dx,0));
res += dot(float4(0.120386816561222,0.017930481582880,-0.036067284643650,0.053365085273981), Get(s4,-dx,0));
res += dot(float4(0.056599821895361,0.250392407178879,-0.008661525323987,-0.139823243021965), Get(s1,-dx,dy));
res += dot(float4(-0.056495085358620,-0.198855012655258,0.000154609631863,-0.138377100229263), Get(s2,-dx,dy));
res += dot(float4(0.157337516546249,-0.159350246191025,0.004286304116249,0.094315439462662), Get(s3,-dx,dy));
res += dot(float4(0.286284297704697,-0.026213327422738,-0.091116018593311,0.059522014111280), Get(s4,-dx,dy));
res += dot(float4(0.146284684538841,-0.321543335914612,-0.144806981086731,-0.088007695972919), Get(s1,0,-dy));
res += dot(float4(0.017888527363539,0.181349381804466,-0.052614532411098,-0.193716451525688), Get(s2,0,-dy));
res += dot(float4(-0.064190961420536,0.251081883907318,0.070289023220539,-0.090255141258240), Get(s3,0,-dy));
res += dot(float4(-0.054330024868250,0.309026241302490,0.045416630804539,0.144666373729706), Get(s4,0,-dy));
res += dot(float4(-0.025549819692969,-0.362165510654449,-0.301080882549286,0.126948937773705), Get(s1,0,0));
res += dot(float4(0.009197586216033,0.226740032434464,0.019642671570182,-0.055428653955460), Get(s2,0,0));
res += dot(float4(0.236358210444450,0.146976560354233,0.010841819457710,0.056670259684324), Get(s3,0,0));
res += dot(float4(-0.045607257634401,0.140809521079063,-0.233865112066269,0.271849632263184), Get(s4,0,0));
res += dot(float4(-0.147920802235603,0.113914847373962,0.159499078989029,0.114883251488209), Get(s1,0,dy));
res += dot(float4(0.163777723908424,-0.014258284121752,0.097537651658058,-0.165397420525551), Get(s2,0,dy));
res += dot(float4(0.267614156007767,0.157236650586128,0.006904656998813,-0.069832824170589), Get(s3,0,dy));
res += dot(float4(0.202710002660751,0.076724536716938,-0.304020464420319,-0.123429879546165), Get(s4,0,dy));
res += dot(float4(0.293138027191162,-0.002579731633887,0.110088512301445,0.101987116038799), Get(s1,dx,-dy));
res += dot(float4(0.111544407904148,0.016118869185448,-0.093578673899174,0.041385386139154), Get(s2,dx,-dy));
res += dot(float4(-0.040701251477003,0.147599786520004,0.017030168324709,-0.168520390987396), Get(s3,dx,-dy));
res += dot(float4(0.112071841955185,0.268685460090637,-0.015712423250079,0.055471193045378), Get(s4,dx,-dy));
res += dot(float4(0.061871163547039,0.010599421337247,0.008246816694736,0.300978213548660), Get(s1,dx,0));
res += dot(float4(0.256652593612671,0.014140025712550,-0.067475646734238,-0.017142571508884), Get(s2,dx,0));
res += dot(float4(0.191339641809464,0.064199902117252,0.053974941372871,-0.152644485235214), Get(s3,dx,0));
res += dot(float4(0.030200576409698,-0.036379557102919,-0.172990098595619,0.194440722465515), Get(s4,dx,0));
res += dot(float4(-0.243229761719704,-0.001473425421864,0.091774500906467,0.290643364191055), Get(s1,dx,dy));
res += dot(float4(0.299323588609695,-0.010378684848547,-0.132161542773247,-0.078047707676888), Get(s2,dx,dy));
res += dot(float4(0.132940277457237,0.029288969933987,0.117839179933071,-0.070853292942047), Get(s3,dx,dy));
res += dot(float4(-0.003463830100372,-0.027536137029529,-0.187154918909073,0.085346691310406), Get(s4,dx,dy));
return float4(tex2D(s0, tex)[0] + res, 0, 0, 1);
}