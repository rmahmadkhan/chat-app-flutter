import 'package:chat_app/screens/chat/components/message_stream.dart';
import 'package:chat_app/screens/login/components/my_text_field.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _messageController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Chat')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Expanded(child: MessageStream()),
              Row(
                children: [
                  Expanded(
                    child: MyTextField(
                      hint: 'Type...',
                      controller: _messageController,
                    ),
                  ),
                  const SizedBox(width: 5),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
