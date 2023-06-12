with Vector,Arbol;

generic
   type Tipoelemento is private;
   type Indice is (<>);
   
   with function "=" (X,Y : in Tipoelemento) return Boolean;
   with function ">" (X,Y: in Tipoelemento) return Boolean;
   with function "<" (X,Y: in Tipoelemento) return Boolean;
   with function Hash (Elemento: in Tipoelemento) return Indice;
   
      package Hash_Arbol is
      
      type Thash is private;
      procedure Ins_Tabla(Vec: in out Thash; Elemento: in Tipoelemento);
      function buscar(vec: in Thash; elemen:  in tipoelemento) return boolean;

      private
         
         -- Paquete arbol
      package h_arbol is new arbol(tipoelemento,"<",">","=");
      use H_Arbol;
      
      -- Paquete vector
      procedure Get_Vec(X:out Tarbol);
      procedure Put_Vec(Y:in Tarbol);
      
      package Vec_arbol is new vector(Tarbol, indice, Put_Vec,Get_Vec);
      use Vec_Arbol;
      
      type THash is record
         Tabla: Tipovec;
      end record;
      end hash_arbol;