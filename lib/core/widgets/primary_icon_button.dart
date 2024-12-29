import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryIconButton extends StatelessWidget {
  final Widget child;
  final Color? color;
  final Color? splashColor;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final void Function()? onTap;

  const PrimaryIconButton({
    required this.child,
    this.color,
    this.splashColor,
    this.onTap,
    super.key,
    this.padding,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color ?? Colors.grey[300],
      borderRadius: borderRadius ?? BorderRadius.circular(10.r),
      child: InkWell(
        onTap: onTap,
        splashColor: splashColor ?? Colors.grey[400],
        borderRadius: borderRadius ?? BorderRadius.circular(10.r),
        child: AllPadding(
          all: 10,
          child: child,
        ),
      ),
    );
  }
}
