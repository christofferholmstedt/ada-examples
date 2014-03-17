with Ada.Finalization;
with Ada.Text_IO;

package body Factory is

   -- Controlled Door
   function Create_Controlled_Door(input: in String) return Controlled_Door is
      Controlled_Door: Factory.Controlled_Door;
   begin
      Ada.Text_IO.Put_Line("Start Create_Controlled_Door");
      Controlled_Door.Door_Name := input;
      Ada.Text_IO.Put_Line("End Create_Controlled_Door");
      return Controlled_Door;
   end;

   overriding
   procedure Initialize(this: in out Controlled_Door) is
   begin
     Ada.Text_IO.Put_Line("Initialized door: " & this.Door_Name);
   end;

   overriding
   procedure Adjust(this: in out Controlled_Door) is
   begin
     Ada.Text_IO.Put_Line("Adjust door: " & this.Door_Name);
   end;

   overriding
   procedure Finalize(this: in out Controlled_Door) is
   begin
     Ada.Text_IO.Put_Line("Finalized door: " & this.Door_Name);
   end;
end Factory;
