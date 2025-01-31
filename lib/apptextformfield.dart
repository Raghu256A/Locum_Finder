import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final Color focusedBorderColor;
  final bool enable;
  final FocusNode? focusNode;
  final bool autofocus;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String? errorText;
  final TextInputAction? keyAction;
  final TextInputType? keyboardType;
  final int? length;
  final Color cursorColor;
  final Color textColor;
  final Color hintColor;


  const AppTextFormField({
    Key? key,
    required this.hintText,
    this.controller,
    this.enable = true,
    this.focusNode,
    this.autofocus = false,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.validator,
    this.errorText,
    this.keyAction,
    this.keyboardType,
    this.length,
    this.focusedBorderColor=Colors.black,
    this.textColor=Colors.black,
    this.hintColor=Colors.grey,
    required this.cursorColor,
  }) : super(key: key);

  get borderColor => focusedBorderColor;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return TextFormField(
      cursorColor: cursorColor,
      maxLength: (length == 0) ? null : length,
      controller: controller,
      enabled: enable,
      focusNode: focusNode,
      autofocus: autofocus,
      obscureText: obscureText,
      obscuringCharacter: '*',
      onChanged: onChanged,
      validator: validator,
      style: TextStyle(color:textColor ),
      keyboardType: (keyboardType == null) ? TextInputType.text : keyboardType,
      textInputAction: (keyAction == null) ? TextInputAction.next : keyAction,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: hintColor),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        labelText: hintText,
        contentPadding: EdgeInsets.only(left: 20,top: 5,bottom: 5),
        // errorText: errorText != null ? errorText!.t(context) : null,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: borderColor,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            width: 1.0,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}