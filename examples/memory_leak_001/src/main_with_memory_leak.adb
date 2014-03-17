with Factory;

procedure Main_With_Memory_Leak is
   Door_Access: Factory.Door_Access := new Factory.Door;
begin
   null;
end Main_With_Memory_Leak;
