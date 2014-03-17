with Ada.Finalization;
with Ada.Text_IO;

package body VN_Message is

   -- Create VN_Message
   function Create_VN_Message(input: in String; number: in positive) return VN_Message is
      Message: VN_Message;
   begin
      Ada.Text_IO.Put_Line("Start Create_VN_Message");
      Message.Payload := input;
      Message.Number := number;
      Ada.Text_IO.Put_Line("End Create_VN_Message");
      return Message;
   end;

   function Get_Payload(This: in VN_Message) return String is
   begin
      return This.Payload;
   end Get_Payload;

   function Get_Number(This: in VN_Message) return Positive is
   begin
      return This.Number;
   end Get_Number;

   procedure Set_Number(This: in out VN_Message; Number: in Positive) is
   begin
      This.Number := Number;
   end Set_Number;

   overriding
   procedure Initialize(This: in out VN_Message) is
   begin
     null;
     -- Ada.Text_IO.Put_Line("Initialized message: " & This.Payload);
   end;

   overriding
   procedure Adjust(This: in out VN_Message) is
   begin
     null;
     -- Ada.Text_IO.Put_Line("Adjust message: " & This.Payload);
   end;

   overriding
   procedure Finalize(This: in out VN_Message) is
   begin
     null;
     -- Ada.Text_IO.Put_Line("Finalized message: " & This.Payload);
   end;

end VN_Message;
