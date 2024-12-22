import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SymetricPadding(
      horizontal: 16,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 9,
              color: Colors.black.withOpacity(.04),
              offset: const Offset(0, 2),
              spreadRadius: 0,
            ),
          ],
        ),
        child: CustomTextFormField(
          readOnly: true,
          borderColor: Colors.white,
          fillColor: Colors.white,
          hintText: LocaleKeys.Look_for.tr(),
          controller: TextEditingController(),
          // suffixIcon: EndPadding(
          //     end: 16,
          //     child: SvgPicture.asset(
          //       Assets.imagesFiltter,
          //     )),
          prefixIcon: SymetricPadding(
            horizontal: 16,
            child: SvgPicture.asset(
              Assets.imagesSearchNormal,
            ),
          ),
        ),
      ),
    );
  }
}
