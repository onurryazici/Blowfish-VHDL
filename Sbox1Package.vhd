
Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;
Use IEEE.numeric_std.all;
Package Sbox1Package is 
subtype tmy is std_logic_vector(1 to 32);

  Function getDataFromSbox1(address:integer) return tmy;  
    Type Sbox1Array is array (1 to 256) of std_logic_vector (1 to 32);
  constant Sbox1ROM: Sbox1Array := (
x"d1310ba6",x"98dfb5ac",x"2ffd72db",x"d01adfb7",x"b8e1afed",x"6a267e96",x"ba7c9045",x"f12c7f99",
x"24a19947",x"b3916cf7",x"0801f2e2",x"858efc16",x"636920d8",x"71574e69",x"a458fea3",x"f4933d7e",
x"0d95748f",x"728eb658",x"718bcd58",x"82154aee",x"7b54a41d",x"c25a59b5",x"9c30d539",x"2af26013",
x"c5d1b023",x"286085f0",x"ca417918",x"b8db38ef",x"8e79dcb0",x"603a180e",x"6c9e0e8b",x"b01e8a3e",
x"d71577c1",x"bd314b27",x"78af2fda",x"55605c60",x"e65525f3",x"aa55ab94",x"57489862",x"63e81440",
x"55ca396a",x"2aab10b6",x"b4cc5c34",x"1141e8ce",x"a15486af",x"7c72e993",x"b3ee1411",x"636fbc2a",
x"2ba9c55d",x"741831f6",x"ce5c3e16",x"9b87931e",x"afd6ba33",x"6c24cf5c",x"7a325381",x"28958677",
x"3b8f4898",x"6b4bb9af",x"c4bfe81b",x"66282193",x"61d809cc",x"fb21a991",x"487cac60",x"5dec8032",
x"ef845d5d",x"e98575b1",x"dc262302",x"eb651b88",x"23893e81",x"d396acc5",x"0f6d6ff3",x"83f44239",
x"2e0b4482",x"a4842004",x"69c8f04a",x"9e1f9b5e",x"21c66842",x"f6e96c9a",x"670c9c61",x"abd388f0",
x"6a51a0d2",x"d8542f68",x"960fa728",x"ab5133a3",x"6eef0b6c",x"137a3be4",x"ba3bf050",x"7efb2a98",
x"a1f1651d",x"39af0176",x"66ca593e",x"82430e88",x"8cee8619",x"456f9fb4",x"7d84a5c3",x"3b8b5ebe",
x"e06f75d8",x"85c12073",x"401a449f",x"56c16aa6",x"4ed3aa62",x"363f7706",x"1bfedf72",x"429b023d",
x"37d0d724",x"d00a1248",x"db0fead3",x"49f1c09b",x"075372c9",x"80991b7b",x"25d479d8",x"f6e8def7",
x"e3fe501a",x"b6794c3b",x"976ce0bd",x"04c006ba",x"c1a94fb6",x"409f60c4",x"5e5c9ec2",x"196a2463",
x"68fb6faf",x"3e6c53b5",x"1339b2eb",x"3b52ec6f",x"6dfc511f",x"9b30952c",x"cc814544",x"af5ebd09",
x"bee3d004",x"de334afd",x"660f2807",x"192e4bb3",x"c0cba857",x"45c8740f",x"d20b5f39",x"b9d3fbdb",
x"5579c0bd",x"1a60320a",x"d6a100c6",x"402c7279",x"679f25fe",x"fb1fa3cc",x"8ea5e9f8",x"db3222f8",
x"3c7516df",x"fd616b15",x"2f501ec8",x"ad0552ab",x"323db5fa",x"fd238760",x"53317b48",x"3e00df82",
x"9e5c57bb",x"ca6f8ca0",x"1a87562e",x"df1769db",x"d542a8f6",x"287effc3",x"ac6732c6",x"8c4f5573",
x"695b27b0",x"bbca58c8",x"e1ffa35d",x"b8f011a0",x"10fa3d98",x"fd2183b8",x"4afcb56c",x"2dd1d35b",
x"9a53e479",x"b6f84565",x"d28e49bc",x"4bfb9790",x"e1ddf2da",x"a4cb7e33",x"62fb1341",x"cee4c6e8",
x"ef20cada",x"36774c01",x"d07e9efe",x"2bf11fb4",x"95dbda4d",x"ae909198",x"eaad8e71",x"6b93d5a0",
x"d08ed1d0",x"afc725e0",x"8e3c5b2f",x"8e7594b7",x"8ff6e2fb",x"f2122b64",x"8888b812",x"900df01c",
x"4fad5ea0",x"688fc31c",x"d1cff191",x"b3a8c1ad",x"2f2f2218",x"be0e1777",x"ea752dfe",x"8b021fa1",
x"e5a0cc0f",x"b56f74e8",x"18acf3d6",x"ce89e299",x"b4a84fe0",x"fd13e0b7",x"7cc43b81",x"d2ada8d9",
x"165fa266",x"80957705",x"93cc7314",x"211a1477",x"e6ad2065",x"77b5fa86",x"c75442f5",x"fb9d35cf",
x"ebcdaf0c",x"7b3e89a0",x"d6411bd3",x"ae1e7e49",x"00250e2d",x"2071b35e",x"226800bb",x"57b8e0af",
x"2464369b",x"f009b91e",x"5563911d",x"59dfa6aa",x"78c14389",x"d95a537f",x"207d5ba2",x"02e5b9c5",
x"83260376",x"6295cfa9",x"11c81968",x"4e734a41",x"b3472dca",x"7b14a94a",x"1b510052",x"9a532915",
x"d60f573f",x"bc9bc6e4",x"2b60a476",x"81e67400",x"08ba6fb5",x"571be91f",x"f296ec6b",x"2a0dd915",
x"b6636521",x"e7b9f9b6",x"ff34052e",x"c5855664",x"53b02d5d",x"a99f8fa1",x"08ba4799",x"6e85076a"  
  );


End Sbox1Package;

Package Body Sbox1Package is
    Function getDataFromSbox1(address:integer) return tmy is
    Begin
      return Sbox1ROM(address);
    End getDataFromSbox1;
-- nothing
End Sbox1Package;
