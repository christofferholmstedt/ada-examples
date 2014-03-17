with Ada.Finalization;

package VN_Message is

   -- VN_Message
   type VN_Message is tagged private;
   type VN_Message_Access is access all VN_Message;

   function Create_VN_Message(input: in String;
                              number: in Positive)
                           return VN_Message;

   function Get_Payload(This: in VN_Message) return String;
   function Get_Number(This: in VN_Message) return Positive;
   procedure Set_Number(This: in out VN_Message; Number: in Positive);

private
   type VN_Message is new Ada.Finalization.Controlled with
      record
         Payload: String (1 .. 11);
         Number: Positive;
      end record;

   overriding
   procedure Initialize(This: in out VN_Message);

   overriding
   procedure Adjust(This: in out VN_Message);

   overriding
   procedure Finalize(This: in out VN_Message);

end VN_Message;
