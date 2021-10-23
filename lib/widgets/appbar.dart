import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterui_web/constant/colors.dart';
import 'package:flutterui_web/constant/dimens.dart';
import 'package:flutterui_web/constant/styles.dart';

AppBar getAppbar({required String title,
  IconData? icon,
  String? iconStart,
  Function()? onPressed,
  List<Widget>? actions}) {
  return AppBar(
    shape: const Border(bottom: BorderSide(color: MyColors.divider, width: MyDimens.divider)),
    centerTitle: false,
    backgroundColor: MyColors.header,
    title: Text(
        title,
        textAlign: TextAlign.start,
        style: MyStyles.h5.copyWith(color: MyColors.grey06),
    ),
    leadingWidth: 56,
    leading: iconStart == null
        ? const SizedBox()
        : Container(
      margin: const EdgeInsets.only(left: 16.0),
      child: SvgPicture.asset(
        iconStart,
        fit: BoxFit.contain,
      ),
    ),
    actions: actions,
    elevation: 0.0,
    titleSpacing: 0.0,
    automaticallyImplyLeading: false,
  );
}
