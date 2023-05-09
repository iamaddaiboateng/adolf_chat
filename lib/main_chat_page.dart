import 'package:adolf_chat/custom_segment_controller.dart';
import 'package:adolf_chat/new_message.dart';
import 'package:adolf_chat/single_message_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainChatPage extends StatefulWidget {
  const MainChatPage({Key? key}) : super(key: key);

  @override
  State<MainChatPage> createState() => _MainChatPageState();
}

class _MainChatPageState extends State<MainChatPage> {
  int controlPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Edit",
                    style: TextStyle(color: CupertinoColors.activeBlue),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                      child: CupertinoSearchTextField(
                    placeholder: "Search Messages",
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const NewMessage();
                          },
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.messenger,
                      color: CupertinoColors.activeBlue,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomSegmentController(
                titles: const ["Messages", "Sent", "Trash"],
                onChange: (value) {},
              ),
              const SizedBox(height: 20),
              const Divider(color: Colors.grey),
              const ListTile(
                contentPadding: EdgeInsets.zero,
                horizontalTitleGap: 0,
                leading: Icon(
                  Icons.archive_outlined,
                  color: Colors.grey,
                ),
                title: Text(
                  "Achieved",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Divider(color: Colors.grey),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return SingleMessageItem(
                        isRead: index > 2,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        color: Colors.grey,
                      );
                    },
                    itemCount: 6),
              )
            ],
          ),
        ),
      ),
    );
  }
}
