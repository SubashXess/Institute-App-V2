import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/boxshadow.dart';
import '../constants/textstyles.dart';
import '../constants/themes.dart';

class RoundedButtonWidget extends StatelessWidget {
  const RoundedButtonWidget({
    Key? key,
    required this.size,
    this.color,
    required this.label,
    this.onTap,
  }) : super(key: key);

  final Size size;
  final Color? color;
  final Widget label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        width: size.width,
        height: size.height * 0.064,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: color,
            boxShadow: [
              AppBoxShadow.s0BoxShadow(color: Colors.black.withOpacity(0.08)),
            ]),
        child: Center(
          child: label,
        ),
      ),
    );
  }
}

class RoundedOutlinedButton extends StatelessWidget {
  const RoundedOutlinedButton({
    Key? key,
    required this.size,
    required this.icon,
    required this.label,
  }) : super(key: key);

  final Size size;
  final String icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 46.0,
      decoration: BoxDecoration(
          color: AppContainerTheme.appContainerDefaultTheme,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(width: 1.0, color: Colors.grey.shade300),
          boxShadow: [
            AppBoxShadow.s0BoxShadow(color: Colors.black.withOpacity(0.036))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(icon, height: 24.0),
          const SizedBox(width: 10.0),
          Text(
            label,
            style: AppTextStyle.h4TextStyle(
                fontWeight: FontWeight.w500,
                color: AppTextTheme.appTextThemeLight),
          ),
        ],
      ),
    );
  }
}
