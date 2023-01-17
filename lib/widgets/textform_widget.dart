import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/dimensions.dart';
import '../constants/textstyles.dart';
import '../constants/themes.dart';

class TextFormWidget extends StatelessWidget {
  const TextFormWidget({
    Key? key,
    required this.hint,
    required this.controller,
    required this.node,
    this.maxLength,
    required this.autovalidateMode,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.autofillHints,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType,
    this.onChanged,
    this.validator,
    this.textInputAction,
    required this.fillColor,
  }) : super(key: key);

  final String hint;
  final TextEditingController controller;
  final FocusNode node;
  final int? maxLength;
  final AutovalidateMode autovalidateMode;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final List<String>? autofillHints;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppTheme.appThemeColor,
      controller: controller,
      focusNode: node,
      autovalidateMode: autovalidateMode,
      autofillHints: autofillHints,
      inputFormatters: inputFormatters,
      textCapitalization: textCapitalization,
      keyboardType: keyboardType,
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText,
      obscuringCharacter: '\u25CF',
      maxLength: maxLength,
      textInputAction: textInputAction,
      style: AppTextStyle.h4TextStyle(fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        hintText: hint,
        isDense: true,
        counterText: '',
        filled: true,
        fillColor: fillColor,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: AppTextStyle.h4TextStyle(
            color: Colors.grey.shade400, fontWeight: FontWeight.w500),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(width: 1.0, color: Colors.red.shade200),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(width: 1.0, color: Colors.red.shade600),
        ),
      ),
    );
  }
}

class TextFormWidget2 extends StatelessWidget {
  const TextFormWidget2({
    Key? key,
    required this.hint,
    required this.controller,
    required this.node,
    this.maxLength,
    required this.autovalidateMode,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.autofillHints,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType,
    this.onChanged,
    this.validator,
    this.textInputAction,
    required this.fillColor,
    this.header,
    this.maxLines = 1,
    this.minLines = 1,
    this.counterText = '',
    this.suffix,
  }) : super(key: key);

  final String hint;
  final TextEditingController controller;
  final FocusNode node;
  final int? maxLength;
  final AutovalidateMode autovalidateMode;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final List<String>? autofillHints;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final Color fillColor;
  final String? header;
  final int? maxLines;
  final int? minLines;
  final String? counterText;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header == null
            ? const SizedBox()
            : Text(header!,
                style: AppTextStyle.h3TextStyle(fontWeight: FontWeight.w500)),
        header == null ? const SizedBox() : const SizedBox(height: 10.0),
        TextFormField(
          cursorColor: AppTheme.appThemeColor,
          controller: controller,
          focusNode: node,
          autovalidateMode: autovalidateMode,
          autofillHints: autofillHints,
          inputFormatters: inputFormatters,
          textCapitalization: TextCapitalization.sentences,
          keyboardType: keyboardType,
          onChanged: onChanged,
          validator: validator,
          obscureText: obscureText,
          obscuringCharacter: '\u25CF',
          maxLength: maxLength,
          maxLines: maxLines,
          minLines: minLines,
          textInputAction: textInputAction,
          style: AppTextStyle.h4TextStyle(fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            hintText: hint,
            isDense: true,
            counterText: counterText,
            filled: true,
            fillColor: fillColor,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            suffix: suffix,
            hintStyle: AppTextStyle.h4TextStyle(
                color: Colors.grey.shade400, fontWeight: FontWeight.w400),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide.none,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(width: 1.0, color: Colors.red.shade200),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(width: 1.0, color: Colors.red.shade600),
            ),
          ),
        ),
      ],
    );
  }
}

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    super.key,
    required this.controller,
    required this.node,
    this.onChanged,
    required this.hint,
    this.prefixIcon,
    this.onTap,
  });

  final TextEditingController controller;
  final FocusNode node;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final String hint;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: node,
      onChanged: onChanged,
      onTap: onTap,
      cursorColor: AppTheme.appThemeColor,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppTextFieldTheme.appTextFieldThemeShade1,
        hintText: hint,
        hintStyle: AppTextStyle.h4TextStyle(
            fontWeight: FontWeight.w400,
            size: 14.0,
            color: AppTextTheme.appTextThemeLight.withOpacity(0.46)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        prefixIcon: prefixIcon,
      ),
    );
  }
}

class TextFormWidget3 extends StatelessWidget {
  const TextFormWidget3({
    Key? key,
    required this.hint,
    required this.controller,
    required this.node,
    this.maxLength,
    required this.autovalidateMode,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.autofillHints,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType,
    this.onChanged,
    this.validator,
    this.textInputAction,
    required this.fillColor,
    required this.enabledBorderColor,
  }) : super(key: key);

  final String hint;
  final TextEditingController controller;
  final FocusNode node;
  final int? maxLength;
  final AutovalidateMode autovalidateMode;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final List<String>? autofillHints;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final Color fillColor;
  final Color enabledBorderColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppTheme.appThemeColor,
      controller: controller,
      focusNode: node,
      autovalidateMode: autovalidateMode,
      autofillHints: autofillHints,
      inputFormatters: inputFormatters,
      textCapitalization: textCapitalization,
      keyboardType: keyboardType,
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText,
      obscuringCharacter: '\u25CF',
      maxLength: maxLength,
      textInputAction: textInputAction,
      style: AppTextStyle.h4TextStyle(fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        hintText: hint,
        isDense: true,
        counterText: '',
        filled: true,
        fillColor: fillColor,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: AppTextStyle.h4TextStyle(
            color: Colors.black26, fontWeight: FontWeight.w500),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(width: 1.6, color: enabledBorderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide:
              const BorderSide(width: 1.6, color: AppTheme.appThemeColorShade1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(width: 1.6, color: Colors.red.shade200),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(width: 1.6, color: Colors.red.shade600),
        ),
      ),
    );
  }
}

class SearchFieldWidget2 extends StatelessWidget {
  const SearchFieldWidget2(
      {super.key,
      required this.controller,
      required this.node,
      required this.onTap,
      required this.hint,
      required this.icon,
      this.onChanged,
      this.autofocus = false});

  final TextEditingController controller;
  final FocusNode node;
  final VoidCallback onTap;
  final String hint;
  final IconData icon;
  final Function(String)? onChanged;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: node,
      autofocus: autofocus,
      cursorColor: AppTheme.appThemeColor,
      onTap: onTap,
      onChanged: onChanged,
      decoration: InputDecoration(
        fillColor: AppTextFieldTheme.appTextFieldThemeShade1,
        filled: true,
        hintText: hint,
        hintStyle: AppTextStyle.h4TextStyle(color: Colors.black54),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        isDense: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none),
        prefixIconConstraints: const BoxConstraints(
            minWidth: 40.0, minHeight: 20.0, maxWidth: 40.0),
        prefixIcon: Icon(
          icon,
          size: AppIconDimensions.appIconSystemSize,
          color: node.hasFocus ? AppTheme.appThemeColor : Colors.black54,
        ),
      ),
    );
  }
}
