import 'package:chat_app/screens/chat/chat_screen.dart';
import 'package:chat_app/screens/inbox/components/chat_tile.dart';
import 'package:chat_app/screens/login/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inbox'),
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            icon: const Icon(Icons.power_settings_new),
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: 3,
        itemBuilder: (context, index) => ChatTile(
          'Name',
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatScreen()),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        padding: const EdgeInsets.all(8.0),
      ),
    );
  }
}
