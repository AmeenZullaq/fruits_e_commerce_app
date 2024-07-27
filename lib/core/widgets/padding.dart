import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SymetricPadding extends StatelessWidget {
  const SymetricPadding({
    super.key,
    this.horizontal = 0.0,
    this.vertical = 0.0,
    this.child,
  });
  final double horizontal;
  final double vertical;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontal.w,
        vertical: vertical.h,
      ),
      child: child,
    );
  }
}

class AllPadding extends StatelessWidget {
  const AllPadding({
    super.key,
    required this.all,
    this.child,
  });
  final double all;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.all(
        all.r,
      ),
      child: child,
    );
  }
}

class DynamicPadding extends StatelessWidget {
  const DynamicPadding({
    super.key,
    this.top = 0.0,
    this.bottom = 0.0,
    this.end = 0.0,
    this.start = 0.0,
    this.child,
  });
  final double top;
  final double bottom;
  final double end;
  final double start;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        top: top,
        bottom: bottom,
        end: end,
        start: start,
      ),
      child: child,
    );
  }
}

class StartPadding extends StatelessWidget {
  const StartPadding({
    super.key,
    this.child,
    required this.start,
  });

  final Widget? child;
  final double start;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: start.w,
      ),
      child: child,
    );
  }
}

class EndPadding extends StatelessWidget {
  final Widget? child;
  final double end;
  const EndPadding({
    super.key,
    this.child,
    required this.end,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        end: end,
      ),
      child: child,
    );
  }
}

class TopPadding extends StatelessWidget {
  final Widget? child;
  final double top;
  const TopPadding({
    super.key,
    this.child,
    required this.top,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        top: top,
      ),
      child: child,
    );
  }
}

class BottomPadding extends StatelessWidget {
  final Widget? child;
  final double bottom;
  const BottomPadding({
    super.key,
    this.child,
    required this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        bottom: bottom,
      ),
      child: child,
    );
  }
}
