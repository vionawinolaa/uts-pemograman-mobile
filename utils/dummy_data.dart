import '../models/chat_model.dart';
import '../models/message_model.dart';

final List<ChatModel> dummyChats = [
  ChatModel(name: 'Andi', lastMessage: 'Halo, apa kabar?', time: '09.30', unreadCount: 2, isOnline: true),
  ChatModel(name: 'Budi', lastMessage: 'Oke siap!', time: '08.20'),
  ChatModel(name: 'Citra', lastMessage: 'Nanti kita pergi ya', time: 'Kemarin'),
  ChatModel(name: 'Dewi', lastMessage: 'Makasih banyak :)', time: 'Kemarin'),
  ChatModel(name: 'Rizky', lastMessage: '📷 Foto', time: 'Kemarin'),
  ChatModel(name: 'Keluarga', lastMessage: 'Ibu: Jangan lupa makan', time: 'Kemarin'),
];

final List<MessageModel> dummyMessages = [
  MessageModel(text: 'Halo!', time: '09.20', isSentByMe: false),
  MessageModel(text: 'Hai, apa kabar?', time: '09.21', isSentByMe: true),
  MessageModel(text: 'Baik, kamu gimana?', time: '09.22', isSentByMe: false),
  MessageModel(text: 'Baik juga 😊', time: '09.23', isSentByMe: true),
  MessageModel(text: 'Oke siap!', time: '09.24', isSentByMe: false),
];