Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;
Use IEEE.numeric_std.all;
Package Sbox3Package is 
  subtype tmy is std_logic_vector(1 to 32);

  Function getDataFromSbox3(address:integer) return tmy;  
    Type Sbox3Array is array (1 to 256) of std_logic_vector (1 to 32);
  constant Sbox3ROM: Sbox3Array := (
x"e93d5a68",x"948140f7",x"f64c261c",x"94692934",x"411520f7",x"7602d4f7",x"bcf46b2e",x"d4a20068",
x"d4082471",x"3320f46a",x"43b7d4b7",x"500061af",x"1e39f62e",x"97244546",x"14214f74",x"bf8b8840",
x"4d95fc1d",x"96b591af",x"70f4ddd3",x"66a02f45",x"bfbc09ec",x"03bd9785",x"7fac6dd0",x"31cb8504",
x"96eb27b3",x"55fd3941",x"da2547e6",x"abca0a9a",x"28507825",x"530429f4",x"0a2c86da",x"e9b66dfb",
x"68dc1462",x"d7486900",x"680ec0a4",x"27a18dee",x"4f3ffea2",x"e887ad8c",x"b58ce006",x"7af4d6b6",
x"aace1e7c",x"d3375fec",x"ce78a399",x"406b2a42",x"20fe9e35",x"d9f385b9",x"ee39d7ab",x"3b124e8b",
x"1dc9faf7",x"4b6d1856",x"26a36631",x"eae397b2",x"3a6efa74",x"dd5b4332",x"6841e7f7",x"ca7820fb",
x"fb0af54e",x"d8feb397",x"454056ac",x"ba489527",x"55533a3a",x"20838d87",x"fe6ba9b7",x"d096954b",
x"55a867bc",x"a1159a58",x"cca92963",x"99e1db33",x"a62a4a56",x"3f3125f9",x"5ef47e1c",x"9029317c",
x"fdf8e802",x"04272f70",x"80bb155c",x"05282ce3",x"95c11548",x"e4c66d22",x"48c1133f",x"c70f86dc",
x"07f9c9ee",x"41041f0f",x"404779a4",x"5d886e17",x"325f51eb",x"d59bc0d1",x"f2bcc18f",x"41113564",
x"257b7834",x"602a9c60",x"dff8e8a3",x"1f636c1b",x"0e12b4c2",x"02e1329e",x"af664fd1",x"cad18115",
x"6b2395e0",x"333e92e1",x"3b240b62",x"eebeb922",x"85b2a20e",x"e6ba0d99",x"de720c8c",x"2da2f728",
x"d0127845",x"95b794fd",x"647d0862",x"e7ccf5f0",x"5449a36f",x"877d48fa",x"c39dfd27",x"f33e8d1e",
x"0a476341",x"992eff74",x"3a6f6eab",x"f4f8fd37",x"a812dc60",x"a1ebddf8",x"991be14c",x"db6e6b0d",
x"c67b5510",x"6d672c37",x"2765d43b",x"dcd0e804",x"f1290dc7",x"cc00ffa3",x"b5390f92",x"690fed0b",
x"667b9ffb",x"cedb7d9c",x"a091cf0b",x"d9155ea3",x"bb132f88",x"515bad24",x"7b9479bf",x"763bd6eb",
x"37392eb3",x"cc115979",x"8026e297",x"f42e312d",x"6842ada7",x"c66a2b3b",x"12754ccc",x"782ef11c",
x"6a124237",x"b79251e7",x"06a1bbe6",x"4bfb6350",x"1a6b1018",x"11caedfa",x"3d25bdd8",x"e2e1c3c9",
x"44421659",x"0a121386",x"d90cec6e",x"d5abea2a",x"64af674e",x"da86a85f",x"bebfe988",x"64e4c3fe",
x"9dbc8057",x"f0f7c086",x"60787bf8",x"6003604d",x"d1fd8346",x"f6381fb0",x"7745ae04",x"d736fccc",
x"83426b33",x"f01eab71",x"b0804187",x"3c005e5f",x"77a057be",x"bde8ae24",x"55464299",x"bf582e61",
x"4e58f48f",x"f2ddfda2",x"f474ef38",x"8789bdc2",x"5366f9c3",x"c8b38e74",x"b475f255",x"46fcd9b9",
x"7aeb2661",x"8b1ddf84",x"846a0e79",x"915f95e2",x"466e598e",x"20b45770",x"8cd55591",x"c902de4c",
x"b90bace1",x"bb8205d0",x"11a86248",x"7574a99e",x"b77f19b6",x"e0a9dc09",x"662d09a1",x"c4324633",
x"e85a1f02",x"09f0be8c",x"4a99a025",x"1d6efe10",x"1ab93d1d",x"0ba5a4df",x"a186f20f",x"2868f169",
x"dcb7da83",x"573906fe",x"a1e2ce9b",x"4fcd7f52",x"50115e01",x"a70683fa",x"a002b5c4",x"0de6d027",
x"9af88c27",x"773f8641",x"c3604c06",x"61a806b5",x"f0177a28",x"c0f586e0",x"006058aa",x"30dc7d62",
x"11e69ed7",x"2338ea63",x"53c2dd94",x"c2c21634",x"bbcbee56",x"90bcb6de",x"ebfc7da1",x"ce591d76",
x"6f05e409",x"4b7c0188",x"39720a3d",x"7c927c24",x"86e3725f",x"724d9db9",x"1ac15bb4",x"d39eb8fc",
x"ed545578",x"08fca5b5",x"d83d7cd3",x"4dad0fc4",x"1e50ef5e",x"b161e6f8",x"a28514d9",x"6c51133c",
x"6fd5c7e7",x"56e14ec4",x"362abfce",x"ddc6c837",x"d79a3234",x"92638212",x"670efa8e",x"406000e0" 
  );


End Sbox3Package;

Package Body Sbox3Package is
    Function getDataFromSbox3(address:integer) return tmy is
    Begin
      return Sbox3ROM(address);
    End getDataFromSbox3;
-- nothing
End Sbox3Package;


