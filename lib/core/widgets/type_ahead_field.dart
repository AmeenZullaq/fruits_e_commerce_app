import 'package:e_commerce_app/core/utils/constants.dart';
import 'package:e_commerce_app/core/services/shared_preferences.dart';
import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_keys.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:svg_flutter/svg.dart';

class TyoeAheadField extends StatefulWidget {
  const TyoeAheadField({
    super.key,
    required this.focusNode,
  });
  final FocusNode focusNode;
  @override
  State<TyoeAheadField> createState() => _TyoeAheadFieldState();
}

class _TyoeAheadFieldState extends State<TyoeAheadField> {
  final List<String> fruits = fruitNames;
  late TextEditingController controller;
  List<String> recentSearches = [];

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    SharedPrefs.setStringList(AppKeys.recentSearches, recentSearches);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TypeAheadField(
      controller: controller,
      focusNode: widget.focusNode,
      hideKeyboardOnDrag: true,
      emptyBuilder: (context) {
        return const SizedBox();
      },
      decorationBuilder: (context, child) {
        return SizedBox(
          child: child,
        );
      },
      itemBuilder: (context, value) {
        return ListTile(
          leading: SvgPicture.asset(Assets.imagesCarbonTime),
          title: Text(value),
          titleTextStyle: AppTextStyles.regular16.copyWith(
            color: AppColors.gray950,
          ),
        );
      },
      suggestionsCallback: (search) async {
        if (search.isEmpty) {
          return [];
        }
        return fruits
            .where(
              (e) => e.toLowerCase().contains(search.toLowerCase()),
            )
            .toList();
      },
      onSelected: (value) {
        controller.text = value;
        if (!recentSearches.contains(value)) {
          recentSearches.add(value);
        }
      },
      builder: (context, controller, focusNode) {
        return CustomTextFormField(
          focusNode: focusNode,
          controller: controller,
          contentPadding: EdgeInsets.symmetric(
            vertical: 7.h,
          ),
          hintText: LocaleKeys.Look_for.tr(),
          fillColor: Colors.white,
          prefixIcon: SymetricPadding(
            horizontal: 13,
            child: GestureDetector(
              onTap: () {
                if (controller.text.isNotEmpty &&
                    !recentSearches.contains(controller.text)) {
                  recentSearches.add(controller.text);
                }
              },
              child: SvgPicture.asset(
                width: 20.w,
                height: 20.h,
                Assets.imagesSearchNormal,
              ),
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
      },
    );
  }
}
