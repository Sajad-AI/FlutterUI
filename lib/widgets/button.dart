import 'package:flutter/material.dart';
import 'package:flutterui_web/constant/styles.dart';
import 'package:get/get.dart';
import 'package:flutterui_web/constant/colors.dart';
import 'package:flutterui_web/constant/dimens.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final double? width;
  final Color? textColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final Widget? icon;
  final TextStyle? style;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
    this.width,
    this.textColor,
    this.backgroundColor,
    this.borderColor,
    this.icon,
    this.style,
    this.padding,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
      elevation: 0,
      textStyle: style ?? MyStyles.button,
      primary: backgroundColor ?? MyColors.white,
      onPrimary: textColor ?? MyColors.grey05,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular( borderRadius ?? MyDimens.buttonRadius),
        ),
        side: BorderSide(color: borderColor ?? MyColors.border, width: MyDimens.borderWidth, )
      ),
    );

    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: width,
      ),
      child: ElevatedButton.icon(
        icon: icon ?? const SizedBox(),
        onPressed: onPressed,
        label: Text(
          text,
        ),
        style: buttonStyle,
      ),
    );
  }
}
