import 'dart:io';
import 'package:e_commerce_app/core/helper_functions/pick_image.dart';
import 'package:e_commerce_app/core/helper_functions/showing_bottom_sheet.dart';
import 'package:e_commerce_app/core/utils/app__text_styles.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/products/presentation/cubits/bottom_nav_cubit/bottom_nav_cubit.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/default_user_image.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/selected_user_image.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class UserImage extends StatefulWidget {
  const UserImage({
    super.key,
  });

  @override
  State<UserImage> createState() => _UserImageState();
}

class _UserImageState extends State<UserImage> {
  ValueNotifier<File?> fileImage = ValueNotifier<File?>(null);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        SelectedUserImage(fileImage: fileImage),
        DynamicPadding(
          top: 50,
          child: GestureDetector(
            onTap: () {
              context.read<BottomNavCubit>().hide();
              showingBottomSheet(
                context,
                widget: SizedBox(
                  height: MediaQuery.sizeOf(context).height * .3,
                  child: Column(
                    children: [
                      Text(
                        LocaleKeys.select_source.tr(),
                        style: AppTextStyles.bold14.copyWith(
                          color: AppColors.gray950,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Divider(
                        color: AppColors.gray100,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SymetricPadding(
                        horizontal: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                fileImage.value = await pickImage(
                                  ImageSource.camera,
                                );
                                setState(() {
                                  Navigator.of(context).pop();
                                });
                              },
                              child: Image.asset(
                                height: 60.h,
                                width: 60.w,
                                Assets.imagesGoogleCamera11,
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                fileImage.value = await pickImage(
                                  ImageSource.camera,
                                );
                                setState(() {
                                  Navigator.of(context).pop();
                                });
                              },
                              child: Image.asset(
                                height: 60.h,
                                width: 60.w,
                                Assets.imagesGooglePhotosIcon,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const Divider(
                        color: AppColors.gray100,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          LocaleKeys.Cancle.tr(),
                          style: AppTextStyles.bold14.copyWith(
                            color: AppColors.gray950,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            child: const DefaultUserImage(),
          ),
        ),
      ],
    );
  }
}
