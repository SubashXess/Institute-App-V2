import 'package:flutter/material.dart';
import '../constants/textstyles.dart';
import '../constants/themes.dart';

class ResendTextButton extends StatelessWidget {
  const ResendTextButton({
    Key? key,
    required this.resend,
    required this.onSend,
    required this.timer,
    required this.size,
  }) : super(key: key);

  final Size size;
  final bool resend;
  final VoidCallback onSend;
  final int timer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Don\'t receive OTP code? ',
              style: AppTextStyle.h4TextStyle(fontWeight: FontWeight.w400)),
          GestureDetector(
            onTap: resend ? null : onSend,
            child: Text(
              resend ? 'Try again in ${timer}s' : 'Resend Code',
              style: AppTextStyle.h4TextStyle(
                fontWeight: FontWeight.w700,
                color: AppTheme.appThemeColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
