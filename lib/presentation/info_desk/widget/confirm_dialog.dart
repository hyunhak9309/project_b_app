import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_b/presentation/component/b_inkwell.dart';
import '../../component/b_text.dart';
import '../info_desk_controller.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog({required this.deposit, Key? key}) : super(key: key);
  final bool deposit;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(20)),
        width: Get.width * 0.3,
        height: Get.height * 0.2,
        child: Material(
          child: Scaffold(
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BText(
                        (deposit
                                ? InfoDeskController.to.depositController.text
                                : InfoDeskController.to.withdrawController.text) +
                            "KRW".tr,
                        18,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      BText(
                        deposit ? 'confirm_deposit'.tr : 'confirm_withdraw'.tr,
                        16,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BInkWell(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                            decoration: BoxDecoration(
                                color: Theme.of(context).indicatorColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: BText(
                              'cancel'.tr,
                              16,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                          onTap: () {
                            if (deposit) {
                              InfoDeskController.to.depositController.clear();
                            } else {
                              InfoDeskController.to.withdrawController.clear();
                            }
                            Get.back();
                          }),
                      const SizedBox(
                        width: 20,
                      ),
                      BInkWell(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                            decoration: BoxDecoration(
                                color: Theme.of(context).indicatorColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: BText(
                              deposit ? 'deposit'.tr : 'withdraw'.tr,
                              16,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                          onTap: () {
                            if (deposit) {
                              InfoDeskController.to.depositMoney();
                            } else {
                              InfoDeskController.to.withdrawMoney();
                            }
                            Get.back();
                          })
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
