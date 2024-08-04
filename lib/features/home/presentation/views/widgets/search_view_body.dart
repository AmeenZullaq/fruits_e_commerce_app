import 'package:e_commerce_app/core/widgets/search_field.dart';
import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/search_image.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  final FocusNode focusNode = FocusNode();
  bool isVisible = true;
  @override
  void initState() {
    super.initState();
    focusNode.addListener(
      () {
        setState(() {
          isVisible = !isVisible;
        });
      },
    );
  }
  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SymetricPadding(
      horizontal: 16,
      vertical: 16,
      child: Column(
        children: [
          SearchField(
            focusNode: focusNode,
          ),
          const Spacer(
            flex: 2,
          ),
          Visibility(
            visible: isVisible,
            child: const SearchImage(),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
