import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:flutter/material.dart';

class FeaturedItemButton extends StatelessWidget {
  const FeaturedItemButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              4,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: FittedBox(
            child: Text(
              'تسوق الان',
              style: AppTextStyles.bold13
                ..copyWith(
                  color: const Color(0xff1F5E3B),
                ),
            ),
          ),
        ),
      ),
    );
  }
}
