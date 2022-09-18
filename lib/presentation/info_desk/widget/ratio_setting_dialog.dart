import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_b/presentation/component/b_inkwell.dart';
import '../../component/b_text.dart';
import '../../core_controller.dart';

class RatioSettingDialog extends StatelessWidget {
  const RatioSettingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(20)),
        width: Get.width * 0.3,
        height: Get.height * 0.25,
        child: Material(
          child: Scaffold(
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: BText('ratio_setting'.tr, 18)),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          BText('transaction_ratio'.tr, 16),
                          Container(
                              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Theme.of(context).indicatorColor,
                                    width: 2),
                              ),
                              child: Obx(() => BText(
                                  CoreController.to.transactionRatio.value
                                      .toString(),
                                  16))),
                          BInkWell(
                            onTap: () {
                              if (CoreController.to.transactionRatio.value -
                                      10 >=
                                  0) {
                                CoreController.to.transactionRatio.value -= 10;
                              }
                            },
                            child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Theme.of(context).indicatorColor,
                                ),
                                child: BText(
                                  '-10',
                                  16,
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                )),
                          ),
                          BInkWell(
                            onTap: () {
                              if (CoreController.to.transactionRatio.value -
                                      1 >=
                                  0) {
                                CoreController.to.transactionRatio.value -= 1;
                              }
                            },
                            child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Theme.of(context).indicatorColor,
                                ),
                                child: BText(
                                  '-1',
                                  16,
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                )),
                          ),
                          BInkWell(
                            onTap: () {
                              if (CoreController.to.transactionRatio.value +
                                      1 <=
                                  100) {
                                CoreController.to.transactionRatio.value += 1;
                              }
                            },
                            child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Theme.of(context).indicatorColor,
                                ),
                                child: BText(
                                  '+1',
                                  16,
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                )),
                          ),
                          BInkWell(
                            onTap: () {
                              if (CoreController.to.transactionRatio.value +
                                      10 <=
                                  100) {
                                CoreController.to.transactionRatio.value += 10;
                              }
                            },
                            child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Theme.of(context).indicatorColor,
                                ),
                                child: BText(
                                  '+10',
                                  16,
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
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
                              'confirm'.tr,
                              16,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                          onTap: () {
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
                              'initiate'.tr,
                              16,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                          onTap: () {
                            CoreController.to.transactionRatio.value = 5;
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
