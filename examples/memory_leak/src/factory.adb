package body Factory is

   function Get_Door_Number(this: in Door) return Door_ID is
   begin
      return this.Door_Number;
   end Get_Door_Number;

   procedure Set_Door_Number(this: out Door; Input: in Door_ID) is
   begin
      this.Door_Number := Input;
   end Set_Door_Number;

   -------------
   -- Private --
   -------------
   overriding
   procedure Finalize(this: in out Door) is
   begin
      null;
   end Finalize;

end Factory;
