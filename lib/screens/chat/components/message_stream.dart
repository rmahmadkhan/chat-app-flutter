import 'package:chat_app/screens/chat/components/message_box.dart';
import 'package:flutter/material.dart';

class MessageStream extends StatelessWidget {
  const MessageStream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        MessageBox(text: 'Hello', sender: 'Ahmad', isMe: true),
        MessageBox(
          text: 'Hi',
          sender: 'Ali',
        ),
        MessageBox(text: 'How are you?', sender: 'Ahmad', isMe: true),
      ],
    );
  }
}
