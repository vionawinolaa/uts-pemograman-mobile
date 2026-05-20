import 'package:flutter/material.dart';
import '../utils/dummy_data.dart';
import '../widgets/message_bubble.dart';

class ConversationScreen extends StatelessWidget {
  final String chatName;

  const ConversationScreen({super.key, required this.chatName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECE5DD),
      appBar: AppBar(
        backgroundColor: const Color(0xFF075E54),
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.grey[300],
              child: Text(chatName[0], style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black54)),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(chatName, style: const TextStyle(color: Colors.white, fontSize: 16)),
                const Text('online', style: TextStyle(color: Colors.white70, fontSize: 12)),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(icon: const Icon(Icons.videocam, color: Colors.white), onPressed: () {}),
          IconButton(icon: const Icon(Icons.call, color: Colors.white), onPressed: () {}),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onSelected: (_) {},
            itemBuilder: (_) => [
              const PopupMenuItem(value: 'info', child: Text('Info kontak')),
              const PopupMenuItem(value: 'search', child: Text('Cari')),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(color: const Color(0xFFDDD7CF), borderRadius: BorderRadius.circular(8)),
              child: const Text('Hari ini', style: TextStyle(fontSize: 13, color: Colors.black54)),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: dummyMessages.length,
              itemBuilder: (_, i) => MessageBubble(message: dummyMessages[i]),
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Row(
              children: [
                IconButton(icon: const Icon(Icons.emoji_emotions_outlined, color: Colors.grey), onPressed: () {}),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Ketik pesan',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.grey[100],
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    ),
                  ),
                ),
                IconButton(icon: const Icon(Icons.attach_file, color: Colors.grey), onPressed: () {}),
                IconButton(icon: const Icon(Icons.camera_alt, color: Colors.grey), onPressed: () {}),
                CircleAvatar(
                  backgroundColor: const Color(0xFF25D366),
                  child: IconButton(icon: const Icon(Icons.mic, color: Colors.white, size: 20), onPressed: () {}),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}