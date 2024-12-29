import 'package:flutter_easyloading/flutter_easyloading.dart';

class CustomEasyLoading {
  CustomEasyLoading() {
    EasyLoading.instance
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.light
      ..indicatorSize = 45
      ..maskType = EasyLoadingMaskType.clear
      ..radius = 15;
  }

  static void showError({
    required String text,
  }) {
    EasyLoading.showError(text);
  }

  static void showSuccess({required String text}) {
    EasyLoading.showSuccess(text);
  }

  static void showLoading() {
    EasyLoading.show(status: 'loading...');
  }
}
