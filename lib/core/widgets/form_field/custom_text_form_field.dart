import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    required this.labelText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    super.key,
    this.controller,
  });
  final String labelText;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final bool obscureText;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late ValueNotifier<bool> obscureText;
  @override
  void initState() {
    obscureText = ValueNotifier<bool>(widget.obscureText);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: obscureText,
        builder: (context, value, child) {
          return TextFormField(
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            obscureText: obscureText.value,
            decoration: InputDecoration(
              isDense: true,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              labelText: widget.labelText,
              suffixIcon: widget.obscureText
                  ? InkWell(
                      onTap: () {
                        obscureText.value = !obscureText.value;
                      },
                      child: obscureText.value
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    )
                  : null,
            ),
          );
        });
  }
}