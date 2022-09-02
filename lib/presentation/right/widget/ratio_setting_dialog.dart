import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';
import 'package:project_b/presentation/center/home_controller.dart';
import 'package:project_b/presentation/component/b_inkwell.dart';
import 'package:project_b/presentation/component/toast_widget.dart';
import '../../../main.dart';
import '../../component/b_text.dart';

class RatioSettingDialog extends StatelessWidget {
  const RatioSettingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> process01 = List.from(HomeController.to.transactionRatio);
    RxList<int> settingRatio = process01.obs;

    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(20)),
        width: Get.width * 0.3,
        height: Get.height * 0.6,
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
                          BText('workshop_no_1'.tr, 16),
                          Container(
                              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Theme.of(context).indicatorColor,
                                    width: 2),
                              ),
                              child: Obx(
                                  () => BText(settingRatio[0].toString(), 16))),
                          BInkWell(
                            onTap: () {
                              if (settingRatio[0] - 10 >= 0) {
                                settingRatio[0] -= 10;
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
                              if (settingRatio[0] - 1 >= 0) {
                                settingRatio[0] -= 1;
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
                              if (settingRatio[0] + 1 <= 100) {
                                settingRatio[0] += 1;
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
                              if (settingRatio[0] + 10 <= 100) {
                                settingRatio[0] += 10;
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
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          BText('workshop_no_2'.tr, 16),
                          Container(
                              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Theme.of(context).indicatorColor,
                                    width: 2),
                              ),
                              child: Obx(
                                  () => BText(settingRatio[1].toString(), 16))),
                          BInkWell(
                            onTap: () {
                              if (settingRatio[1] - 10 >= 0) {
                                settingRatio[1] -= 10;
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
                              if (settingRatio[1] - 1 >= 0) {
                                settingRatio[1] -= 1;
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
                              if (settingRatio[1] + 1 <= 100) {
                                settingRatio[1] += 1;
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
                              if (settingRatio[1] + 10 <= 100) {
                                settingRatio[1] += 10;
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
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          BText('workshop_no_3'.tr, 16),
                          Container(
                              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Theme.of(context).indicatorColor,
                                    width: 2),
                              ),
                              child: Obx(
                                  () => BText(settingRatio[2].toString(), 16))),
                          BInkWell(
                            onTap: () {
                              if (settingRatio[2] - 10 >= 0) {
                                settingRatio[2] -= 10;
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
                              if (settingRatio[2] - 1 >= 0) {
                                settingRatio[2] -= 1;
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
                              if (settingRatio[2] + 1 <= 100) {
                                settingRatio[2] += 1;
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
                              if (settingRatio[2] + 10 <= 100) {
                                settingRatio[2] += 10;
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
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          BText('workshop_no_4'.tr, 16),
                          Container(
                              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Theme.of(context).indicatorColor,
                                    width: 2),
                              ),
                              child: Obx(
                                  () => BText(settingRatio[3].toString(), 16))),
                          BInkWell(
                            onTap: () {
                              if (settingRatio[3] - 10 >= 0) {
                                settingRatio[3] -= 10;
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
                              if (settingRatio[3] - 1 >= 0) {
                                settingRatio[3] -= 1;
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
                              if (settingRatio[3] + 1 <= 100) {
                                settingRatio[3] += 1;
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
                              if (settingRatio[3] + 10 <= 100) {
                                settingRatio[3] += 10;
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
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          BText('workshop_no_5'.tr, 16),
                          Container(
                              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Theme.of(context).indicatorColor,
                                    width: 2),
                              ),
                              child: Obx(
                                      () => BText(settingRatio[4].toString(), 16))),
                          BInkWell(
                            onTap: () {
                              if (settingRatio[4] - 10 >= 0) {
                                settingRatio[4] -= 10;
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
                              if (settingRatio[4] - 1 >= 0) {
                                settingRatio[4] -= 1;
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
                              if (settingRatio[4] + 1 <= 100) {
                                settingRatio[4] += 1;
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
                              if (settingRatio[4] + 10 <= 100) {
                                settingRatio[4] += 10;
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
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(
                            width: 36,
                          ),
                          BText('total_ratio'.tr, 16),
                          Container(
                              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Theme.of(context).indicatorColor,
                                    width: 2),
                              ),
                              child: Obx(() => BText(
                                  (settingRatio[0] +
                                          settingRatio[1] +
                                          settingRatio[2] +
                                          settingRatio[3] +
                                          settingRatio[4])
                                      .toString(),
                                  16))),
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
                              'cancel'.tr,
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
                              'setting'.tr,
                              16,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                          onTap: () {
                            var totalValue = 0;
                            for (var element in settingRatio) {
                              totalValue += element;
                            }
                            if (totalValue <=
                                100) {
                              HomeController.to.transactionRatio.value =
                                  settingRatio;
                              Get.back();
                            } else {
                              showToastWidget(
                                  ToastWidget(text: 'ratio_error'.tr));
                            }
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
