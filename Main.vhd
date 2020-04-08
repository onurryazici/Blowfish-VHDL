
----------------------------------------------------------------------------------
-- Engineer           : 
-- 
-- Create Date        : 22:00:40 11/26/2019 
-- Module Name        : Encryptor - Behavioral 
-- Project Name       : Blowfish
-- Target Devices     : None
-- Tool versions      : 1.0
-- Description        : Encrypting plain text via blowfish algorithm   
--
----------------------------------------------------------------------------------
Library IEEE;
Library blowfish_project;
Use blowfish_project.PrivatePackage.all;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;
Use IEEE.std_logic_arith.all;


Entity Main is
    Port ( clock     : in std_logic;
           reset     : in std_logic;
			     data      : in std_logic_vector(1 to 64);   -- 64 bitlik bir veri girdisi yapiyoruz.
			     encrypted : out std_logic_vector(1 to 64);
			     decrypted : out std_logic_vector(1 to 64));
End Main;


Architecture Behavioral of Main is
  -- Hex pi verileri
  Type PValuesArray is array (1 to 18) of std_logic_vector(1 to 32); 
  Signal PValues:PValuesArray; 
  
  Signal left  : std_logic_vector(1 to 32);
  Signal right : std_logic_vector(1 to 32);

  Signal sL : std_logic_vector(1 to 32);
  Signal sR : std_logic_vector(1 to 32);


   constant key   : std_logic_vector(1 to 448):=(others=>'0');
  
Begin
  
  --- Setting hex pi values
  PValues(1)  <= x"243F6A88";
  PValues(2)  <= x"85A308D3";
  PValues(3)  <= x"13198A2E";
  PValues(4)  <= x"03707344";
  PValues(5)  <= x"A4093822";
  PValues(6)  <= x"299F31D0";
  PValues(7)  <= x"082EFA98";
  PValues(8)  <= x"EC4E6C89";
  PValues(9)  <= x"452821E6";
  PValues(10) <= x"38D01377";
  PValues(11) <= x"BE5466CF";
  PValues(12) <= x"34E90C6C";
  PValues(13) <= x"C0AC29B7";
  PValues(14) <= x"C97C50DD";
  PValues(15) <= x"3F84D5B5";
  PValues(16) <= x"B5470917";
  PValues(17) <= x"9216D5D9";
  PValues(18) <= x"8979FB1B";
  
  left  <= data(1 to 32);
  right <= data(33 to 64);
  
--  variable temp : bit_vector(1 to 32);
  
	Process(clock,reset) is
	   variable xL  : std_logic_vector(1 to 32);
  variable xR  : std_logic_vector(1 to 32);
  variable tempLeft : std_logic_vector(1 to 32);
  variable tempRight : std_logic_vector(1 to 32);

		Begin
		
		If reset='1' AND reset'event 
		  Then
	    encrypted<=(others=>'Z');
	    decrypted<=(others=>'Z');
	    
    Elsif clock='1' AND clock'event 
      Then
        
      ----------- ENCRYPTING ------------
		  For i in 1 to 16 loop
		    xL := left XOR PValues(i);
		    xR := f(left) XOR right;
		    
		    ---- SWAPPING -------
		    tempLeft := xL;
		    tempRight := xR;
		    xL := tempRight;
		    xR :=tempLeft;
		    ---------------------
		     
		  End loop;
		  --- Undo swap --------
		  xL := tempLeft;
		  xR := tempRight;
		  ----------------------
		  
		  ---- RECOMBINING -----
		  sR <=tempRight XOR PValues(17);
		  sL <=tempLeft XOR PValues(18);
		  ----------------------

      ----------- END OF ENCRYPTING ------------
		 End if;
	End Process;
	
	encrypted <= sL & sR;
		  -- "1111111111111111111111111111111111111111111111111111111111111111";
End Behavioral;
