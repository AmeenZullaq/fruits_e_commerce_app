import 'package:e_commerce_app/core/constants/app__text_styles.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/services/app_validators.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/core/widgets/switch_widget.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/email_field.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/user_name_field.dart';
import 'package:e_commerce_app/features/checkout/presentation/cubits/checkout_cubit/checkout_cubit.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressSection extends StatelessWidget {
  const AddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final CheckoutCubit checkoutCubit = context.read<CheckoutCubit>();
    return SingleChildScrollView(
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: checkoutCubit.addressSectionFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserNameField(
              userNameController: checkoutCubit.nameController,
            ),
            SizedBox(
              height: 8.h,
            ),
            EmailField(
              emailController: checkoutCubit.emailController,
            ),
            SizedBox(
              height: 8.h,
            ),
            CustomTextFormField(
              validator: (value) {
                return AppValidators.validatePhoneNumber(value);
              },
              controller: checkoutCubit.phoneController,
              hintText: LocaleKeys.mobile_number.tr(),
            ),
            SizedBox(
              height: 8.h,
            ),
            CustomTextFormField(
              validator: (value) {
                return AppValidators.validateText(value);
              },
              controller: checkoutCubit.addressController,
              hintText: LocaleKeys.address.tr(),
            ),
            SizedBox(
              height: 8.h,
            ),
            CustomTextFormField(
              validator: (value) {
                return AppValidators.validateText(value);
              },
              controller: checkoutCubit.cityController,
              hintText: LocaleKeys.city.tr(),
            ),
            SizedBox(
              height: 8.h,
            ),
            CustomTextFormField(
              validator: (value) {
                return AppValidators.validateText(value);
              },
              controller: checkoutCubit.floorController,
              hintText: LocaleKeys.floorNumber.tr(),
            ),
            SizedBox(
              height: 24.h,
            ),
            StartPadding(
              start: 0,
              child: Row(
                children: [
                  const SwitchWidget(),
                  SizedBox(
                    width: 16.w,
                  ),
                  Text(
                    LocaleKeys.saveAddress.tr(),
                    style: AppTextStyles.semiBold13.copyWith(
                      color: AppColors.gray400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
