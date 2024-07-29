import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class LookingForField extends StatelessWidget {
  const LookingForField({
    super.key,
    this.readOnly,
  });
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      readOnly: readOnly,
      controller: TextEditingController(),
      contentPadding: EdgeInsets.symmetric(
        vertical: 7.h,
      ),
      hintText: LocaleKeys.Look_for.tr(),
      fillColor: Colors.white,
      prefixIcon: SymetricPadding(
        horizontal: 13,
        child: SvgPicture.asset(
          width: 20.w,
          height: 20.h,
          Assets.imagesSearchNormal,
        ),
      ),
      suffixIcon: EndPadding(
        end: 13.w,
        child: SvgPicture.asset(
          width: 20.w,
          height: 20.h,
          Assets.imagesSetting,
        ),
      ),
    );
  }
}
