import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/features/auth/presentation/cubits/singup_cubit/sing_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
  });

  @override
 State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    SingUpCubit singUpCubit = context.read<SingUpCubit>();
    return GestureDetector(
      onTap: () {
        singUpCubit.isTermsAccepted = !singUpCubit.isTermsAccepted;
        setState(() {});
      },
      child: Container(
        alignment: Alignment.center,
        height: 20.h,
        width: 22.w,
        decoration: BoxDecoration(
          color: singUpCubit.isTermsAccepted
              ? AppColors.green1_500
              : const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xFFDDDFDF),
            width: 1.5,
          ),
        ),
        child: singUpCubit.isTermsAccepted
            ? SvgPicture.asset(
                Assets.imagesCheckIcon,
              )
            : null,
      ),
    );
  }
}
