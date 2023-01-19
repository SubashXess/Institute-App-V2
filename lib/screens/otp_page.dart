// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:institute_app_v2/constants/themes.dart';
import 'package:institute_app_v2/providers/timer_providers.dart';
import 'package:institute_app_v2/widgets/rounded_button_widget.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:provider/provider.dart';
import '../constants/textstyles.dart';
import '../widgets/resend_text_button_widget.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  final _formKey = GlobalKey<FormState>();

  late OtpFieldController _otpController;

  String _code = '';

  @override
  void initState() {
    super.initState();
    _otpController = OtpFieldController();
  }

  @override
  void dispose() {
    _otpController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // Map<String, dynamic> args =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Text('Verify your\nmobile number',
                        textAlign: TextAlign.center,
                        style: AppTextStyle.h0TextStyle()),
                    SizedBox(height: size.height * 0.012),
                    Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        style: AppTextStyle.h4TextStyle(color: Colors.black45),
                        children: [
                          const TextSpan(text: 'We sent a verification code\n'),
                          const TextSpan(text: 'to '),
                          TextSpan(
                              text: '+91 9876543210',
                              style: AppTextStyle.h4TextStyle(
                                  color: AppTheme.appThemeColor,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.046),
                    OTPTextField(
                      controller: _otpController,
                      length: 6,
                      width: size.width - 64,
                      isDense: false,
                      textFieldAlignment: MainAxisAlignment.spaceEvenly,
                      fieldWidth: size.width / 6 - 22,
                      contentPadding:
                          const EdgeInsets.only(left: 2.0, top: 0.0),
                      fieldStyle: FieldStyle.box,
                      style: AppTextStyle.h2TextStyle(
                          color: AppTheme.appThemeColor),
                      keyboardType: TextInputType.number,
                      outlineBorderRadius: 10.0,
                      otpFieldStyle: OtpFieldStyle(
                        backgroundColor: Colors.black.withOpacity(0.04),
                        enabledBorderColor: Colors.black12,
                        focusBorderColor: AppTheme.appThemeColor,
                      ),
                      onChanged: (pin) {
                        setState(() {
                          _code = pin;
                        });
                      },
                      onCompleted: (pin) {},
                    ),
                    SizedBox(height: size.height * 0.036),
                    RoundedButtonWidget(
                      size: size,
                      color: _code.length < 6
                          ? Colors.grey.shade400
                          : AppTheme.appThemeColor,
                      label: Text(
                        _code.length < 6 ? 'Enter your OTP' : 'Verify',
                        style: AppTextStyle.h3TextStyle(
                          size: 14.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onTap: _code.length < 6
                          ? null
                          : () {
                              print('success');
                              print(_code);
                            },
                    ),
                    SizedBox(height: size.height * 0.056),
                    Consumer<ResendOTPTimerProvider>(
                        builder: (context, provider, child) {
                      return ResendTextButton(
                        size: size,
                        resend: provider.isResendAgain,
                        timer: provider.start,
                        onSend: () {
                          if (provider.isResendAgain) return;
                          provider.resend();
                          print('send');
                        },
                      );
                    }),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
