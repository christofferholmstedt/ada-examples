with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with AUnit.Test_Cases; use AUnit.Test_Cases;

package Calc.Calc_Tests is

   type Test_Case is new AUnit.Test_Cases.Test_Case with null record;

   procedure Register_Tests (T: in out Test_Case);

   function Name (T: Test_Case) return String_Access;

private
   procedure Test_Sum (T : in out Aunit.Test_Cases.Test_Case'Class);

end Calc.Calc_Tests;
