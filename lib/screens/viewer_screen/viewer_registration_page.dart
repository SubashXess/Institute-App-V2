import 'package:flutter/material.dart';
import 'package:institute_app_v2/constants/textstyles.dart';
import 'package:institute_app_v2/constants/themes.dart';
import 'package:institute_app_v2/utilities/validators.dart';
import 'package:institute_app_v2/widgets/rounded_button_widget.dart';
import 'package:institute_app_v2/widgets/textform_widget.dart';

class ViewerRegistrationPage extends StatefulWidget {
  const ViewerRegistrationPage({super.key});

  @override
  State<ViewerRegistrationPage> createState() => _ViewerRegistrationPageState();
}

class _ViewerRegistrationPageState extends State<ViewerRegistrationPage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _fnameController;
  late TextEditingController _lnameController;
  late TextEditingController _localityController;
  late TextEditingController _cityController;
  late TextEditingController _stateController;

  late FocusNode _fnameNode;
  late FocusNode _lnameNode;
  late FocusNode _localityNode;
  late FocusNode _cityNode;
  late FocusNode _stateNode;

  bool _autovalidateMode = false;

  @override
  void initState() {
    super.initState();
    _fnameController = TextEditingController()..addListener(onListen);
    _lnameController = TextEditingController()..addListener(onListen);
    _localityController = TextEditingController()..addListener(onListen);
    _cityController = TextEditingController()..addListener(onListen);
    _stateController = TextEditingController()..addListener(onListen);

    _fnameNode = FocusNode();
    _lnameNode = FocusNode();
    _localityNode = FocusNode();
    _cityNode = FocusNode();
    _stateNode = FocusNode();
  }

  @override
  void dispose() {
    _fnameController.dispose();
    _lnameController.dispose();
    _localityController.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _fnameNode.dispose();
    _lnameNode.dispose();
    _localityNode.dispose();
    _cityNode.dispose();
    _stateNode.dispose();
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
        body: Container(
          width: size.width,
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Some Details'.toUpperCase(),
                      style: AppTextStyle.h2TextStyle()),
                  // const SizedBox(height: 10.0),
                  // Text('Let us know your name so tutors can contact you.',
                  //     style: AppTextStyle.h4TextStyle(
                  //         color: AppTextTheme.appTextThemeLight)),
                  SizedBox(height: size.height * 0.036),
                  TextFormWidget(
                    hint: 'First name',
                    controller: _fnameController,
                    node: _fnameNode,
                    autovalidateMode: _autovalidateMode
                        ? AutovalidateMode.onUserInteraction
                        : AutovalidateMode.disabled,
                    fillColor: _fnameNode.hasFocus
                        ? AppTheme.appThemeColor.withOpacity(0.08)
                        : AppTextFieldTheme.appTextFieldTheme,
                    keyboardType: TextInputType.name,
                    textCapitalization: TextCapitalization.words,
                    textInputAction: TextInputAction.next,
                    autofillHints: const [
                      AutofillHints.namePrefix,
                      AutofillHints.name,
                      AutofillHints.givenName
                    ],
                    validator: (value) =>
                        FormValidators.fNameValidation(value!),
                  ),
                  const SizedBox(height: 10.0),
                  TextFormWidget(
                    hint: 'Surename',
                    controller: _lnameController,
                    node: _lnameNode,
                    autovalidateMode: _autovalidateMode
                        ? AutovalidateMode.onUserInteraction
                        : AutovalidateMode.disabled,
                    fillColor: _lnameNode.hasFocus
                        ? AppTheme.appThemeColor.withOpacity(0.08)
                        : AppTextFieldTheme.appTextFieldTheme,
                    keyboardType: TextInputType.name,
                    textCapitalization: TextCapitalization.words,
                    textInputAction: TextInputAction.done,
                    autofillHints: const [
                      AutofillHints.nameSuffix,
                      AutofillHints.familyName
                    ],
                    validator: (value) =>
                        FormValidators.lNameValidation(value!),
                  ),
                  // const SizedBox(height: 10.0),
                  // TextFormWidget(
                  //     hint: 'Locality',
                  //     controller: _localityController,
                  //     node: _localityNode,
                  //     autovalidateMode: _autovalidateMode
                  //         ? AutovalidateMode.onUserInteraction
                  //         : AutovalidateMode.disabled,
                  //     fillColor: _localityNode.hasFocus
                  //         ? AppTheme.appThemeColor.withOpacity(0.08)
                  //         : AppTextFieldTheme.appTextFieldTheme,
                  //     keyboardType: TextInputType.streetAddress,
                  //     textCapitalization: TextCapitalization.words,
                  //     textInputAction: TextInputAction.next,
                  //     autofillHints: const [
                  //       AutofillHints.streetAddressLine1,
                  //       AutofillHints.streetAddressLine2,
                  //       AutofillHints.streetAddressLine3,
                  //       AutofillHints.streetAddressLevel1,
                  //       AutofillHints.streetAddressLevel2,
                  //       AutofillHints.streetAddressLevel3,
                  //       AutofillHints.streetAddressLevel4,
                  //     ],
                  //     validator: (value) {
                  //       if (value!.isEmpty) {
                  //         return 'Required your locality';
                  //       } else {
                  //         return null;
                  //       }
                  //     }),
                  // const SizedBox(height: 10.0),
                  // TextFormWidget(
                  //     hint: 'Your city',
                  //     controller: _cityController,
                  //     node: _cityNode,
                  //     autovalidateMode: _autovalidateMode
                  //         ? AutovalidateMode.onUserInteraction
                  //         : AutovalidateMode.disabled,
                  //     fillColor: _cityNode.hasFocus
                  //         ? AppTheme.appThemeColor.withOpacity(0.08)
                  //         : AppTextFieldTheme.appTextFieldTheme,
                  //     keyboardType: TextInputType.streetAddress,
                  //     textCapitalization: TextCapitalization.words,
                  //     textInputAction: TextInputAction.next,
                  //     autofillHints: const [AutofillHints.addressCity],
                  //     validator: (value) {
                  //       if (value!.isEmpty) {
                  //         return 'Required your city';
                  //       } else {
                  //         return null;
                  //       }
                  //     }),
                  // const SizedBox(height: 10.0),
                  // TextFormWidget(
                  //     hint: 'State/Province',
                  //     controller: _stateController,
                  //     node: _stateNode,
                  //     autovalidateMode: _autovalidateMode
                  //         ? AutovalidateMode.onUserInteraction
                  //         : AutovalidateMode.disabled,
                  //     fillColor: _stateNode.hasFocus
                  //         ? AppTheme.appThemeColor.withOpacity(0.08)
                  //         : AppTextFieldTheme.appTextFieldTheme,
                  //     keyboardType: TextInputType.streetAddress,
                  //     textCapitalization: TextCapitalization.words,
                  //     textInputAction: TextInputAction.done,
                  //     autofillHints: const [
                  //       AutofillHints.addressState,
                  //       AutofillHints.addressCityAndState
                  //     ],
                  //     validator: (value) {
                  //       if (value!.isEmpty) {
                  //         return 'Required your state/province';
                  //       } else {
                  //         return null;
                  //       }
                  //     }),
                  SizedBox(height: size.height * 0.036),
                  RoundedButtonWidget(
                    size: size,
                    color: _fnameController.text.length < 4 ||
                            _lnameController.text.length < 3
                        ? Colors.grey.shade400
                        : AppTheme.appThemeColor,
                    label: Text(
                      _fnameController.text.length < 4 ||
                              _lnameController.text.length < 3
                          ? 'Enter your name'
                          : 'Continue',
                      style: AppTextStyle.h3TextStyle(
                        size: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        FocusScope.of(context).unfocus();
                        setState(() {
                          _autovalidateMode = false;
                        });
                        print('success');
                      } else {
                        setState(() {
                          _autovalidateMode = true;
                        });
                        print('error');
                      }
                    },
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
