with Factory;

procedure Main_Without_Memory_Leak is
   Door_Access: Factory.Door_Access := new Factory.Door;
begin
   Factory.Free(Door_Access);
end Main_Without_Memory_Leak;
