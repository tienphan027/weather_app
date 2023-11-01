import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/colors.dart';
import '../styles/dimens.dart';

class Popup {
  static void showInformation({
    String? title,
    String? message,
  }) {
    Get.rawSnackbar(
        messageText: Text(
          message ?? '',
          style: const TextStyle(
            fontWeight: FontWeight.normal,
            color: AppColors.black,
          ),
        ),
        margin: AppDimens.mHorizontal,
        padding: AppDimens.kMarginAll,
        borderRadius: 8,
        snackStyle: SnackStyle.FLOATING,
        shouldIconPulse: true,
        barBlur: 20,
        isDismissible: true,
        duration: const Duration(milliseconds: 3000),
        backgroundColor: AppColors.white,
        snackPosition: SnackPosition.TOP);
  }
}
