import 'package:e_commerce_app/features/notifications/presentation/views/widgets/notifications_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsListView extends StatelessWidget {
  const NotificationsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 12,
      separatorBuilder: (context, index) => SizedBox(
        height: 8.h,
      ),
      itemBuilder: (context, index) {
        return const NotificationsListViewItem();
      },
    );
  }
}
