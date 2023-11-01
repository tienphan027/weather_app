import 'package:app_weather/styles/dimens.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';

class ButtonApp extends StatelessWidget {
  final void Function()? onPressed;
  final void Function()? onLongPressed;
  final String? buttonText;
  final Color? textColor;
  final double? width;
  final double? height;
  final TextStyle? textStyle;
  final Widget? icon;
  final ButtonStyle? buttonStyle;

  const ButtonApp(
      {Key? key,
      this.onPressed,
      this.onLongPressed,
      this.buttonText,
      this.textColor,
      this.width,
      this.height,
      this.textStyle,
      this.icon,
      this.buttonStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? AppDimens.btnH48,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        onLongPress: onLongPressed,
        style: buttonStyle ??
            ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              shape: const RoundedRectangleBorder(
                  borderRadius: AppDimens.k30Border),
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? const SizedBox(),
            Text(
              buttonText ?? '',
              style: textStyle ??
                  TextStyle(
                      color: textColor ?? AppColors.white,
                      fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
