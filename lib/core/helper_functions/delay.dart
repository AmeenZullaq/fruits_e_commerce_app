import 'dart:async';
import 'package:flutter/material.dart';

Future delay(
  BuildContext context,
  Function()? computation,
) async {
  return Future.delayed(
    const Duration(seconds: 3),
    computation,
  );
}
