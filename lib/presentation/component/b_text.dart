import 'package:flutter/material.dart';

class BText extends StatelessWidget {
  const BText(this.text, this.size,
      {Key? key,
        this.fontWeight,
        this.color,
        this.textAlign,
        this.height,
        this.maxLine})
      : super(key: key);
  final String text;
  final double size;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final double? height;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      style: TextStyle(
          fontSize: size,
          color: color ?? Theme.of(context).indicatorColor,
          fontWeight: fontWeight ?? FontWeight.normal,
          height: height ?? 1.2),
      textAlign: textAlign ?? TextAlign.center,
    );
  }
}