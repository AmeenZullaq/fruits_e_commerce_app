import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/constants/assets.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class English extends StatefulWidget {
  const English({
    super.key,
    required this.isChecked,
  });

  final ValueNotifier isChecked;

  @override
  State<English> createState() => _EnglishState();
}

class _EnglishState extends State<English> {
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
          value: widget.isChecked.value,
          onChanged: (value) {
            setState(() {
              widget.isChecked.value = !widget.isChecked.value;
              context.setLocale(const Locale('en'));
            });
          },
          activeColor: AppColors.green1_500,
        ),
        Image.asset(
          Assets.imagesUnitedstate,
          fit: BoxFit.fill,
          width: 35.w,
          height: 35,
        ),
        SizedBox(
          width: 16.w,
        ),
        Text(
          LocaleKeys.english.tr(),
          style: AppTextStyles.semiBold16.copyWith(
            color: AppColors.gray950,
          ),
        ),
      ],
    );
  }
}
