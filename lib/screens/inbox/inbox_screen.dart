import 'package:chat_app/screens/inbox/components/chat_tile.dart';
import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inbox')),
      body: ListView.separated(
        itemCount: 3,
        itemBuilder: (context, index) => ChatTile('Name', onTap: () {}),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        padding: const EdgeInsets.all(8.0),
      ),
    );
  }
}
