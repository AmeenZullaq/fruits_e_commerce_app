import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/widgets/app_button.dart';
import 'package:e_commerce_app/features/profile/presentation/cubits/logout_cubit/logout_cubit.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.zero,
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 16.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: AlignmentDirectional.topStart,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: SvgPicture.asset(
                  width: 20.w,
                  height: 20.h,
                  Assets.imagesCancle,
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              LocaleKeys.Do_you_want_to_log_out.tr(),
              style: AppTextStyles.bold16.copyWith(
                color: AppColors.gray950,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    text: LocaleKeys.sure.tr(),
                    onTap: () {
                      context.read<LogoutCubit>().logOut();
                    },
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Expanded(
                  child: AppButton(
                    buttomColor: Colors.white,
                    textColor: AppColors.green1_500,
                    borderSideColor: AppColors.green1_500,
                    text: LocaleKeys.I_dont_want.tr(),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
