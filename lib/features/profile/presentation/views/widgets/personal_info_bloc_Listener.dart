import 'package:e_commerce_app/core/services/custom_easy_loading.dart';
import 'package:e_commerce_app/features/profile/presentation/cubits/update_user_info_cubit/update_user_info_cubit.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/personal_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalInfoBlocConsumer extends StatefulWidget {
  const PersonalInfoBlocConsumer({
    super.key,
    required this.updateUserInfoCubit,
  });

  final UpdateUserInfoCubit updateUserInfoCubit;

  @override
  State<PersonalInfoBlocConsumer> createState() =>
      _PersonalInfoBlocConsumerState();
}

class _PersonalInfoBlocConsumerState extends State<PersonalInfoBlocConsumer> {
  @override
  void initState() {
    super.initState();
    widget.updateUserInfoCubit.initControllersValue();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateUserInfoCubit, UpdateUserInfoState>(
      listener: (context, state) {
        if (state is UpdateUserInfoFailure) {
          CustomEasyLoading.showError(text: state.errMessage);
        }
        if (state is UpdateUserInfoSuccess) {
          CustomEasyLoading.showSuccess(text: 'Updated Successfully');
        }
        if (state is UpdateUserInfoLoading) {
          CustomEasyLoading.showLoading();
        }
      },
      child: PersonalInfo(
        updateUserInfoCubit: widget.updateUserInfoCubit,
      ),
    );
  }
}
