import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseViewController<T> extends GetView<T> {
  const BaseViewController({super.key});
}

abstract class Listing {
  void onRefresh(BuildContext context);

  void onLoadmore(BuildContext context);
}
