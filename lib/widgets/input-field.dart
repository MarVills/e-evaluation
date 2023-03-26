import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget inputField({
  @required controller,
  @required validator,
  // ignore: avoid_init_to_null
  icon: null,
  @required hint,
  borderRadius: 8.0,
  borderColor: const Color(0xFF664805),
  borderWidth: 2.0,
  onFocusBorderColor: const Color(0xFF9E9E9E),
  type: TextInputType.text,
  onChange: "",
  textAlign: TextAlign.left,
  inputFormatters: const <TextInputFormatter>[],
  hasBorder: true,
  hintColor: Colors.grey,
  fieldColor: Colors.white,
  fontSize: 15.0,
  verticalPadding: 15.0,
  horizontaPadding: 10.0,
  enabled: true,
  autoValidateMode: AutovalidateMode.onUserInteraction,
  isObscureText: false,
}) {
  return TextFormField(
    textAlign: textAlign,
    inputFormatters: inputFormatters,
    onChanged: onChange == "" ? (text) {} : onChange,
    controller: controller,
    validator: validator,
    keyboardType: type,
    autovalidateMode: autoValidateMode,
    style: TextStyle(fontSize: fontSize),
    enabled: enabled,
    obscureText: isObscureText,
    decoration: InputDecoration(
      filled: true,
      fillColor: fieldColor,
      isDense: true,
      // prefixIcon: icon,
      hintText: hint,
      hintStyle: TextStyle(color: Colors.grey[600]),
      contentPadding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontaPadding),
      errorStyle: TextStyle(
          // backgroundColor: Colors.white.withOpacity(0.8),
          // height: 2,
          ),

      border: OutlineInputBorder(
        borderSide: hasBorder ? BorderSide(color: borderColor, width: borderWidth) : BorderSide(width: 0, style: BorderStyle.none),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: hasBorder ? BorderSide(color: onFocusBorderColor, width: borderWidth) : BorderSide(width: 0, style: BorderStyle.none),
        // BorderSide(color: onFocusBorderColor, width: borderWidth),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: hasBorder ? BorderSide(color: borderColor, width: borderWidth) : BorderSide(width: 0, style: BorderStyle.none),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
    ),
  );
}
