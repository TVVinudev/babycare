import 'package:babycare/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override

  Widget build(BuildContext context) {
    final isColor = THelperFunction.getColor(text) != null;
    return Theme(
      data:Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() :  Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? TColor.white : null),
        avatar: isColor ? TCircularContainer(width: 50, height: 50, backgroundColor:THelperFunction.getColor(text)! ) : null,
        shape: isColor ? const CircleBorder() :null,
        labelPadding:isColor ?  const EdgeInsets.all(0) : null,
        padding: isColor ?  const EdgeInsets.all(0) : null,
        // selectedColor: Colors.green,
        backgroundColor: isColor  ?THelperFunction.getColor(text)! : null ,
      ),
    );
  }
}
