with Factory;
with Ada.Text_IO;

procedure Main is
   Controlled_Door: Factory.Controlled_Door;
begin
   Ada.Text_IO.Put_Line("Start Main");

   Controlled_Door := Factory.Create_Controlled_Door("door1");

--   declare
--      Controlled_Door2: Factory.Controlled_Door;
--   begin
--      Ada.Text_IO.Put_Line("Start Declare");
--      Controlled_Door2 := Factory.Create_Controlled_Door("door2");
--
--      Ada.Text_IO.Put_Line("End Declare");
--   end;
--
   Ada.Text_IO.Put_Line("End Main");
end Main;
