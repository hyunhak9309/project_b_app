import 'package:flutter/material.dart';

import '../../component/b_text.dart';


class ChangeRow extends StatelessWidget {
  const ChangeRow({required this.title, required this.rate, Key? key})
      : super(key: key);
  final String title;
  final double? rate;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      BText(title, 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          BText(
            rate != null ? rate!.toStringAsFixed(2) : '-',
            15,
            color: rate != null
                ? rate! >= 0
                ? Colors.red
                : Colors.blue
                : Theme.of(context).indicatorColor,
          ),
          BText(' %',
            15,
            color: Theme.of(context).indicatorColor,
          ),
        ],
      )
    ]);
  }
}
