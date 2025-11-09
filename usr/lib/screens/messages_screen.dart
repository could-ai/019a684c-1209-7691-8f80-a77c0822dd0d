import 'package:flutter/material.dart';
import '../widgets/message_preview_card.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          return const MessagePreviewCard(
            name: 'Rajesh Kumar',
            lastMessage: 'Hi, I can deliver your project by tomorrow',
            time: '2h ago',
            unreadCount: 2,
            avatarText: 'RK',
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF1DBF73),
        child: const Icon(Icons.edit, color: Colors.white),
      ),
    );
  }
}