package body Hash_Arbol is


   procedure Put_Arbol (
         X : in     Tipoelemento) is
   begin
      null;
   end Put_Arbol;

   procedure Get_Vec (
         X :    out Tarbol) is
   begin
      null;
   end Get_Vec;

   procedure Put_Vec (
         Y : in     Tarbol) is
   begin
      null;
   end Put_Vec;


   procedure Ins_Tabla (
         Vec      : in out Thash;
         Elemento : in     Tipoelemento) is


   begin

      Insertar(Vec.Tabla(Hash(Elemento)),Elemento);
   end Ins_Tabla;
   function Buscar (
         Vec    : in     Thash;
         Elemen : in     Tipoelemento)
     return Boolean is
   begin
      return Esta(Vec.Tabla(Hash(Elemen)),Elemen);


   end Buscar;

end Hash_Arbol;
