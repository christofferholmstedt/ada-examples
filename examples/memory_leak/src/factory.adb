package body Factory is

   function Get_Day_Number(Day: in Day_Type) return Day_Number_Type is
   begin
      return Day.Day_Number;
   end Get_Day_Number;

   procedure Set_Day_Number(Day: out Day_Type; Input: in Day_Number_Type) is
   begin
      Day.Day_Number := Input;
   end Set_Day_Number;

   -------------
   -- Private --
   -------------
   overriding
   procedure Finalize(Day: in out Day_Type) is
   begin
      null;
   end Finalize;

end Factory;
