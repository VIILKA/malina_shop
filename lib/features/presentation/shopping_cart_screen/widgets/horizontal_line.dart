import 'package:flutter/material.dart';

class HorizontalLine extends StatelessWidget {
  final double thickness;
  final Color color;
  final double? width;

  const HorizontalLine({
    Key? key,
    this.thickness = 1.0,
    this.color = Colors.black,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: thickness,
      color: color,
    );
  }
}
