import 'package:flutter/material.dart';

class SquareAvatar extends StatelessWidget {
  const SquareAvatar({Key? key, this.online}) : super(key: key);

  final bool? online;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(5)),
        ),
        online ?? false
            ? Positioned(
                top: -(14 / 3),
                right: -(14 / 3),
                child: Container(
                  height: 14,
                  width: 14,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3)),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
