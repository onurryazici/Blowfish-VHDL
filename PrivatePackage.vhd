
Library IEEE;
Library blowfish_project;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;
Use IEEE.numeric_std.all;
Use blowfish_project.Sbox1Package.all;
Use blowfish_project.Sbox2Package.all;
Use blowfish_project.Sbox3Package.all;
Use blowfish_project.Sbox4Package.all;

Package PrivatePackage is 
  Function f(data:std_logic_vector(1 to 32)) return std_logic_vector;  
End PrivatePackage;

Package Body PrivatePackage is
  Function f(data:std_logic_vector(1 to 32)) return std_logic_vector is
    Variable S1_ADDRESS : integer;--std_logic_vector(1 to 8);
    Variable S2_ADDRESS : integer;--std_logic_vector(1 to 8);
    Variable S3_ADDRESS : integer;--std_logic_vector(1 to 8);
    Variable S4_ADDRESS : integer;--std_logic_vector(1 to 8);
    
    Variable Sbox1 : std_logic_vector(1 to 32);
    Variable Sbox2 : std_logic_vector(1 to 32);
    Variable Sbox3 : std_logic_vector(1 to 32);
    Variable Sbox4 : std_logic_vector(1 to 32);
        
    Variable result: std_logic_vector(1 to 32);
    Begin
      S1_ADDRESS:= to_integer(unsigned(data(1 to 8)));
      S2_ADDRESS:= to_integer(unsigned(data(9 to 16)));
      S3_ADDRESS:= to_integer(unsigned(data(17 to 24)));
      S4_ADDRESS:= to_integer(unsigned(data(25 to 32)));  
      
      Sbox1 := getDataFromSbox1(S1_ADDRESS);
      Sbox2 := getDataFromSbox2(S1_ADDRESS);
      Sbox3 := getDataFromSbox3(S1_ADDRESS);
      Sbox4 := getDataFromSbox4(S1_ADDRESS);
      
      result := (((Sbox1 OR Sbox2) XOR Sbox3) OR Sbox4);
      Return result;
    End ;
End PrivatePackage;



