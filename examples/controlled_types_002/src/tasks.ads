with VN_Message;

package Tasks is
    task Task_One;
    task Task_Two;

    protected type Message_Buffer is
      function Read return VN_Message.VN_Message;
      procedure Write(Message: in VN_Message.VN_Message);
   private
      Current_Message : VN_Message.VN_Message;
   end Message_Buffer;

   Protected_Buffer: Message_Buffer;

end Tasks;
