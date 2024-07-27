import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/services/shared_prefrences.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_routes.dart';
import 'package:e_commerce_app/core/widgets/app_button.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(
      () {
        currentPage = pageController.page!.round();
        setState(() {});
      },
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .8,
          child: OnBoardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          position: currentPage,
          decorator: DotsDecorator(
            activeColor: AppColors.green1_500,
            color: currentPage == 0 ? AppColors.green500 : AppColors.green1_500,
            size: currentPage == 0 ? Size(9.w, 9.h) : Size(11.w, 11.h),
            activeSize: Size(11.w, 11.h),
          ),
        ),
        SizedBox(
          height: 29.h,
        ),
        Visibility(
          visible: currentPage == 1 ? true : false,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: SymetricPadding(
            horizontal: 16,
            child: AppButton(
              onTap: () {
                Prefs.setBool(kIsOnBoardingViewSeen, true);
                Navigator.of(context).pushReplacementNamed(
                  AppRoutes.singInView,
                );
              },
              text: LocaleKeys.start_now.tr(),
            ),
          ),
        ),
      ],
    );
  }
}
