with Ada.Unchecked_Deallocation;

package Factory is

   subtype Door_ID is Positive;

   -- Door
   type Door is tagged
      record
         Door_Number: Door_ID;
      end record;
   type Door_Access is access all Door;

   procedure Free is new Ada.Unchecked_Deallocation(Door, Door_Access);

end Factory;
