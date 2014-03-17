with Ada.Real_Time;
with Ada.Text_IO;
with VN_Message;

package body Tasks is

    -- Protected variable
    protected body Message_Buffer is

      function Read return VN_Message.VN_Message is
      begin
         return Current_Message;
      end Read;

      procedure Write(Message: VN_Message.VN_Message) is
      begin
         Current_Message := Message;
      end Write;

    end Message_Buffer;

    -- Task One
    task body Task_One is
        use Ada.Real_Time;
        Msg: VN_Message.VN_Message;
        i: Integer := 1;

        Cycle_Time : Positive := 500000;
        Next_Period : Ada.Real_Time.Time;
        Period : constant Ada.Real_Time.Time_Span :=
                            Ada.Real_Time.Microseconds(Cycle_Time);
    begin
        Msg := VN_Message.Create_VN_Message("Local_Hello", 10);
        Protected_Buffer.Write(Msg);

        Ada.Text_IO.Put_Line("Task_One - Start");
        Next_Period := Ada.Real_Time.Clock + Period;
        loop
            delay until Next_Period;

            Ada.Text_IO.Put_Line("Task_One - Msg Number "
                                       & Positive'Image(Msg.Get_Number)
                                       & " sent.");

            Msg.Set_Number(Msg.Get_Number + 1);
            Protected_Buffer.Write(Msg);

            Ada.Text_IO.Put_Line("Task_One - " & Integer'Image(i));

            Next_Period := Next_Period + Period;
            i := i + 1;
            exit when i = 6;
        end loop;
        Ada.Text_IO.Put_Line("Task_One - End");
    end Task_One;

    -- Task Two
    task body Task_Two is
        use Ada.Real_Time;
        Msg: VN_Message.VN_Message;
        i: Integer := 1;

        Cycle_Time : Positive := 500000;
        Next_Period : Ada.Real_Time.Time;
        Period : constant Ada.Real_Time.Time_Span :=
                            Ada.Real_Time.Microseconds(Cycle_Time);
    begin
        Ada.Text_IO.Put_Line("Task_Two - Start");
        Next_Period := Ada.Real_Time.Clock + Period;
        loop
            delay until Next_Period;

            Msg := Protected_Buffer.Read;
            Ada.Text_IO.Put_Line("Task_Two - Msg Number "
                                       & Positive'Image(Msg.Get_Number)
                                       & " received.");


            Ada.Text_IO.Put_Line("Task_Two - " & Integer'Image(i));
            Next_Period := Next_Period + Period;
            i := i + 1;
            exit when i = 6;
        end loop;
        Ada.Text_IO.Put_Line("Task_Two - End");
    end Task_Two;

end Tasks;
