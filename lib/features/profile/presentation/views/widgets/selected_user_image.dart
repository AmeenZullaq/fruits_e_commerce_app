import 'dart:io';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectedUserImage extends StatefulWidget {
  const SelectedUserImage({super.key, required this.fileImage});

  final ValueNotifier<File?> fileImage;

  @override
  State<SelectedUserImage> createState() => _SelectedUserImageState();
}

class _SelectedUserImageState extends State<SelectedUserImage> {
  @override
  void initState() {
    super.initState();
    widget.fileImage.addListener(
      () {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.fileImage.value != null
        ? Image.file(
            fit: BoxFit.cover,
            height: 73.h,
            width: 73.w,
            widget.fileImage.value!,
          )
        : Image.asset(
            fit: BoxFit.cover,
            height: 73.h,
            width: 73.w,
            Assets.imagesDefaultHuman,
          );
  }
}
