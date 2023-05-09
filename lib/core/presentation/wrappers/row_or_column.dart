
import 'package:flutter/material.dart';

class RowOrColumn extends StatelessWidget {
  final bool condition;
  final List<Widget> children;

  const RowOrColumn({Key? key, required this.condition, required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (condition) {
      return Row(
        children: [for (var child in children) Expanded(child: child)],
      );
    } else {
      return Column(
        children: children,
      );
    }
  }
}
