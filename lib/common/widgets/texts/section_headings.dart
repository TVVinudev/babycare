import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    required this.text,
    this.buttonText = 'view all',
    this.textColor = Colors.grey,
    this.onPress,
    this.showActionButton = true,
  });

  final String text;
  final String buttonText;
  final bool showActionButton;
  final Color textColor;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPress, child: Text(buttonText))
      ],
    );
  }
}