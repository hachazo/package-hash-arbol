with Ada.Integer_Text_Io,Ada.Text_Io,Hash_Arbol;
use Ada.Integer_Text_Io,Ada.Text_Io;

procedure Probar_Arbol is
   
   subtype Indice is Integer range 0..8; -- k mod 9
   
   function "=" (X, Y: in integer) return Boolean is
   begin
      return X=Y;
   end "=";
   
   function ">" (X, Y: in integer) return Boolean is
   begin
      return X > Y;
   end ">";
   
   function "<" (X, Y: in integer) return Boolean is 
   begin
      return X < Y;
   end "<";
   
   function Hash (X: in integer) return Indice is
   begin
      return X rem 9;
   end Hash;   
   
   package hashinc is new Hash_arbol(integer, Indice, "=", ">", "<", Hash); -- hash de arbol de integer
   use hashinc;
   
   Tabla: Thash; -- vector de arbol de 9 posiciones
      
   Ingresar: Integer;
   
   begin
   
     -- inserta los elementos
      for I in 0..8 loop 
         get(Ingresar);
         ins_tabla(tabla,ingresar);
      end loop;
      

if Buscar(Tabla,11) then
          put_line("fGFGHFH");
          end if;
--      
   end Probar_Arbol;
