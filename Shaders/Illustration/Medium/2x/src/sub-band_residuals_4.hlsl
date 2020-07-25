sampler s0 : register(s0);
sampler s1 : register(s1);
sampler s2 : register(s2);
sampler s3 : register(s3);
sampler s4 : register(s4);
sampler s5 : register(s5);
sampler s6 : register(s6);

#define Get(s)   tex2D(s, tex)

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(0.0455760173499584,-0.0614973008632660,-0.0472249686717987,0.0121465036645532);
res += mul(Get(s0), float4x4(0.1164296716451645,0.0323439165949821,-0.0524158850312233,-0.1160172671079636,0.1383128911256790,-0.0934242978692055,-0.1524615585803986,0.0227799434214830,-0.1112000793218613,0.1996948421001434,-0.0171771943569183,-0.0452928580343723,-0.1467079520225525,0.0018851644126698,0.1480626612901688,0.0450685098767281));
res += mul(Get(s1), float4x4(0.1775479018688202,0.0183660238981247,0.0963446050882339,0.0752092599868774,0.0441255383193493,-0.0604004189372063,0.0337296240031719,0.0139963021501899,0.1483004242181778,-0.1142315939068794,-0.0272029768675566,0.2300079315900803,-0.1038432195782661,0.3134857118129730,-0.2393971234560013,0.0035175050143152));
res += mul(Get(s2), float4x4(-0.1991689950227737,-0.0669273510575294,-0.0320480763912201,-0.4229805767536163,0.0011809392599389,0.0933320820331573,0.0071146721020341,0.1064784675836563,0.0515701957046986,-0.5453922152519226,-0.0120327919721603,0.0381549037992954,0.0112826237455010,-0.0200043842196465,-0.0327934920787811,-0.1137461513280869));
res += mul(Get(s3), float4x4(0.0306642893701792,0.0094079170376062,-0.0765965506434441,0.1041261851787567,-0.0721180662512779,-0.0882478356361389,0.0951197892427444,-0.0210777781903744,0.1523526459932327,-0.0988341122865677,0.1798125654459000,0.5472650527954102,-0.1447031050920486,0.3862131237983704,0.1165225133299828,0.1677487194538116));
res += mul(Get(s4), float4x4(-0.1361024081707001,0.2781762182712555,-0.0269361790269613,0.0819530934095383,0.0522001869976521,0.0516802705824375,-0.0273536853492260,-0.0603591240942478,-0.0172821357846260,-0.0161367617547512,-0.0671113729476929,0.0045973840169609,0.1558508574962616,-0.3199475705623627,-0.3155599832534790,-0.0170963350683451));
res += mul(Get(s5), float4x4(-0.0722126364707947,0.0142360273748636,0.0789076462388039,0.1156350299715996,0.0804872438311577,0.0027852081693709,0.1373799890279770,-0.0131604503840208,0.1380072087049484,0.0926022753119469,0.0700937360525131,0.0427678152918816,-0.1629780828952789,0.5728660821914673,0.0894119888544083,-0.0160021968185902));
res += Get(s6);
res = max(float4(0, 0, 0, 0), res) + float4(0.9966381788253784,-0.0025809544604272,-0.0033851296175271,0.6431416869163513) * min(float4(0, 0, 0, 0), res);
return res;
}