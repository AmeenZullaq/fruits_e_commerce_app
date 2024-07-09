import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:flutter/material.dart';

class SuffixEye extends StatefulWidget {
  const SuffixEye({super.key});

  @override
  State<SuffixEye> createState() => _SuffixEyeState();
}

class _SuffixEyeState extends State<SuffixEye> {
  bool onTapped = true;
  @override
  Widget build(BuildContext context) {
    return EndPadding(
      end: 32,
      child: GestureDetector(
        onTap: () {
          setState(() {
            onTapped = !onTapped;
          });
        },
        child: Icon(
          onTapped ? Icons.visibility : Icons.visibility_off,
          color: const Color(0xffC9CECF),
        ),
      ),
    );
  }
}
