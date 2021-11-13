import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({
    Key? key,
    required this.onPressed,
    required this.iconData,
    this.color,
  }) : super(key: key);

  final void Function() onPressed;
  final IconData iconData;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: color,
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(30)),
      child: Icon(
        iconData,
        size: 35,
      ),
      onPressed: onPressed,
    );
  }
}
