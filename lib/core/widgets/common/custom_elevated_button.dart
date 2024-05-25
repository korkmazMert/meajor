import 'package:alisatiyor/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.label,
    super.key,
    this.onPressed,
    this.width,
  });
  final void Function()? onPressed;
  final String label;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? context.width,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            visualDensity: VisualDensity.standard,
            backgroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return Colors.grey; // the color when the button is disabled
                }
                return Colors.black; // the color when the button is enabled
              },
            ),
            shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
          child: Text(label,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Colors.white))),
    );
  }
}
