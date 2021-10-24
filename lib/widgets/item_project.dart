import 'package:flutter/material.dart';
import 'package:flutterui_web/constant/colors.dart';
import 'package:flutterui_web/widgets/text.dart';
import 'package:get/get.dart';
import 'package:flutterui_web/constant/dimens.dart';
import 'package:flutterui_web/constant/strings.dart';
import 'package:flutterui_web/constant/styles.dart';


class ItemProject extends StatelessWidget {
  // final FileList item;
  final Function() onTap;

  const ItemProject({
    Key? key,
    // required this.item,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MyDimens.radius),
          side: const BorderSide(color: MyColors.borderThirty)
        ),
        color: MyColors.white,
        elevation: 0.0,
        child: Column(
         children: [
           Container(
             color: MyColors.backgroundProjectImage,
             height: 200,
           ),
           Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14), child: Column(
             children: [
               TextPrimary(text: 'Untitled Project', style: MyStyles.h6.copyWith(fontWeight: FontWeight.w700, color: MyColors.text),),
               TextPrimary(text: 'Just created', style: MyStyles.subtitle2.copyWith(color: MyColors.grey06),)
             ],
           ),),
         ],
        ),
      ),
    );
  }
}

