package VN_Message.Local_Hello is

   type VN_Message_Local_Hello is new VN_Message with private;

private

   type VN_Message_Local_Hello is new VN_Message with
      record
        CUUID: VN_CUUID;
        Component_Type: VN_Component_Type;
      end record;

end VN_Message.Local_Hello;
