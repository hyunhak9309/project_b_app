import 'package:flutter/material.dart';

class DecimalText extends StatelessWidget {
  const DecimalText(this.num, this.size,
      {Key? key,
      this.fontWeight,
      this.color,
      this.textAlign,
      this.height,
      this.rounds,
        this.position,
      this.unit})
      : super(key: key);
  final double num;
  final double size;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final double? height;
  final bool? rounds;
  final String? unit;
  final int? position;

  @override
  Widget build(BuildContext context) {
    var text = '';
    var process01 = num.toString();

    if (int.parse(process01.split('.')[1]) == 0) {
      text = process01.split('.')[0];
    } else {
      if (rounds == true) {
        if (position != null) {
          text = num.toStringAsFixed(5);
        } else {
          text = num.toStringAsFixed(2);
        }
      } else {
        text = num.toStringAsFixed(process01.split('.')[1].length);
      }
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: size,
              color: color ?? (num > 0 ? Colors.red : Colors.blue),
              fontWeight: fontWeight ?? FontWeight.normal,
              height: height ?? 1.2),
          textAlign: textAlign ?? TextAlign.center,
        ),
        if (unit != null)
          const SizedBox(
            width: 5,
          ),
        if (unit != null)
          Text(
            unit!,
            style: TextStyle(
                fontSize: size - 2,
                color: color ?? Theme.of(context).indicatorColor,
                fontWeight: fontWeight ?? FontWeight.normal,
                height: height ?? 1.2),
            textAlign: textAlign ?? TextAlign.center,
          )
      ],
    );
  }
}
