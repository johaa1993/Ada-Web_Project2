with Ada.Characters.Latin_1; use Ada.Characters.Latin_1;
with Ada.Text_IO; use Ada.Text_IO;

package body Dev.ASCII_Helpers is

   procedure Put_ASCII (Item : Character) is
   begin
      case Item is
         when CR => Put ("<CR>");
         when LF => Put ("<LF>");
         when BS => Put ("<BS>");
         when NUL => Put ("<NUL>");
         when EOT => Put ("<EOT>");
         when VT => Put ("<VT>");
         when CAN => Put ("<CAN>");
         when others => Put (Item);
      end case;
   end;

   procedure Put_ASCII (Item : String) is
   begin
      for E of Item loop
         Put_ASCII (E);
      end loop;
   end;

   procedure Put_ASCII (Item : Stream_Element_Array) is
   begin
      for E of Item loop
         Put_ASCII (Character'Val (E));
      end loop;
   end;

end Dev.ASCII_Helpers;
