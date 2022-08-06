import 'package:flutter/material.dart';
import 'package:flutterchatapp/widgets/square_avatar.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28, vertical: 18),
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30))),
                    child: const Text('OK, sure! See you tonight.'),
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                const SquareAvatar(),
              ]),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text('05:55PM', style: TextStyle(color: Colors.grey))
            ],
          )
        ],
      ),
    );
  }
}
