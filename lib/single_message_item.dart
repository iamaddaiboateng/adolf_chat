import 'package:adolf_chat/messages_page.dart';
import 'package:flutter/material.dart';

class SingleMessageItem extends StatelessWidget {
  final bool isRead;
  const SingleMessageItem({Key? key, this.isRead = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const MessagesPage();
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            Visibility(
              visible: isRead,
              child: const CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 5,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250",
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Rossy",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("You are the competition winner")
                ],
              ),
            ),
            const Text(
              "12:00",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
