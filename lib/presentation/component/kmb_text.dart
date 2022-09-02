import 'package:flutter/material.dart';

class KMBText extends StatelessWidget {
  const KMBText(this.num, this.size,
      {Key? key,
        this.fontWeight,
        this.color,
        this.textAlign,
        this.height,
        this.maxLine})
      : super(key: key);
  final double num;
  final double size;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final double? height;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    var text = '';
    if(num < 1000){
      text = num.toStringAsFixed(2);
    }else if(num >= 1000 && num < 1000000){
      text = '${(num*0.001).toStringAsFixed(3)} k';
    }else if(num >=1000000 && num < 1000000000){
      text = '${(num*0.000001).toStringAsFixed(3)} m';
    }else{
      text = '${(num*0.000000001).toStringAsFixed(3)} b';
    }

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