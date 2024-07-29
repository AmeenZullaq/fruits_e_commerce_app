import 'package:e_commerce_app/features/notifications/presentation/views/widgets/new_text_widget.dart';
import 'package:e_commerce_app/features/notifications/presentation/views/widgets/notifications_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsViewBody extends StatelessWidget {
  const NotificationsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const NewTextWidget(),
          SizedBox(
            height: 16.h,
          ),
          const NotificationsListView(),
        ],
      ),
    );
  }
}
