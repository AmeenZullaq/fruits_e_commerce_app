import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/widgets/custom_add_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelecteCountOfProduct extends StatefulWidget {
  const SelecteCountOfProduct({
    super.key,
    required this.selectedCountOfProduct,
  });

  final Function(int value) selectedCountOfProduct;

  @override
  State<SelecteCountOfProduct> createState() => _SelecteCountOfProductState();
}

class _SelecteCountOfProductState extends State<SelecteCountOfProduct> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomAddIcon(
          onTap: () {
            count++;
            widget.selectedCountOfProduct(count);
            setState(() {});
          },
        ),
        SizedBox(
          width: 16.w,
        ),
        Text(
          count.toString(),
          style: AppTextStyles.bold16.copyWith(
            color: AppColors.gray950,
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
        CustomAddIcon(
          onTap: () {
            if (count >= 0) {
              count--;
              widget.selectedCountOfProduct(count);
              setState(() {});
            }
          },
          backgroundColor: const Color(0xffF3F5F7),
          icon: CupertinoIcons.minus,
          iconColor: Colors.black,
        ),
      ],
    );
  }
}
