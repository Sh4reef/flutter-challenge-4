import 'package:flutter/material.dart';
import 'package:flutterchatapp/widgets/my_message.dart';
import 'package:flutterchatapp/widgets/square_avatar.dart';
import 'package:flutterchatapp/widgets/user_message.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.5,
          backgroundColor: Colors.blue[50],
          flexibleSpace: Container(
            padding: const EdgeInsets.all(14),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SquareAvatar(),
                  const SizedBox(
                    width: 18,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [Text('Name'), Text('Active 4 min ago')],
                  ),
                  const Spacer(),
                  const Icon(Icons.more_vert)
                ],
              )
            ]),
          )),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (_, i) {
            if (i == 3 || i == 7) return const MyMessage();
            return const UserMessage();
          }),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 10),
        color: Colors.blue[50],
        child: Row(children: [
          const Icon(Icons.attach_file),
          const SizedBox(
            width: 16,
          ),
          const Icon(Icons.sentiment_satisfied_outlined),
          const SizedBox(
            width: 24,
          ),
          const Flexible(
            child: TextField(
              minLines: 1,
              maxLines: 5,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Write a message...',
                  hintStyle: TextStyle(color: Colors.black)),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(5)),
            child: const Icon(
              Icons.near_me_rounded,
              color: Colors.white,
            ),
          )
        ]),
      ),
    );
  }
}
