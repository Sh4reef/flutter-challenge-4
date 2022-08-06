import 'package:flutter/material.dart';
import 'package:flutterchatapp/widgets/square_avatar.dart';

class ConversationTile extends StatelessWidget {
  const ConversationTile({Key? key, this.onTap, this.online}) : super(key: key);

  final void Function()? onTap;
  final bool? online;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 98,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SquareAvatar(
              online: online,
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 215,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Alensa Langwealt'),
                  Text('Sending order #238907 Alansca new water inc.',
                      style: TextStyle(color: Colors.grey))
                ],
              ),
            ),
            const Spacer(),
            const Text('9 min')
          ],
        ),
      ),
    );
  }
}
