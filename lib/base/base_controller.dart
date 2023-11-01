import 'package:get/get.dart';

abstract class BaseController extends GetxController {}

abstract class DumpSkeleton<T> {
  late final List<T> skeletonList;
}

abstract class Refresher {
  bool hasMore = true;
  int currentPage = 1;
}
