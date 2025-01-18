import 'package:e_commerce_app/features/checkout/presentation/views/widgets/active_step.dart';
import 'package:e_commerce_app/features/checkout/presentation/views/widgets/in_active_step.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({
    super.key,
    required this.currentStepIndex,
    required this.pageController,
  });
  final int currentStepIndex;
  final PageController pageController;

  final List<String> texts = const [
    LocaleKeys.shipping,
    LocaleKeys.address,
    LocaleKeys.payment,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        texts.length,
        (index) {
          return AnimatedCrossFade(
            firstChild: InActiveStep(
              title: texts[index].tr(),
              stepNumber: index + 1,
            ),
            secondChild: InkWell(
              onTap: () {
                pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              },
              child: ActiveStep(
                title: texts[index].tr(),
              ),
            ),
            crossFadeState: index > currentStepIndex
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 300),
          );
        },
      ),
    );
  }
}
