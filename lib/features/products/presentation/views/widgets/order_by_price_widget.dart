import 'package:e_commerce_app/core/widgets/padding.dart';
import 'package:e_commerce_app/features/products/presentation/views/widgets/order_by_price_item.dart';
import 'package:e_commerce_app/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';

class OrderByPriceWidget extends StatefulWidget {
  const OrderByPriceWidget({super.key, required this.onSelect});

  final Function(int onSelectedOption) onSelect;

  @override
  State<OrderByPriceWidget> createState() => _OrderByPriceWidgetState();
}

class _OrderByPriceWidgetState extends State<OrderByPriceWidget> {
  final List<String> texts = const [
    LocaleKeys.price_low_to_high,
    LocaleKeys.price_high_to_low,
    LocaleKeys.alphabet,
  ];
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: texts.asMap().entries.map(
        (e) {
          int index = e.key;
          return InkWell(
            onTap: () {
              widget.onSelect(index);
              setState(() {
                selectedIndex = index;
              });
            },
            child: BottomPadding(
              bottom: 12,
              child: OrderByPriceItem(
                text: e.value,
                isChecked: selectedIndex == index,
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
