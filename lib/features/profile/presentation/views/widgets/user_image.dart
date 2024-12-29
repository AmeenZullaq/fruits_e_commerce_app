import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/constants/assets.dart';
import 'package:e_commerce_app/core/widgets/select_image_source_dialog.dart';
import 'package:e_commerce_app/features/profile/presentation/cubits/upload_user_image_cubit/upload_user_image_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class UserImage extends StatelessWidget {
  const UserImage({
    super.key,
    this.imageUrl,
  });

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    final UploadUserImageCubit uploadUserImageCubit =
        context.read<UploadUserImageCubit>();
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        imageUrl != null
            ? CircleAvatar(
                radius: 40.r,
                backgroundImage: CachedNetworkImageProvider(
                  imageUrl!,
                ),
              )
            : CircleAvatar(
                radius: 40.r,
                backgroundImage: const AssetImage(
                  Assets.imagesDefaultHuman,
                ),
              ),
        Positioned(
          top: imageUrl != null ? 68.h : 60.h,
          child: InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return BlocProvider.value(
                    value: uploadUserImageCubit,
                    child: SelectImageSourceDialog(
                      onImagePicked: (file) {},
                    ),
                  );
                },
              );
            },
            child: Container(
              alignment: Alignment.center,
              height: 24.h,
              width: 24.w,
              decoration: const BoxDecoration(
                color: Color(0xffF9F9F9),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                width: 17.w,
                height: 15.h,
                Assets.imagesCamera,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
