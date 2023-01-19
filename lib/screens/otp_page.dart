// ignore_for_file: avoid_print

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:institute_app_v2/constants/themes.dart';
import 'package:institute_app_v2/widgets/rounded_button_widget.dart';
import '../constants/textstyles.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _firstController;
  late TextEditingController _secondController;
  late TextEditingController _thirdController;
  late TextEditingController _fourController;
  late TextEditingController _fiveController;
  late TextEditingController _sixController;

  late FocusNode _firstNode;
  late FocusNode _secondNode;
  late FocusNode _thirdNode;
  late FocusNode _fourthNode;
  late FocusNode _fifthNode;
  late FocusNode _sixthNode;

  @override
  void initState() {
    super.initState();
    _firstController = TextEditingController();
    _secondController = TextEditingController();
    _thirdController = TextEditingController();
    _fourController = TextEditingController();
    _fiveController = TextEditingController();
    _sixController = TextEditingController();
    _firstNode = FocusNode();
    _secondNode = FocusNode();
    _thirdNode = FocusNode();
    _fourthNode = FocusNode();
    _fifthNode = FocusNode();
    _sixthNode = FocusNode();
  }

  @override
  void dispose() {
    _firstController.dispose();
    _secondController.dispose();
    _thirdController.dispose();
    _fourController.dispose();
    _firstController.dispose();
    _sixController.dispose();
    _firstNode.dispose();
    _secondNode.dispose();
    _thirdNode.dispose();
    _fourthNode.dispose();
    _fifthNode.dispose();
    _sixthNode.dispose();
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
                    SizedBox(
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OTPFieldWidget(
                            controller: _firstController,
                            node: _firstNode,
                            textInputAction: TextInputAction.next,
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                FocusScope.of(context)
                                    .requestFocus(_secondNode);
                              } else {
                                FocusScope.of(context).unfocus();
                              }
                            },
                          ),
                          OTPFieldWidget(
                            controller: _secondController,
                            node: _secondNode,
                            textInputAction: TextInputAction.next,
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                FocusScope.of(context).requestFocus(_thirdNode);
                              } else {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                          ),
                          OTPFieldWidget(
                            controller: _thirdController,
                            node: _thirdNode,
                            textInputAction: TextInputAction.next,
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                FocusScope.of(context)
                                    .requestFocus(_fourthNode);
                              } else {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                          ),
                          OTPFieldWidget(
                            controller: _fourController,
                            node: _fourthNode,
                            textInputAction: TextInputAction.next,
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                FocusScope.of(context).requestFocus(_fifthNode);
                              } else {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                          ),
                          OTPFieldWidget(
                            controller: _fiveController,
                            node: _fifthNode,
                            textInputAction: TextInputAction.next,
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                FocusScope.of(context).requestFocus(_sixthNode);
                              } else {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                          ),
                          OTPFieldWidget(
                            controller: _sixController,
                            node: _sixthNode,
                            textInputAction: TextInputAction.done,
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                FocusScope.of(context).unfocus();
                              } else {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.036),
                    RoundedButtonWidget(
                      size: size,
                      color: _firstController.text.isEmpty &&
                              _secondController.text.isEmpty &&
                              _thirdController.text.isEmpty &&
                              _fourController.text.isEmpty &&
                              _fiveController.text.isEmpty &&
                              _sixController.text.isEmpty
                          ? Colors.grey.shade400
                          : AppTheme.appThemeColor,
                      label: Text(
                        _firstController.text == '' &&
                                _secondController.text == '' &&
                                _thirdController.text == '' &&
                                _fourController.text == '' &&
                                _fiveController.text == '' &&
                                _sixController.text == ''
                            ? 'Enter OTP'
                            : 'Verify',
                        style: AppTextStyle.h3TextStyle(
                          size: 14.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onTap: _firstController.text.isEmpty &&
                              _secondController.text.isEmpty &&
                              _thirdController.text.isEmpty &&
                              _fourController.text.isEmpty &&
                              _fiveController.text.isEmpty &&
                              _sixController.text.isEmpty
                          ? null
                          : () {
                              print('success');
                            },
                    ),
                    SizedBox(height: size.height * 0.056),
                    ResendTextButton(
                      size: size,
                      resend: true,
                      timer: '45',
                      onSend: () {
                        print('send');
                      },
                    ),
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
  final String timer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(resend ? 'Resend code after  ' : 'Don\'t receive OTP code? ',
              style: AppTextStyle.h4TextStyle(fontWeight: FontWeight.w400)),
          GestureDetector(
            onTap: resend ? null : onSend,
            child: Text(
              resend ? '${timer}s' : 'Resend Code',
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

class OTPFieldWidget extends StatelessWidget {
  const OTPFieldWidget({
    Key? key,
    required this.node,
    required this.controller,
    required this.textInputAction,
    this.onChanged,
  }) : super(key: key);

  final FocusNode node;
  final TextEditingController controller;
  final TextInputAction textInputAction;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42.0,
      // height: 76.0,
      child: TextFormField(
        focusNode: node,
        controller: controller,
        keyboardType: TextInputType.number,
        cursorColor: AppTheme.appThemeColor,
        maxLength: 1,
        maxLines: 1,
        textAlign: TextAlign.center,
        onChanged: onChanged,
        textInputAction: textInputAction,
        style: AppTextStyle.h2TextStyle(fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade300,
          contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
          // isDense: true,
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              width: 1.6,
              color: AppTheme.appThemeColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              width: 1.6,
              color: AppTheme.appThemeColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              width: 1.6,
              color: AppTheme.appThemeColor,
            ),
          ),
        ),
      ),
    );
  }
}
