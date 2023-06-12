with Ada.Integer_Text_Io,Ada.Text_Io,Hash_Arbol;
use Ada.Integer_Text_Io,Ada.Text_Io;

procedure Probar_Arbol is
   
   subtype Indice is Integer range 0..5; -- k mod 6
   
   function igual (X, Y: in integer) return Boolean is
   begin
      return X=Y;
   end igual;
   
   function mayor (X, Y: in integer) return Boolean is
   begin
      return X > Y;
   end mayor;
   
   function menor (X, Y: in integer) return Boolean is 
   begin
      return X < Y;
   end menor;
   
   function Hash (X: in integer) return Indice is
   begin
      return X mod 6;
   end Hash;   
   
   package hashinc is new Hash_arbol(integer, Indice, igual, mayor, menor, Hash); -- hash de arbol de integer
   use hashinc;
   
   Tabla: Thash; -- vector de arbol de 6 posiciones
      
   Ingresar,elemento: Integer;
   
   begin
   
     -- inserta los elementos
      for I in indice'first..indice'last loop 
         get(Ingresar);
         ins_tabla(tabla,ingresar);
      end loop;
      New_Line;
      Put_Line("Ingrese el elemento a buscar");
      Get(Elemento);
      
      if Buscar(Tabla,Elemento) then
         
         Put_Line("El elemento se encontro!");
      else
         put_line("El elemento no se encontro!...");
          end if;
     
   end Probar_Arbol;
