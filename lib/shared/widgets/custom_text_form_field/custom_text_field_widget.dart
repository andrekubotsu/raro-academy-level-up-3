import 'package:flutter/material.dart';
import 'package:level_up_3/shared/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final Icon icon;
  final Widget? suffixIcon;
  final String label;
  final String helperText;
  final String? Function(String?) validator;
  final ValueChanged<String> onChanged;

  const CustomTextFormField({
    Key? key,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    required this.icon,
    this.suffixIcon,
    required this.label,
    this.controller,
    required this.validator,
    required this.onChanged,
    required this.helperText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: icon,
        suffixIcon: suffixIcon,
        labelText: label,
        labelStyle: TextStyle(color: Colors.black),
        hintText: helperText,
        hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.orange,
          ),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.red,
          ),
        ),
      ),
      validator: validator,
      onChanged: onChanged,
    );
  }
}
