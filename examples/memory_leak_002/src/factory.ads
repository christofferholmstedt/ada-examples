with Ada.Finalization;

package Factory is

   -- Controlled Door
   type Controlled_Door is new Ada.Finalization.Controlled with private;

   -- Create
   function Create_Controlled_Door(input: in String) return Controlled_Door;

private

   type Controlled_Door is new Ada.Finalization.Controlled with
      record
         Door_Name: String(1 .. 5);
      end record;

-- overriding
-- procedure Initialize(this: in out Controlled_Door);

   overriding
   procedure Adjust(this: in out Controlled_Door);

   overriding
   procedure Finalize(this: in out Controlled_Door);

end Factory;
