import 'dart:io';
import 'package:e_commerce_app/core/helper_functions/pickers.dart';
import 'package:e_commerce_app/core/widgets/choose_image_from.dart';
import 'package:e_commerce_app/features/profile/presentation/cubits/upload_user_image_cubit/upload_user_image_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class SelectImageSourceDialog extends StatefulWidget {
  const SelectImageSourceDialog({
    super.key,
    required this.onImagePicked,
  });

  final void Function(File? file)? onImagePicked;

  @override
  State<SelectImageSourceDialog> createState() =>
      _SelectImageSourceDialogState();
}

class _SelectImageSourceDialogState extends State<SelectImageSourceDialog> {
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Container(
        padding: EdgeInsets.all(16.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Chose image from',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(
              height: 30.h,
            ),
            ChooseImageFrom(
              onTap: (imageSource) async {
                if (imageSource == ImageSource.gallery) {
                  imageFile = await Pickers.pickImage(
                    ImageSource.gallery,
                  );
                  widget.onImagePicked?.call(imageFile);
                  if (imageFile != null) {
                    context
                        .read<UploadUserImageCubit>()
                        .uploadUserImage(imageFile: imageFile!);
                  }
                  Navigator.pop(context);
                } else if (imageSource == ImageSource.camera) {
                  imageFile = await Pickers.pickImage(
                    ImageSource.camera,
                  );
                  widget.onImagePicked?.call(imageFile);
                  if (imageFile != null) {
                    context
                        .read<UploadUserImageCubit>()
                        .uploadUserImage(imageFile: imageFile!);
                  }
                  Navigator.pop(context);
                } else {
                  imageFile = await Pickers.pickFile();
                  if (imageFile != null) {
                    context
                        .read<UploadUserImageCubit>()
                        .uploadUserImage(imageFile: imageFile!);
                  }
                  Navigator.pop(context);
                }
              },
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
