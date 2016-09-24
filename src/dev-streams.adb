with Ada.Text_IO; use Ada.Text_IO;

package body Dev.Streams is

   procedure Read (Stream : in out Root_Stream_Type'Class; Buffer : in out Stream_Element_Array) is
      Last : Stream_Element_Offset := Buffer'First - 1;
   begin
      loop
         pragma Assert (Last < Buffer'Last);
         Read (Stream, Buffer (Last + 1 .. Buffer'Last), Last);
         pragma Assert (Last >= Buffer'First);
         --Put_Line ("Last " & Last'Img);
         exit when Last = Buffer'Last;
      end loop;
   end;

end Dev.Streams;
