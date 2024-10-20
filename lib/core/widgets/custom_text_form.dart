import 'package:flutter/material.dart';

class DTextFormField extends StatelessWidget {
  const DTextFormField({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    required this.keyboardType,
    this.onTap,
    this.suffixPressed,
    this.onChanged,
    this.onSubmitted,
    this.validate,
    this.obscureText=false,

  });

  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextInputType keyboardType;
  final bool obscureText ;
  final VoidCallback? onTap;
  final Function()? suffixPressed;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final FormFieldValidator? validate;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          suffixIcon: suffixIcon != null
              ? IconButton(onPressed: suffixPressed, icon: Icon(suffixIcon))
              : null,
          border: const OutlineInputBorder(),
          prefixIcon: Icon(prefixIcon)),
      obscureText: obscureText,
      keyboardType: keyboardType,
      onTap: onTap,
      onFieldSubmitted: onSubmitted,
      onChanged: onChanged,
      validator: validate,
    );
  }
}



class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.controller,
    this.isPassword = false,
    this.type,
    this.isClickable = true,
    this.onSubmit,
    this.onChange,
    this.onTap,
    this.validate,
    required this.label,
    required this.prefix,
    this.suffix,
    this.suffixPressed,
  }) : super(key: key);

  final TextEditingController? controller;
  final TextInputType? type;
  final void Function(String)? onSubmit;
  final void Function(String)? onChange;
  final void Function()? onTap;
  final bool isPassword;
  final String? Function(String?)? validate;
  final String label;
  final IconData prefix;
  final IconData? suffix;
  final void Function()? suffixPressed;
  final bool isClickable;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
          onPressed: suffixPressed,
          icon: Icon(
            suffix,
          ),
        )
            : null,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
