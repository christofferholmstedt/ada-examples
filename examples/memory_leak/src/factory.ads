with Ada.Finalization;

package Factory is

   -- VN_Message
   type Door is tagged private;
   type Door_Access is access Door;

   subtype Door_ID is Positive;

   function Get_Door_Number(this: in Door) return Door_ID;
   procedure Set_Door_Number(this: out Door; Input: in Door_ID);

private
   type Door is new Ada.Finalization.Controlled with
      record
         Door_Number: Door_ID;
      end record;

   overriding
   procedure Finalize(this: in out Door);

end Factory;
