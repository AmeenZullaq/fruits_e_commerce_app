import 'package:flutter/material.dart';
import '../../features/auth/presentation/views/widgets/success_dialog.dart';

Future<dynamic> showingDialog(
  BuildContext context, {
  required Widget dialog,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return const SuccessDialog();
    },
  );
}
