import 'package:flutter/material.dart';
import 'package:flutterchatapp/widgets/square_avatar.dart';

class UserMessage extends StatelessWidget {
  const UserMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
      child: Column(
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
            const SquareAvatar(),
            const SizedBox(
              width: 18,
            ),
            Flexible(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: const Text(
                    'Would you like to go the Meher\'s party with me?',
                    style: TextStyle(color: Colors.white)),
              ),
            )
          ]),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text('05:55PM', style: TextStyle(color: Colors.grey))
            ],
          )
        ],
      ),
    );
  }
}
