import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({
    super.key,
  });

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool ontapped = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 29.w,
      height: 17.h,
      child: Switch(
        activeColor: AppColors.green1_500,
        inactiveTrackColor: AppColors.gray300,
        activeTrackColor: const Color(0xFF888FA0).withOpacity(.5),
        inactiveThumbColor: Colors.white,
        trackOutlineColor: WidgetStateColor.transparent,
        value: ontapped,
        onChanged: (value) {
          setState(() {
            ontapped = value;
          });
        },
      ),
    );
  }
}
