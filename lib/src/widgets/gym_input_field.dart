import 'package:flutter/material.dart';
import 'package:gym_ui/src/shared/app_colors.dart';

class GymInputField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final Widget? leading;
  final Widget? trailing;
  final void Function()? trailingTap;
  final bool passwordVisibility;

  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  GymInputField({
    Key? key,
    required this.controller,
    this.placeholder = '',
    this.leading,
    this.trailing,
    this.trailingTap,
    this.passwordVisibility = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: passwordVisibility,
      style: const TextStyle(height: 1),
      decoration: InputDecoration(
        hintText: placeholder,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        filled: true,
        fillColor: kcVeryLightGreyColor,
        prefixIcon: leading,
        suffixIcon: trailing != null? GestureDetector(child: trailing, onTap: trailingTap,):null,
        border: circularBorder.copyWith(
            borderSide: const BorderSide(color: kcLightGreyColor)),
        errorBorder: circularBorder.copyWith(
            borderSide: const BorderSide(color: Colors.redAccent)),
        focusedBorder: circularBorder.copyWith(
            borderSide: const BorderSide(color: kcPrimaryColor)),
        enabledBorder: circularBorder.copyWith(
            borderSide: const BorderSide(color: kcLightGreyColor)),
      ),
    );
  }
}
