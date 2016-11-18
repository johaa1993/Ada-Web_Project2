with GNAT.Sockets; use GNAT.Sockets;
with Ada.Text_IO; use Ada.Text_IO;
with Dev.Streams; use Dev.Streams;

procedure Main_Server1 is
   Server_Socket  : Socket_Type;
   Server_Address : Sock_Addr_Type := (Family_Inet, Inet_Addr ("127.0.0.1"), 8080);

   Client_Socket  : Socket_Type;
   Client_Channel : Stream_Access;
   Client_Address : Sock_Addr_Type;
   subtype Simple_String_Buffer is String (1 .. 10);
   Client_Message_Receive_Buffer : Simple_String_Buffer := (others => ASCII.FF);

begin
   GNAT.Sockets.Initialize;
   Create_Socket (Server_Socket);
   Set_Socket_Option (Server_Socket, Socket_Level, (Reuse_Address, True));
   Bind_Socket (Server_Socket, Server_Address);
   Listen_Socket (Server_Socket);

   Accept_Socket (Server_Socket, Client_Socket, Client_Address);
   Put_Line ("Accept_Socket.");

   Client_Channel := Stream (Client_Socket);
   String'Write (Client_Channel, "Server started.");
   Simple_String_Buffer'Read (Client_Channel, Client_Message_Receive_Buffer);


   Close_Socket (Client_Socket);
   Close_Socket (Server_Socket);

   Put_Line ("Server exit.");
   GNAT.Sockets.Finalize;
end Main_Server1;
