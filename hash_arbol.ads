with Vector,Arbol;

generic
   type Tipoelemento is private;
   type Indice is (<>);
   
   with function "=" (X,Y : in Tipoelemento) return Boolean;
   with function ">" (X,Y: in Tipoelemento) return Boolean;
   with function "<" (X,Y: in Tipoelemento) return Boolean;
   with function Hash (Elemento: in Tipoelemento) return indice; -- Realiza la operacion mod y devuelve el resultado en tipo indice.

   package Hash_Arbol is
      
      type Thash is private;
      procedure Ins_Tabla(Vec: in out Thash; Elemento: in Tipoelemento); -- Agrega los elementos en el vector 
      function Buscar(Vec: in Thash; Elemen: in Tipoelemento) return Boolean;
      private
         
         -- Paquete arbol
      procedure Put_Arbol(X: in Tipoelemento);
      package h_arbol is new arbol(tipoelemento,"<",">",put_arbol);
      use H_Arbol;
      
      -- Paquete vector
      procedure Get_Vec(X:out Tipoarbol);
      procedure Put_Vec(Y:in Tipoarbol);
      
      package Vec_arbol is new vector(Tipoarbol, indice, Put_Vec,Get_Vec);
      use Vec_Arbol;
      
      type THash is record
         Tabla: Tipovec;
      end record;
      end hash_arbol;
      
-- subtype Indice is Integer range 0..8; -- dimension del vector --> en este caso 9 --> K mod 9;

--function "=" (X, Y: in Regi) return Boolean is
--   begin
--      return X.Dni=Y.Dni;
--   end "=";
   
--   function ">" (X, Y: in Regi) return Boolean is
--   begin
--      return X.Dni > Y.Dni;
--   end ">";
   
--   function "<" (X, Y: in Regi) return Boolean is 
--   begin
--      return X.Dni < Y.Dni;
--   end "<";
   
--   function Hash (X: in Regi) return Indice is -- Funcion para calcular el hash
--   begin
--      return X.Dni rem 9;
--   end Hash;

--   package hashinc is new Hash_arbol(integer, Indice, "=", ">", "<", Hash); -- hash de arbol de integer
--   use hashinc;
   
--	 tabla: Thash;     