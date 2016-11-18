with Ada.Text_IO;

procedure Main_Server2 is

   task My_Task is
   end;

   task body My_Task is
      use Ada.Text_IO;
   begin
      Put_Line ("Hello from My_Task");
   end;


begin
   null;
end;
