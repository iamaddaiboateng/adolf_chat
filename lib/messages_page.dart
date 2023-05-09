import 'package:adolf_chat/sender_message_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: const [
                  Text(
                    "Today",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SenderMessageItem(),
                  SizedBox(height: 20),
                  ReceiverMessageItem(),
                  SizedBox(height: 20),
                  SenderMessageItem(),
                  SizedBox(height: 20),
                  ReceiverMessageItem(),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: CupertinoTextField(
                      controller: messageController,
                      padding: const EdgeInsets.all(10),
                      onChanged: (value) {
                        setState(() {});
                      },
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: messageController.text.isEmpty
                        ? Colors.grey.shade400
                        : Colors.blue,
                    foregroundColor: Colors.white,
                    child: const Icon(
                      Icons.arrow_upward,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
