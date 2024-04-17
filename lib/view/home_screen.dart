 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_task_2/controller/home_controller.dart';
import 'package:practical_task_2/model/color_model.dart';
import 'package:practical_task_2/view/widgets/options_tile_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: Get.put(HomeController()),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.sizeOf(context).height * 0.12,
                  left: 16,
                  right: 16,
                  bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Test Strip',
                    style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                    maxLines: 1,
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: Stack(
                      children: [
                        ListView.builder(
                            itemCount: controller.colorData.length,
                            itemBuilder: (context, index) {
                              return OptionTileView(
                                colorOptionList:
                                    controller.colorData[index].colors,
                                selectedColor:
                                    controller.selectedColors[index] == null
                                        ? controller.colorData[index].colors[0]
                                        : controller.selectedColors[index]!,
                                onTap: (ColorModel selectedColor) {
                                  controller.onSelectedColor(
                                      index, selectedColor);
                                },
                                title: controller.colorData[index].title,
                              );
                            }),
                        Positioned.fill(
                            right: MediaQuery.sizeOf(context).width - 68,
                            child: IgnorePointer(
                                child: Container(
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border:
                                      Border.all(color: Colors.grey.shade500)),
                            )))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
