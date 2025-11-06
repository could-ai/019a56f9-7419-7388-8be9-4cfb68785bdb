import 'package:flutter/material.dart';
import '../models/chat_model.dart';
import '../widgets/chat_item.dart';

class ChatsTab extends StatelessWidget {
  const ChatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChatModel> chats = [
      ChatModel(
        name: 'John Doe',
        message: 'Hey! How are you doing?',
        time: '12:30 PM',
        unreadCount: 2,
        avatarColor: Colors.blue,
      ),
      ChatModel(
        name: 'Sarah Smith',
        message: 'See you tomorrow! 👋',
        time: '11:15 AM',
        unreadCount: 0,
        avatarColor: Colors.purple,
      ),
      ChatModel(
        name: 'Work Team',
        message: 'Alice: Meeting at 3 PM',
        time: '10:45 AM',
        unreadCount: 5,
        avatarColor: Colors.teal,
        isGroup: true,
      ),
      ChatModel(
        name: 'Mom',
        message: 'Don\'t forget to call grandma',
        time: 'Yesterday',
        unreadCount: 0,
        avatarColor: Colors.pink,
      ),
      ChatModel(
        name: 'Alex Johnson',
        message: 'That sounds great!',
        time: 'Yesterday',
        unreadCount: 0,
        avatarColor: Colors.orange,
      ),
      ChatModel(
        name: 'Friends Group',
        message: 'Mike: Who\'s up for dinner?',
        time: 'Friday',
        unreadCount: 12,
        avatarColor: Colors.green,
        isGroup: true,
      ),
      ChatModel(
        name: 'Emily Brown',
        message: 'Thanks for your help!',
        time: 'Thursday',
        unreadCount: 0,
        avatarColor: Colors.red,
      ),
      ChatModel(
        name: 'Dad',
        message: 'Good morning',
        time: 'Wednesday',
        unreadCount: 0,
        avatarColor: Colors.indigo,
      ),
    ];

    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return ChatItem(chat: chats[index]);
      },
    );
  }
}
