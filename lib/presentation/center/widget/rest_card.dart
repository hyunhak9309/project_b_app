import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../component/b_text.dart';
import '../../component/drawBorder.dart';

class RestCard extends StatelessWidget {
  const RestCard({required this.position, Key? key}) : super(key: key);
  final int position;
  @override
  Widget build(BuildContext context) {
    return DrawBorder(child: Center(
      child: BText('${position+1}번 ${'in_rest'.tr}', 16),
    ));
  }
}
