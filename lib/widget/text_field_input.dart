import 'package:app_weather/styles/dimens.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';

class TextFieldInput extends StatefulWidget {
  final Widget? label;
  final Widget? suffixIcon;
  final InputBorder? border;
  final TextStyle? labelStyle;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? obscureText;
  final bool? isFocus;
  final double? contentPadding;
  final double? height;
  final bool? isError;
  const TextFieldInput({
    Key? key,
    this.label,
    this.suffixIcon,
    this.border,
    this.labelStyle,
    this.controller,
    this.focusNode,
    this.obscureText,
    this.isFocus,
    this.contentPadding,
    this.height,
    this.isError,
  }) : super(key: key);

  @override
  _TextFieldInputState createState() => _TextFieldInputState();
}

class _TextFieldInputState extends State<TextFieldInput> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.obscureText ?? false,
        focusNode: widget.focusNode,
        decoration: InputDecoration(
            labelStyle: widget.labelStyle ??
                (widget.isFocus ?? false
                    ? const TextStyle(color: AppColors.textDefault)
                    : const TextStyle(color: AppColors.textHint)),
            contentPadding:
                EdgeInsets.all(widget.contentPadding ?? AppDimens.size16),
            focusedBorder: widget.isError == true
                ? const OutlineInputBorder(
                    borderRadius: AppDimens.k30Border,
                    borderSide: BorderSide(color: AppColors.primary))
                : const OutlineInputBorder(
                    borderRadius: AppDimens.k30Border,
                    borderSide: BorderSide(color: AppColors.royalBlues)),
            border: const OutlineInputBorder(
                borderRadius: AppDimens.k30Border,
                borderSide: BorderSide(color: AppColors.yellow)),
            label: widget.label,
            suffixIcon: widget.suffixIcon),
      ),
    );
  }
}
