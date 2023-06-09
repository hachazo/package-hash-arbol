package body Hash_arbol is
   

   procedure Put_Arbol (X: in Tipoelemento) is
   begin
      null;
   end Put_Arbol;
   
   procedure Get_Vec (X: out Tipoarbol) is
   begin
      null;
   end Get_Vec;
   
   procedure put_vec (y: in Tipoarbol) is 
   begin
      null;
   end put_Vec;
   

   procedure Ins_Tabla (Vec: in out Thash; Elemento: in Tipoelemento) is
   
   temp:boolean;
   
   begin
      temp:=false;
      
      for i in indice'first .. indice'last loop
      if vacio(vec.tabla(hash(elemento))) then
      insertar(vec.tabla(hash(elemento)),elemento);
      temp:=true;
      else
      if Vacio(Vec.Tabla(i)) and temp=false then 
               Insertar(Vec.Tabla(I), Elemento);
               Temp:=True;
               
            end if;
            end if;
      end loop;
      end Ins_Tabla;
  
  function Buscar(Vec: in Thash; elemen: in Tipoelemento) return Boolean is
    begin
      return esta(vec.tabla(hash(elemen)),elemen);
         
    end Buscar;
    
end Hash_arbol;
