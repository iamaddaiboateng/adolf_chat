import 'package:flutter/material.dart';

class SenderMessageItem extends StatelessWidget {
  const SenderMessageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Column(
          children: [
            const Text(
              "You",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "12:00",
              style: TextStyle(color: Colors.grey.shade400),
            )
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
                "There is some I need to say. Hello Please say something"),
          ),
        ),
      ],
    );
  }
}

class ReceiverMessageItem extends StatelessWidget {
  const ReceiverMessageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text("There is some I need to say"),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          "12:00",
          style: TextStyle(color: Colors.grey.shade400),
        ),
      ],
    );
  }
}
