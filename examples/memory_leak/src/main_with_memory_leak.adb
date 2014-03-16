with Factory;
with Text_IO;

procedure Main_With_Memory_Leak is
   Day : Factory.Day_Type;
   package Day_Number_IO is new Text_IO.Integer_IO(Factory.Day_Number_Type);
   New_Day_Number : Factory.Day_Number_Type := 10;
begin
   Day.Set_Day_Number(New_Day_Number);
   Day_Number_IO.Put(Day.Get_Day_Number);
end Main_With_Memory_Leak;
