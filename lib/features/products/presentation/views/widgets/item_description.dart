import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ItemDescription extends StatelessWidget {
  const ItemDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys
                  .It_belongs_to_the_Pumpkin_family_and_its_fruit_has_a_sweet_edible_pulp
              .tr(),
          style: AppTextStyles.regular13.copyWith(
            color: const Color(0xFF979899),
          ),
        ),
        Text(
          LocaleKeys
                  .According_to_botany_they_are_considered_pulpy_fruits_the_word_watermelon_is_used
              .tr(),
          style: AppTextStyles.regular13.copyWith(
            color: const Color(0xFF979899),
          ),
        ),
        Text(
          LocaleKeys.To_refer_specifically_to_the_plant_itself_or_to_the_frui
              .tr(),
          style: AppTextStyles.regular13.copyWith(
            color: const Color(0xFF979899),
          ),
        ),
      ],
    );
  }
}
