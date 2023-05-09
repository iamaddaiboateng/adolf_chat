import 'package:adolf_chat/single_new_message_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewMessage extends StatelessWidget {
  const NewMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    "TO",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CupertinoSearchTextField(),
                  )
                ],
              ),
              Expanded(
                  child: ListView.separated(
                      padding: const EdgeInsets.only(top: 20),
                      itemBuilder: (context, index) {
                        return const SingleNewMessageItem();
                      },
                      separatorBuilder: (context, index) {
                        return const Divider(
                          color: Colors.grey,
                        );
                      },
                      itemCount: 6))
            ],
          ),
        ),
      ),
    );
  }
}
