import 'package:flutter/material.dart';
import '../models/message_model.dart';

class MessageBubble extends StatelessWidget {
  final MessageModel message;

  const MessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: message.isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.72),
        decoration: BoxDecoration(
          color: message.isSentByMe ? const Color(0xFFDCF8C6) : Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(12),
            topRight: const Radius.circular(12),
            bottomLeft: Radius.circular(message.isSentByMe ? 12 : 0),
            bottomRight: Radius.circular(message.isSentByMe ? 0 : 12),
          ),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2, offset: const Offset(0, 1))],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Flexible(child: Text(message.text, style: const TextStyle(fontSize: 15))),
            const SizedBox(width: 8),
            Text(message.time, style: TextStyle(fontSize: 11, color: Colors.grey[600])),
            if (message.isSentByMe) ...[
              const SizedBox(width: 2),
              const Icon(Icons.done_all, size: 14, color: Color(0xFF4FC3F7)),
            ]
          ],
        ),
      ),
    );
  }
}