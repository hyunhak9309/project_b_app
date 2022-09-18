import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';
import 'package:project_b/presentation/component/b_inkwell.dart';
import 'package:project_b/presentation/component/drawBorder.dart';
import 'package:project_b/presentation/component/toast_widget.dart';
import 'package:project_b/presentation/component/b_button.dart';
import 'package:project_b/presentation/info_desk/widget/inc_dec_row.dart';
import 'package:project_b/presentation/info_desk/widget/ratio_setting_dialog.dart';
import 'package:project_b/presentation/info_desk/widget/wallet_row.dart';
import '../component/b_text.dart';
import '../core_controller.dart';
import 'widget/confirm_dialog.dart';
import 'widget/enter_money.dart';
import 'info_desk_controller.dart';

class InfoDesk extends GetView<InfoDeskController> {
  const InfoDesk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      DrawBorder(
        child: Center(
          child: Obx(() => BText(
                controller.currentTime.value,
                16,
                height: 1.5,
              )),
        ),
      ),
      DrawBorder(
          child: Center(
        child: Obx(
            () => BText('runningTime'.tr + controller.runningTime.value, 16)),
      )),
      DrawBorder(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: BText(
            'walletStatus'.tr,
            18,
          )),
          const SizedBox(
            height: 5,
          ),
          Container(
            color: Theme.of(context).indicatorColor,
            height: 1,
            width: double.infinity,
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(() => WalletRow(
              title: 'total'.tr, value: controller.wallet.value.totalAmount)),
          const SizedBox(
            height: 5,
          ),
          Obx(() => WalletRow(
              title: 'balance'.tr,
              value: controller.wallet.value.amountAvailableToOrder)),
          const SizedBox(
            height: 5,
          ),
          Obx(() => WalletRow(
              title: 'ordering'.tr, value: controller.wallet.value.tiedAmount)),
        ],
      )),
      DrawBorder(
          child: Column(
        children: [
          Center(
              child: BText(
            'inc_dec_baord'.tr,
            18,
          )),
          const SizedBox(
            height: 5,
          ),
          Container(
            color: Theme.of(context).indicatorColor,
            height: 1,
            width: double.infinity,
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(() => ChangeRow(
                title: 'vs1m'.tr,
                rate: controller.asset.value.totalBeforeMinute,
              )),
          const SizedBox(
            height: 5,
          ),
          Obx(() => ChangeRow(
                title: 'vs1h'.tr,
                rate: controller.asset.value.totalBeforeHour,
              )),
          const SizedBox(
            height: 5,
          ),
          Obx(() => ChangeRow(
                title: 'vs1d'.tr,
                rate: controller.asset.value.totalBeforeDay,
              )),
          const SizedBox(
            height: 5,
          ),
          Obx(() => ChangeRow(
                title: 'vs1w'.tr,
                rate: controller.asset.value.totalBeforeWeek,
              )),
          const SizedBox(
            height: 5,
          ),
          Obx(() => ChangeRow(
                title: 'vs1M'.tr,
                rate: controller.asset.value.totalBeforeMonth,
              )),
          const SizedBox(
            height: 5,
          ),
          Obx(() => ChangeRow(
                title: 'vs1y'.tr,
                rate: controller.asset.value.totalBeforeYear,
              )),
          const SizedBox(
            height: 5,
          ),
        ],
      )),
      DrawBorder(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          EnterMoney(controller: controller.depositController),
          const SizedBox(
            height: 5,
          ),
          BInkWell(
            onTap: () {
              if (controller.depositController.text.isNotEmpty) {
                if (int.parse(controller.depositController.text) >= 5000) {
                  Get.dialog(const ConfirmDialog(deposit: true));
                } else {
                  showToastWidget(ToastWidget(text: 'hint1'.tr));
                  controller.depositController.clear();
                }
              }
            },
            child: BButton(
                child: Container(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Center(
                        child: BText(
                      'deposit'.tr,
                      14,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    )))),
          )
        ],
      )),
      DrawBorder(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 5,
          ),
          Obx(() => WalletRow(
              title: 'withdraw_amount'.tr,
              value: controller.canWithdrawAmount.value)),
          const SizedBox(
            height: 5,
          ),
          Container(
            color: Theme.of(context).indicatorColor,
            height: 1,
            width: double.infinity,
          ),
          const SizedBox(
            height: 5,
          ),
          EnterMoney(controller: controller.withdrawController),
          const SizedBox(
            height: 5,
          ),
          BInkWell(
            onTap: () {
              if (controller.withdrawController.text.isNotEmpty) {
                if (int.parse(controller.withdrawController.text) >= 5000) {
                  if (double.parse(controller.withdrawController.text) <
                      controller.canWithdrawAmount.value) {
                    Get.dialog(const ConfirmDialog(deposit: false));
                  } else {
                    showToastWidget(ToastWidget(text: 'can_not_withdraw'.tr));
                    controller.withdrawController.clear();
                  }
                } else {
                  showToastWidget(ToastWidget(text: 'hint1'.tr));
                  controller.withdrawController.clear();
                }
              }
            },
            child: BButton(
                child: Container(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Center(
                        child: BText(
                      'withdraw'.tr,
                      14,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    )))),
          )
        ],
      )),
      BButton(
        child: BInkWell(
          onTap: () {
            Get.dialog(const RatioSettingDialog());
          },
          child: Center(
            child: BText(
              'ratio_setting'.tr,
              14,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ),
      ),
      BButton(
        child: BInkWell(
          onTap: () {
            CoreController.to.autoTransactionStatus.toggle();
          },
          child: Center(
            child: Obx(
              () => BText(
                CoreController.to.autoTransactionStatus.value
                    ? 'auto_start_pause'.tr
                    : 'auto_start'.tr,
                14,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ),
        ),
      ),
      BButton(
        child: BInkWell(
          onTap: () {
            CoreController.to.allTransactionStatus.toggle();
          },
          child: Center(
            child: Obx(
              () => BText(
                CoreController.to.allTransactionStatus.value
                    ? 'total_pause'.tr
                    : 'total_restart'.tr,
                14,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ),
        ),
      ),
      Expanded(child: Container()),
      BButton(
        child: BInkWell(
          onTap: () {
            Get.dialog(Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                width: 400,
                height: 120,
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    border: Border.all(
                        color: Theme.of(context).indicatorColor, width: 2),
                    borderRadius: BorderRadius.circular(20)),
                child: Material(
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BText('exitApp'.tr, 18),
                      const SizedBox(
                        height: 10,
                      ),
                      BText(
                        'exitAppPrecautions'.tr,
                        14,
                        color: Colors.yellow,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          BInkWell(
                              onTap: () => Get.back(),
                              child: BText('cancel'.tr, 18)),
                          const SizedBox(
                            width: 40,
                          ),
                          BInkWell(
                              onTap: () => SystemNavigator.pop(),
                              child: BText(
                                'exit'.tr,
                                18,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ));
          },
          child: Center(
            child: BText(
              'exit'.tr,
              14,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ),
      )
    ]);
  }
}
