import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'b_text.dart';

class ToastWidget extends StatelessWidget {
  const ToastWidget({required this.text, Key? key}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          child: BText(text, 16, color: Colors.black,)),
    );
  }
}
