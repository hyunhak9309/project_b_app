import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_b/presentation/component/b_inkwell.dart';
import 'package:project_b/presentation/market/market_controller.dart';
import 'package:project_b/presentation/market/up_bit_list_dialog.dart';
import 'dart:math' as math;
import '../component/b_text.dart';
import '../component/drawBorder.dart';

class UpBitChart extends StatelessWidget {
  const UpBitChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawBorder(
        child: Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  BText('upBitInfo'.tr, 16),
                  BText('1s'.tr, 12),
                  const SizedBox(
                    width: 5,
                  ),
                  BText('-'.tr, 14),
                  const SizedBox(
                    width: 5,
                  ),
                  BText('trade_volume_24h'.tr, 14)
                ],
              ),
              BInkWell(
                onTap: () {
                  Get.dialog(const UpBitListDialog());
                },
                child: Transform.rotate(
                    angle: math.pi,
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Theme.of(context).indicatorColor,
                      size: 20,
                    )),
              )
            ],
          ),
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
          Expanded(
            child: Obx(
              () => ListView.builder(
                  itemCount: MarketController
                      .to.upBitData.value.accTradeVolume24h.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(3),
                      child: Row(children: [
                        BText('${index + 1}위', 14),
                        Expanded(
                          child: BText(
                              MarketController
                                  .to
                                  .upBitData
                                  .value
                                  .accTradeVolume24h[index]
                                  .market,
                              14),
                        ),
                      ]),
                    );
                  }),
            ),
          ),
        ],
      ),
    ));
  }
}
