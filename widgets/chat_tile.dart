import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class ChatTile extends StatelessWidget {
  final ChatModel chat;
  final VoidCallback onTap;

  const ChatTile({super.key, required this.chat, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        radius: 28,
        backgroundColor: Colors.grey[300],
        child: Text(chat.name[0], style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      title: Text(chat.name, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(chat.lastMessage, maxLines: 1, overflow: TextOverflow.ellipsis),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(chat.time, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
          if (chat.unreadCount > 0) ...[
            const SizedBox(height: 4),
            CircleAvatar(
              radius: 10,
              backgroundColor: const Color(0xFF25D366),
              child: Text('${chat.unreadCount}',
                  style: const TextStyle(color: Colors.white, fontSize: 11)),
            ),
          ]
        ],
      ),
    );
  }
}