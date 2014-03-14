with VN_Message.Local_Hello;

package body VN_Message is

   -- Get_Version
   function Get_Version(Message: VN_Message) return VN_Version is
   begin
      return Message.Header.Version;
   end Get_Version;

   -- Set_Version
   procedure Set_Version(Message: out VN_Message; Version: VN_Version ) is
   begin
      Message.Header.Version := Version;
   end Set_Version;

   function Get_Checksum(Message: in VN_Message) return VN_Checksum is
   begin
      return Message.Footer.Checksum;
   end Get_Checksum;

   -------------
   -- Private --
   -------------
   overriding
   procedure Finalize(Object: in out VN_Message) is
   begin
      null;
   end Finalize;

--
--   function Serialize_VN_Message(Message: VN_Message'Class;
--                                 Output_Format: Serializiation_Type)
--                                 return Natural is
--   begin
--      return 0; -- TODO: Return a proper serialization of this.
--   end Serialize_VN_Message;
--
--   function Deserialize_VN_Message(Data: in Natural) -- TODO: How is Data represented? String?
--                              return Natural is
--                              -- return VN_Message'Class is
--   begin
--      -- TODO: Process the Data properly.
--      return Data;
--   end Deserialize_VN_Message;

end VN_Message;
