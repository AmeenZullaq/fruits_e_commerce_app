import 'package:e_commerce_app/features/on_boarding/presentation/views/widgets/page_view_part_one.dart';
import 'package:e_commerce_app/features/on_boarding/presentation/views/widgets/page_view_part_two.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageViewPartOne(),
        PageViewPartTwo(),
      ],
    );
  }
}
