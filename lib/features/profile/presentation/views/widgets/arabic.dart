import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Arabic extends StatefulWidget {
  const Arabic({
    super.key,
    required this.isChecked,
  });
  final ValueNotifier isChecked;

  @override
  State<Arabic> createState() => _ArabicState();
}

class _ArabicState extends State<Arabic> {
  @override
  void initState() {
    super.initState();
    widget.isChecked.addListener(
      () {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: !widget.isChecked.value,
          onChanged: (value) {
            setState(() {
              widget.isChecked.value = !widget.isChecked.value;
              context.setLocale(const Locale('ar'));
            });
          },
          activeColor: AppColors.green1_500,
        ),
        Image.asset(
          Assets.imagesSyrianflage,
          fit: BoxFit.fill,
          width: 35.w,
          height: 35,
        ),
        SizedBox(
          width: 16.w,
        ),
        Text(
          LocaleKeys.arabic.tr(),
          style: AppTextStyles.semiBold16.copyWith(
            color: AppColors.gray950,
          ),
        ),
      ],
    );
  }
}
