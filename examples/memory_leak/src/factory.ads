with Ada.Finalization;

package Factory is

   -- VN_Message
   type Day_Type is tagged private;
   type Day_Access is access Day_Type;

   subtype Day_Number_Type is Positive range 1 .. 31;

   function Get_Day_Number(Day: in Day_Type) return Day_Number_Type;
   procedure Set_Day_Number(Day: out Day_Type; Input: in Day_Number_Type);

private
   type Day_Type is new Ada.Finalization.Controlled with
      record
         Day_Number : Day_Number_Type;
      end record;

   overriding
   procedure Finalize(Day: in out Day_Type);

end Factory;
