import 'package:e_commerce_app/features/products/presentation/cubits/bottom_nav_cubit/bottom_nav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

showingBottomSheet(
  BuildContext context, {
  required Widget widget,
}) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.r),
    ),
    isDismissible: false,
    showDragHandle: true,
    backgroundColor: Colors.white,
    context: context,
    builder: (context) {
      return widget;
    },
  ).then(
    (value) {
      context.read<BottomNavCubit>().show();
    },
  );
}
