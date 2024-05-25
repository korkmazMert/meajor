import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {required this.label, super.key,
      this.onPressed,
      this.textStyle,
      this.buttonStyle,
      this.padding,
      this.fontSizeFactor});
  final void Function()? onPressed;
  final String label;
  final TextStyle? textStyle;
  final ButtonStyle? buttonStyle;
  final EdgeInsetsGeometry? padding;
  final double? fontSizeFactor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.zero,
      child: TextButton(
          style: buttonStyle,
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(label,
                style: textStyle ??
                    Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.apply(fontSizeFactor: fontSizeFactor ?? 1)),
          )),
    );
  }
}
