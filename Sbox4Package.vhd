Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;
Use IEEE.numeric_std.all;
Package Sbox4Package is 
  
subtype tmy is std_logic_vector(1 to 32);
  Function getDataFromSbox4(address:integer) return tmy;  
    Type Sbox4Array is array (1 to 256) of std_logic_vector (1 to 32);
  constant Sbox4ROM: Sbox4Array := (
x"3a39ce37",x"d3faf5cf",x"abc27737",x"5ac52d1b",x"5cb0679e",x"4fa33742",x"d3822740",x"99bc9bbe",
x"d5118e9d",x"bf0f7315",x"d62d1c7e",x"c700c47b",x"b78c1b6b",x"21a19045",x"b26eb1be",x"6a366eb4",
x"5748ab2f",x"bc946e79",x"c6a376d2",x"6549c2c8",x"530ff8ee",x"468dde7d",x"d5730a1d",x"4cd04dc6",
x"2939bbdb",x"a9ba4650",x"ac9526e8",x"be5ee304",x"a1fad5f0",x"6a2d519a",x"63ef8ce2",x"9a86ee22",
x"c089c2b8",x"43242ef6",x"a51e03aa",x"9cf2d0a4",x"83c061ba",x"9be96a4d",x"8fe51550",x"ba645bd6",
x"2826a2f9",x"a73a3ae1",x"4ba99586",x"ef5562e9",x"c72fefd3",x"f752f7da",x"3f046f69",x"77fa0a59",
x"80e4a915",x"87b08601",x"9b09e6ad",x"3b3ee593",x"e990fd5a",x"9e34d797",x"2cf0b7d9",x"022b8b51",
x"96d5ac3a",x"017da67d",x"d1cf3ed6",x"7c7d2d28",x"1f9f25cf",x"adf2b89b",x"5ad6b472",x"5a88f54c",
x"e029ac71",x"e019a5e6",x"47b0acfd",x"ed93fa9b",x"e8d3c48d",x"283b57cc",x"f8d56629",x"79132e28",
x"785f0191",x"ed756055",x"f7960e44",x"e3d35e8c",x"15056dd4",x"88f46dba",x"03a16125",x"0564f0bd",
x"c3eb9e15",x"3c9057a2",x"97271aec",x"a93a072a",x"1b3f6d9b",x"1e6321f5",x"f59c66fb",x"26dcf319",
x"7533d928",x"b155fdf5",x"03563482",x"8aba3cbb",x"28517711",x"c20ad9f8",x"abcc5167",x"ccad925f",
x"4de81751",x"3830dc8e",x"379d5862",x"9320f991",x"ea7a90c2",x"fb3e7bce",x"5121ce64",x"774fbe32",
x"a8b6e37e",x"c3293d46",x"48de5369",x"6413e680",x"a2ae0810",x"dd6db224",x"69852dfd",x"09072166",
x"b39a460a",x"6445c0dd",x"586cdecf",x"1c20c8ae",x"5bbef7dd",x"1b588d40",x"ccd2017f",x"6bb4e3bb",
x"dda26a7e",x"3a59ff45",x"3e350a44",x"bcb4cdd5",x"72eacea8",x"fa6484bb",x"8d6612ae",x"bf3c6f47",
x"d29be463",x"542f5d9e",x"aec2771b",x"f64e6370",x"740e0d8d",x"e75b1357",x"f8721671",x"af537d5d",
x"4040cb08",x"4eb4e2cc",x"34d2466a",x"0115af84",x"e1b00428",x"95983a1d",x"06b89fb4",x"ce6ea048",
x"6f3f3b82",x"3520ab82",x"011a1d4b",x"277227f8",x"611560b1",x"e7933fdc",x"bb3a792b",x"344525bd",
x"a08839e1",x"51ce794b",x"2f32c9b7",x"a01fbac9",x"e01cc87e",x"bcc7d1f6",x"cf0111c3",x"a1e8aac7",
x"1a908749",x"d44fbd9a",x"d0dadecb",x"d50ada38",x"0339c32a",x"c6913667",x"8df9317c",x"e0b12b4f",
x"f79e59b7",x"43f5bb3a",x"f2d519ff",x"27d9459c",x"bf97222c",x"15e6fc2a",x"0f91fc71",x"9b941525",
x"fae59361",x"ceb69ceb",x"c2a86459",x"12baa8d1",x"b6c1075e",x"e3056a0c",x"10d25065",x"cb03a442",
x"e0ec6e0e",x"1698db3b",x"4c98a0be",x"3278e964",x"9f1f9532",x"e0d392df",x"d3a0342b",x"8971f21e",
x"1b0a7441",x"4ba3348c",x"c5be7120",x"c37632d8",x"df359f8d",x"9b992f2e",x"e60b6f47",x"0fe3f11d",
x"e54cda54",x"1edad891",x"ce6279cf",x"cd3e7e6f",x"1618b166",x"fd2c1d05",x"848fd2c5",x"f6fb2299",
x"f523f357",x"a6327623",x"93a83531",x"56cccd02",x"acf08162",x"5a75ebb5",x"6e163697",x"88d273cc",
x"de966292",x"81b949d0",x"4c50901b",x"71c65614",x"e6c6c7bd",x"327a140a",x"45e1d006",x"c3f27b9a",
x"c9aa53fd",x"62a80f00",x"bb25bfe2",x"35bdd2f6",x"71126905",x"b2040222",x"b6cbcf7c",x"cd769c2b",
x"53113ec0",x"1640e3d3",x"38abbd60",x"2547adf0",x"ba38209c",x"f746ce76",x"77afa1c5",x"20756060",
x"85cbfe4e",x"8ae88dd8",x"7aaaf9b0",x"4cf9aa7e",x"1948c25c",x"02fb8a8c",x"01c36ae4",x"d6ebe1f9",
x"90d4f869",x"a65cdea0",x"3f09252d",x"c208e69f",x"b74e6132",x"ce77e25b",x"578fdfe3",x"3ac372e6"
 );


End Sbox4Package;

Package Body Sbox4Package is
    Function getDataFromSbox4(address:integer) return tmy is
    Begin
      return Sbox4ROM(address);
    End getDataFromSbox4;
-- nothing
End Sbox4Package;



