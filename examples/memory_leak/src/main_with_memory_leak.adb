with Factory;
with Text_IO;

procedure Main_With_Memory_Leak is
   Another_Door_Access : Factory.Door_Access := new Factory.Door;
begin
   null;
end Main_With_Memory_Leak;
