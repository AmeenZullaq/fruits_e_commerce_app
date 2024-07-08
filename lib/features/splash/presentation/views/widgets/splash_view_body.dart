import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/services/shared_prefrences.dart';
import 'package:e_commerce_app/core/utils/app_routes.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    excuteNavigation();
  }

  void excuteNavigation() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Prefs.setBool(kIsOnBoardingViewSeen, false);

        Prefs.getBool(kIsOnBoardingViewSeen)
            ? Navigator.of(context).pushReplacementNamed(
                AppRoutes.loginView,
              )
            : Navigator.of(context).pushReplacementNamed(
                AppRoutes.onBoardingView,
              );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: SvgPicture.asset(
            Assets.imagesPlant,
          ),
        ),
        SvgPicture.asset(
          Assets.imagesLogo,
        ),
        SvgPicture.asset(
          Assets.imagesBottomSplah,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
