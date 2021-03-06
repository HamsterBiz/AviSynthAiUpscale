sampler s0 : register(s0);
float2 p1 :  register(c1);

#define dx   (p1[0])
#define dy   (p1[1])
#define ddx  (dx * 2.0)
#define ddy  (dy * 2.0)
#define Get(x, y)   tex2D(s0, tex + float2(x, y))[0]

float4 main(float2 tex : TEXCOORD0) : COLOR
{
float4 res = float4(-0.0020893793553114,-0.1215604543685913,0.0350431762635708,0.0153070855885744);
res += float4(0.0204786192625761,-0.0046026054769754,0.0266259685158730,0.0461446568369865) * Get(-ddx,-ddy);
res += float4(0.0124595435336232,-0.0194271355867386,-0.0171309597790241,-0.0463743619620800) * Get(-ddx,-dy);
res += float4(0.0679309368133545,-0.0323367528617382,0.0606951490044594,0.0819303467869759) * Get(-ddx,0);
res += float4(-0.1431119889020920,-0.0457652024924755,0.0027101014275104,-0.0542152188718319) * Get(-ddx,dy);
res += float4(0.0642907246947289,0.0282036606222391,-0.0082325208932161,0.0037828907370567) * Get(-ddx,ddy);
res += float4(-0.0237633958458900,-0.0283123888075352,-0.0165910907089710,-0.0845466703176498) * Get(-dx,-ddy);
res += float4(0.0708534866571426,0.1208087652921677,-0.1056958809494972,0.0364811308681965) * Get(-dx,-dy);
res += float4(0.0018438488477841,-0.0273362547159195,-0.1850406527519226,-0.3316832184791565) * Get(-dx,0);
res += float4(0.0963064953684807,-0.0665147975087166,0.0320821143686771,0.3512763082981110) * Get(-dx,dy);
res += float4(-0.0851982086896896,-0.0120228230953217,0.0105248913168907,-0.0898170769214630) * Get(-dx,ddy);
res += float4(-0.1856077760457993,0.0640585944056511,-0.0512127690017223,0.0282410215586424) * Get(0,-ddy);
res += float4(0.1023017540574074,0.2918082177639008,0.4002980589866638,-0.0176991876214743) * Get(0,-dy);
res += float4(-0.2811687290668488,0.2188437879085541,-0.1158881261944771,0.2329747080802917) * Get(0,0);
res += float4(0.0798112154006958,-0.0562250241637230,-0.2423744350671768,-0.1598913520574570) * Get(0,dy);
res += float4(0.0409267470240593,-0.1473657488822937,0.0670638829469681,0.0971358120441437) * Get(0,ddy);
res += float4(0.1110523790121078,-0.1018587648868561,-0.0372842885553837,-0.0566966272890568) * Get(dx,-ddy);
res += float4(-0.0252298582345247,-0.1312861889600754,-0.0104875657707453,0.1963596493005753) * Get(dx,-dy);
res += float4(0.1773386597633362,0.1513173282146454,0.2596769332885742,-0.2076955288648605) * Get(dx,0);
res += float4(-0.0965685844421387,-0.0387989915907383,-0.0309312064200640,-0.0631260126829147) * Get(dx,dy);
res += float4(0.0029614621307701,-0.0133852548897266,0.0025305743329227,0.0195204559713602) * Get(dx,ddy);
res += float4(-0.0541330724954605,0.0271144118160009,-0.0097853746265173,0.0182685758918524) * Get(ddx,-ddy);
res += float4(0.0532049387693405,0.0592214427888393,0.0348554141819477,-0.0582576878368855) * Get(ddx,-dy);
res += float4(-0.0374023318290710,0.1023564338684082,-0.0914165601134300,0.0097566945478320) * Get(ddx,0);
res += float4(0.0276979580521584,-0.0492200925946236,0.0422526188194752,0.0741239264607430) * Get(ddx,dy);
res += float4(0.0165116582065821,0.0108266510069370,-0.0125352637842298,-0.0688471496105194) * Get(ddx,ddy);
return res;
}
