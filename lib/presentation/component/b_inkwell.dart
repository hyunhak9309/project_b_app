

import 'package:flutter/material.dart';

class BInkWell extends StatelessWidget {
  const BInkWell({required this.child, required this.onTap, Key? key})
      : super(key: key);
  final Widget child;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: onTap,
      child: child,
    );
  }
}