import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CustomProgrossHUD extends StatelessWidget {
  const CustomProgrossHUD({
    super.key,
    required this.isLoading,
    required this.child,
  });
  final bool isLoading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      progressIndicator: const CircularProgressIndicator(
        color: AppColors.green1_500,
      ),
      inAsyncCall: isLoading,
      child: child,
    );
  }
}
