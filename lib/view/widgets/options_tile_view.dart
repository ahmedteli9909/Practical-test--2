import 'package:flutter/material.dart';
import 'package:practical_task_2/model/color_model.dart';

class OptionTileView extends StatelessWidget {
  const OptionTileView(
      {super.key,
      required this.colorOptionList,
      required this.selectedColor,
      required this.onTap,
      required this.title});

  final List<ColorModel> colorOptionList;
  final ColorModel selectedColor;
  final String title;
  final void Function(ColorModel selectedColor) onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 16,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.w500),
                  maxLines: 1,
                ),
              ),
            ),
            Container(
              height: 40,
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade400)),
              child: Text(
                selectedColor.value.toString(),
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 25,
              width: 35,
              decoration: BoxDecoration(color: selectedColor.color),
            ),
            const SizedBox(width: 10),
            ...colorOptionList.map((e) => Expanded(
                    child: GestureDetector(
                  onTap: () => onTap(e),
                  child: ColorTileOption(
                      colorModel: ColorModel(
                    color: e.color,
                    value: e.value,
                  )),
                )))
          ],
        ),
      ],
    );
  }
}

class ColorTileOption extends StatelessWidget {
  const ColorTileOption({super.key, required this.colorModel});

  final ColorModel colorModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, bottom: 12),
      child: Column(
        children: [
          Container(
            height: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: colorModel.color,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            colorModel.value.toString(),
            style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
