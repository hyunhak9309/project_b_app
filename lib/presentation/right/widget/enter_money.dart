import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnterMoney extends StatelessWidget {
  const EnterMoney({required this.controller, Key? key}) : super(key: key);
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 40,
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: TextField(
        cursorColor: Theme.of(context).indicatorColor,
        maxLines: 1,
        controller: controller,
        keyboardType: TextInputType.number,
        cursorWidth: 2,
        style: TextStyle(
            fontSize: 16, color: Theme.of(context).indicatorColor),
        decoration: InputDecoration(
          counterText: "",
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).indicatorColor,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide:
            BorderSide(color: Theme.of(context).indicatorColor),
          ),
          hintText: 'hint1'.tr,
          hintStyle:
          TextStyle(fontSize: 14, color: Theme.of(context).hintColor),
          contentPadding: const EdgeInsets.only(
              left: 10.0, bottom: 5.0, top: 0.0, right: 5),
        ),
      ),
    );
  }
}
