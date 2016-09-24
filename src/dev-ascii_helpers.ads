with Ada.Streams; use Ada.Streams;

package Dev.ASCII_Helpers is

   procedure Put_ASCII (Item : Character);
   procedure Put_ASCII (Item : String);
   procedure Put_ASCII (Item : Stream_Element_Array);

end Dev.ASCII_Helpers;
