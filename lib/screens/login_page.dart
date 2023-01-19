import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:institute_app_v2/components/divider.dart';
import 'package:institute_app_v2/constants/boxshadow.dart';
import 'package:institute_app_v2/constants/textstyles.dart';
import 'package:institute_app_v2/constants/themes.dart';
import 'package:institute_app_v2/widgets/rounded_button_widget.dart';
import 'package:institute_app_v2/widgets/textform_widget.dart';

import '../constants/dimensions.dart';
import '../utilities/validators.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _phoneController;
  late FocusNode _phoneNode;

  bool _autovalidateMode = false;

  @override
  void initState() {
    super.initState();
    _phoneController = TextEditingController()..addListener(onListen);
    _phoneNode = FocusNode();
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _phoneController.removeListener(onListen);
    _phoneNode.dispose();
    super.dispose();
  }

  void onListen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100.0,
                    height: 100.0,
                    child: Image.asset(
                      'assets/temp/icons8-lego-250.png',
                      color: AppTheme.appThemeColor,
                    ),
                  ),
                  SizedBox(height: size.height * 0.056),
                  Text('Enter your\nmobile number',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.h0TextStyle()),
                  SizedBox(height: size.height * 0.012),
                  Text('We will send you a confirmation code',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.h4TextStyle(color: Colors.black45)),
                  SizedBox(height: size.height * 0.046),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormWidget3(
                          hint: 'Enter your number',
                          controller: _phoneController,
                          node: _phoneNode,
                          autofillHints: const [AutofillHints.telephoneNumber],
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                          maxLength: 10,
                          fillColor: _phoneNode.hasFocus
                              ? AppTheme.appThemeColor.withOpacity(0.08)
                              : AppTextFieldTheme.appTextFieldTheme,
                          autovalidateMode: _autovalidateMode
                              ? AutovalidateMode.onUserInteraction
                              : AutovalidateMode.disabled,
                          enabledBorderColor: _phoneController.text.isNotEmpty
                              ? AppTheme.appThemeColorShade1
                              : Colors.grey.shade200,
                          prefixIcon: Icon(
                            Icons.call_rounded,
                            size: AppIconDimensions.appIconSystemSize,
                            color: _phoneNode.hasFocus
                                ? AppTheme.appThemeColor
                                : _phoneController.text.isNotEmpty
                                    ? AppTheme.appThemeColorShade1
                                    : Colors.grey.shade400,
                          ),
                          suffixIcon: _phoneNode.hasFocus &&
                                  _phoneController.text.length > 5
                              ? InkWell(
                                  onTap: () => _phoneController.clear(),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        width: 20.0,
                                        height: 20.0,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppTheme.appThemeColorShade1,
                                        ),
                                        child: const Icon(
                                          Icons.close_rounded,
                                          size: 16.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : null,
                          validator: (value) =>
                              FormValidators.phoneValidation(value!),
                          onChanged: (value) {
                            setState(() {});
                          },
                        ),
                        const SizedBox(height: 16.0),
                        RoundedButtonWidget(
                          color: _phoneController.text.length < 10
                              ? Colors.grey.shade300
                              : AppTheme.appThemeColor,
                          size: size,
                          label: Text(
                            _phoneController.text.length < 10
                                ? 'Please enter your number'
                                : 'Send Code',
                            style: AppTextStyle.h3TextStyle(
                              size: 14.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onTap: _phoneController.text.length < 10
                              ? null
                              : () {
                                  if (_formKey.currentState!.validate()) {
                                    FocusScope.of(context).unfocus();
                                    setState(() {
                                      _autovalidateMode = false;
                                    });
                                  } else {
                                    setState(() {
                                      _autovalidateMode = true;
                                    });
                                  }
                                },
                        ),
                        HorizontalOrDivider(
                            label: 'Sign in with Google or Facebook',
                            height: size.height * 0.086,
                            color: Colors.grey.shade200),
                        RoundedOutlinedButton(
                          size: size,
                          icon: 'assets/icons/google.svg',
                          label: 'Continue with Google',
                        ),
                        const SizedBox(height: 16.0),
                        RoundedOutlinedButton(
                          size: size,
                          icon: 'assets/icons/facebook.svg',
                          label: 'Continue with Facebook',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
