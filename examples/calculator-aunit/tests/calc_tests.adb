with AUnit.Test_Cases.Registration; use AUnit.Test_Cases.Registration;
with AUnit.Assertions; use AUnit.Assertions;

with Calc;

package body Calc_Tests is

   procedure Test_Sum (T : in out Aunit.Test_Cases.Test_Case'Class) is
      pragma Unreferenced (T);
   begin
      Assert (Calc.Sum (2, 3) = 5, "test 2 +5 = 5");
   end Test_Sum;

   procedure Register_Tests (T: in out Test_Case) is
   begin
      Register_Routine (T, Test_Sum'Access, "Test Calc.Sum");
   end Register_Tests;

   function Name (T: Test_Case) return String_Access is
   begin
      return new String'("Calculator tests");
   end Name;

end Calc_Tests;
