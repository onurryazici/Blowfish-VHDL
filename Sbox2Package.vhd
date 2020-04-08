Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;
Use IEEE.numeric_std.all;
Package Sbox2Package is 
  subtype tmy is std_logic_vector(1 to 32);

  Function getDataFromSbox2(address:integer) return tmy;  
  Type Sbox2Array is array (1 to 256) of std_logic_vector (1 to 32);
  constant Sbox2ROM: Sbox2Array := (
x"4b7a70e9",x"b5b32944",x"db75092e",x"c4192623",x"ad6ea6b0",x"49a7df7d",x"9cee60b8",x"8fedb266",
x"ecaa8c71",x"699a17ff",x"5664526c",x"c2b19ee1",x"193602a5",x"75094c29",x"a0591340",x"e4183a3e",
x"3f54989a",x"5b429d65",x"6b8fe4d6",x"99f73fd6",x"a1d29c07",x"efe830f5",x"4d2d38e6",x"f0255dc1",
x"4cdd2086",x"8470eb26",x"6382e9c6",x"021ecc5e",x"09686b3f",x"3ebaefc9",x"3c971814",x"6b6a70a1",
x"687f3584",x"52a0e286",x"b79c5305",x"aa500737",x"3e07841c",x"7fdeae5c",x"8e7d44ec",x"5716f2b8",
x"b03ada37",x"f0500c0d",x"f01c1f04",x"0200b3ff",x"ae0cf51a",x"3cb574b2",x"25837a58",x"dc0921bd",
x"d19113f9",x"7ca92ff6",x"94324773",x"22f54701",x"3ae5e581",x"37c2dadc",x"c8b57634",x"9af3dda7",
x"a9446146",x"0fd0030e",x"ecc8c73e",x"a4751e41",x"e238cd99",x"3bea0e2f",x"3280bba1",x"183eb331",
x"4e548b38",x"4f6db908",x"6f420d03",x"f60a04bf",x"2cb81290",x"24977c79",x"5679b072",x"bcaf89af",
x"de9a771f",x"d9930810",x"b38bae12",x"dccf3f2e",x"5512721f",x"2e6b7124",x"501adde6",x"9f84cd87",
x"7a584718",x"7408da17",x"bc9f9abc",x"e94b7d8c",x"ec7aec3a",x"db851dfa",x"63094366",x"c464c3d2",
x"ef1c1847",x"3215d908",x"dd433b37",x"24c2ba16",x"12a14d43",x"2a65c451",x"50940002",x"133ae4dd",
x"71dff89e",x"10314e55",x"81ac77d6",x"5f11199b",x"043556f1",x"d7a3c76b",x"3c11183b",x"5924a509",
x"f28fe6ed",x"97f1fbfa",x"9ebabf2c",x"1e153c6e",x"86e34570",x"eae96fb1",x"860e5e0a",x"5a3e2ab3",
x"771fe71c",x"4e3d06fa",x"2965dcb9",x"99e71d0f",x"803e89d6",x"5266c825",x"2e4cc978",x"9c10b36a",
x"c6150eba",x"94e2ea78",x"a5fc3c53",x"1e0a2df4",x"f2f74ea7",x"361d2b3d",x"1939260f",x"19c27960",
x"5223a708",x"f71312b6",x"ebadfe6e",x"eac31f66",x"e3bc4595",x"a67bc883",x"b17f37d1",x"018cff28",
x"c332ddef",x"be6c5aa5",x"65582185",x"68ab9802",x"eecea50f",x"db2f953b",x"2aef7dad",x"5b6e2f84",
x"1521b628",x"29076170",x"ecdd4775",x"619f1510",x"13cca830",x"eb61bd96",x"0334fe1e",x"aa0363cf",
x"b5735c90",x"4c70a239",x"d59e9e0b",x"cbaade14",x"eecc86bc",x"60622ca7",x"9cab5cab",x"b2f3846e",
x"648b1eaf",x"19bdf0ca",x"a02369b9",x"655abb50",x"40685a32",x"3c2ab4b3",x"319ee9d5",x"c021b8f7",
x"9b540b19",x"875fa099",x"95f7997e",x"623d7da8",x"f837889a",x"97e32d77",x"11ed935f",x"16681281",
x"0e358829",x"c7e61fd6",x"96dedfa1",x"7858ba99",x"57f584a5",x"1b227263",x"9b83c3ff",x"1ac24696",
x"cdb30aeb",x"532e3054",x"8fd948e4",x"6dbc3128",x"58ebf2ef",x"34c6ffea",x"fe28ed61",x"ee7c3c73",
x"5d4a14d9",x"e864b7e3",x"42105d14",x"203e13e0",x"45eee2b6",x"a3aaabea",x"db6c4f15",x"facb4fd0",
x"c742f442",x"ef6abbb5",x"654f3b1d",x"41cd2105",x"d81e799e",x"86854dc7",x"e44b476a",x"3d816250",
x"cf62a1f2",x"5b8d2646",x"fc8883a0",x"c1c7b6a3",x"7f1524c3",x"69cb7492",x"47848a0b",x"5692b285",
x"095bbf00",x"ad19489d",x"1462b174",x"23820e00",x"58428d2a",x"0c55f5ea",x"1dadf43e",x"233f7061",
x"3372f092",x"8d937e41",x"d65fecf1",x"6c223bdb",x"7cde3759",x"cbee7460",x"4085f2a7",x"ce77326e",
x"a6078084",x"19f8509e",x"e8efd855",x"61d99735",x"a969a7aa",x"c50c06c2",x"5a04abfc",x"800bcadc",
x"9e447a2e",x"c3453484",x"fdd56705",x"0e1e9ec9",x"db73dbd3",x"105588cd",x"675fda79",x"e3674340",
x"c5c43465",x"713e38d8",x"3d28f89e",x"f16dff20",x"153e21e7",x"8fb03d4a",x"e6e39f2b",x"db83adf7"
  );


End Sbox2Package;

Package Body Sbox2Package is
  
    Function getDataFromSbox2(address:integer) return tmy is
    Begin
      return Sbox2ROM(address);
    End getDataFromSbox2;
-- nothing
End Sbox2Package;

