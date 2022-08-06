import 'package:flutter/material.dart';
import 'package:flutterchatapp/screens/conversation_screen.dart';
import 'package:flutterchatapp/widgets/conversation_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.5,
          backgroundColor: Colors.blue[50],
          flexibleSpace: Container(
            padding: const EdgeInsets.only(right: 14, left: 2),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 32 / 2),
                          prefixIcon: const Icon(Icons.search),
                          prefixIconColor: Colors.grey[400],
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: const TextStyle(color: Colors.black)),
                    ),
                  ),
                  const Icon(
                    Icons.add_box_rounded,
                    color: Colors.blue,
                    size: 32,
                  ),
                ],
              )
            ]),
          )),
      body: ListView.separated(
          itemBuilder: (_, index) {
            return ConversationTile(
                online: index == 1 || index == 3,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const ConversationScreen())));
                });
          },
          separatorBuilder: (_, i) {
            return const Divider(
              height: 1,
              color: Colors.grey,
            );
          },
          itemCount: 10),
    );
  }
}
