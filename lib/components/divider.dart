import 'package:flutter/material.dart';
import 'package:institute_app_v2/constants/textstyles.dart';

class HorizontalOrDivider extends StatelessWidget {
  const HorizontalOrDivider(
      {super.key,
      required this.label,
      required this.height,
      required this.color});

  final String label;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            height: height,
            color: color,
            endIndent: 16.0,
            thickness: 1.6,
          ),
        ),
        Text(label,
            style: AppTextStyle.h4TextStyle(
                color: Colors.grey.shade400,
                fontWeight: FontWeight.w500,
                size: 13.0)),
        Expanded(
          child: Divider(
            height: height,
            color: color,
            indent: 16.0,
            thickness: 1.6,
          ),
        ),
      ],
    );
  }
}
