import 'package:flutter/material.dart';
import '../widgets/chat_tile.dart';
import 'chat_room_page.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff111B21),

      appBar: AppBar(
        backgroundColor: const Color(0xff202C33),
        title: const Text("WhatsApp"),
        actions: const [
          Icon(Icons.camera_alt),
          SizedBox(width: 15),
          Icon(Icons.search),
          SizedBox(width: 15),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),

      body: ListView(
        children: [
          ChatTile(
            name: "Budi",
            message: "Halo, apa kabar?",
            time: "12:30",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ChatRoomPage(),
                ),
              );
            },
          ),

          ChatTile(
            name: "Sari",
            message: "Oke siap!",
            time: "11:00",
            onTap: () {},
          ),

          ChatTile(
            name: "Kelompok UI/UX",
            message: "File sudah dikirim",
            time: "Kemarin",
            onTap: () {},
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
    );
  }
}