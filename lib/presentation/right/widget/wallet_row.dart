import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../component/b_text.dart';

class WalletRow extends StatelessWidget {
  const WalletRow({required this.title, required this.value, Key? key})
      : super(key: key);
  final String title;
  final double value;

  @override
  Widget build(BuildContext context) {
    var result = "";
    var process01 = value.toInt();

    if (process01 >= 1000 && process01 < 10000) {
      result =
          '${process01.toString().substring(0, 1)},${process01.toString().substring(1, 4)}';
    } else if (process01 >= 10000 && process01 < 10000000) {
      result =
          '${process01.toString().substring(0, process01.toString().length - 4)}만 ${process01.toString().substring(process01.toString().length - 4, process01.toString().length - 3)},${process01.toString().substring(process01.toString().length - 3, process01.toString().length)}';
    } else if (process01 >= 10000000 && process01 < 100000000) {
      result =
          '${process01.toString().substring(0, 1)},${process01.toString().substring(1, process01.toString().length - 4)}만 ${process01.toString().substring(process01.toString().length - 4, process01.toString().length - 3)},${process01.toString().substring(process01.toString().length - 3, process01.toString().length)}';
    } else if (process01 >= 100000000) {
      var length = process01.toString().length;
      result =
          '${process01.toString().substring(0, length - 8)}억 ${process01.toString().substring(length - 8, length - 7)},${process01.toString().substring(length - 7, length - 4)}만';
    } else {
      result = '$process01';
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BText(title, 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            BText(result, 16),
            const SizedBox(
              width: 2,
            ),
            BText('KRW'.tr, 12)
          ],
        ),
      ],
    );
  }
}
