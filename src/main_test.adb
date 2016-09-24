with Ada.Text_IO; use Ada.Text_IO;
with Ada.Text_IO.Text_Streams; use Ada.Text_IO.Text_Streams;
with Ada.Characters.Latin_1; use Ada.Characters.Latin_1;
with Ada.Streams; use Ada.Streams;
with Dev.Streams;
with Dev.ASCII_Helpers;


procedure Main_Test is
   subtype String_Buf is String (1 .. 10);
   Msg : String_Buf := (others => ':');
   Msg2 : Stream_Element_Array (1 .. 10);
   My_Stream : Stream_Access := Stream (Standard_Input);


begin
   Dev.Streams.Read (My_Stream.all, Msg2);
   --String_Buf'Read (My_Stream, Msg);
   Dev.ASCII_Helpers.Put_ASCII (Msg2);
   New_Line;

end;
