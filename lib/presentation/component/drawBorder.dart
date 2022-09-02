import 'package:flutter/material.dart';

class DrawBorder extends StatelessWidget {
  const DrawBorder({required this.child, Key? key}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          border:
          Border.all(color: Theme
              .of(context)
              .indicatorColor, width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
