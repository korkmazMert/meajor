import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInputField extends StatefulWidget {
  const CustomInputField({
    super.key,
    this.focusNode,
    this.autofocus = false,
    this.validator,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.hint,
    this.controller,
    this.padding,
    this.border,
    this.keyboardType = TextInputType.text,
    this.maxLines,
    this.onFieldSubmitted,
  });
  final FocusNode? focusNode;
  final bool autofocus;
  final TextInputAction textInputAction;
  final TextEditingController? controller;
  final bool obscureText;
  final String? Function(String?)? validator;
  final String? hint;
  final EdgeInsetsGeometry? padding;
  final TextInputType? keyboardType;
  final InputBorder? border;
  final int? maxLines;
  final void Function(String)? onFieldSubmitted;

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  ValueNotifier<bool> obscureTextNotifier = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: obscureTextNotifier,
        builder: (context, value, child) {
          return Container(
            padding: widget.padding == null ? EdgeInsets.zero : widget.padding!,
            child: TextFormField(
              autocorrect: false,
              maxLines: widget.obscureText ? 1 : widget.maxLines,
              keyboardType: widget.keyboardType,
              controller: widget.controller,
              autofocus: widget.autofocus,
              focusNode: widget.focusNode,
              validator: widget.validator,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              inputFormatters: widget.keyboardType == TextInputType.phone
                  ? <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(10)
                    ]
                  : widget.keyboardType == TextInputType.number
                      ? <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ]
                      : widget.keyboardType == TextInputType.emailAddress
                          ? <TextInputFormatter>[
                              FilteringTextInputFormatter.deny(RegExp(r'\s'))
                            ]
                          : null,
              obscureText: widget.obscureText && value,
              textInputAction: widget.textInputAction,
              onFieldSubmitted: widget.onFieldSubmitted,
              decoration: InputDecoration(
                isDense: true,
                border: widget.border,
                suffixIcon: widget.obscureText
                    ? IconButton(
                        focusNode: AlwaysDisabledFocusNode(),
                        onPressed: () {
                          obscureTextNotifier.value =
                              !obscureTextNotifier.value;
                        },
                        icon: Icon(
                          value ? Icons.visibility : Icons.visibility_off,
                        ),
                      )
                    : null,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                errorStyle: const TextStyle(
                    color: Colors.red,
                    fontSize: 14), // Change the color and font size as needed
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: const BorderSide(
                      color:
                          Colors.red), // Change the color and width as needed
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: const BorderSide(
                      color: Colors.red,
                      width: 2), // Change the color and width as needed
                ),
                hintText: widget.hint ?? '',
                hintStyle: const TextStyle(fontSize: 14),
              ),
            ),
          );
        });
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
