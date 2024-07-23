import 'package:flutter/material.dart';

Future<dynamic> showingDialog(
  BuildContext context, {
  required Widget dialog,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return dialog;
    },
  );
}
