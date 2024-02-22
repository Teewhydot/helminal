import 'package:flutter/material.dart';

class RowOption extends StatelessWidget {
  final Widget text;
  final color;

  const RowOption({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      width: 180,
      decoration: BoxDecoration(
        border: Border.all(color: color),
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: text),
    );
  }
}
