generic
   type Tipoelemento is private;
   type Indice is (<>);
   with procedure Put (X: in tipoelemento);
   with procedure Get (X: out tipoelemento);
   package Vector is
      type Tipovec is array (indice) of tipoelemento; 
      procedure Leer (Vec: out Tipovec);
      procedure Imprimir (Vec: in Tipovec);
   end vector;