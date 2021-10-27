import 'dart:ui';


/* MVC */
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterui_web/constant/colors.dart';
import 'package:flutterui_web/constant/dimens.dart';
import 'package:flutterui_web/constant/images.dart';
import 'package:flutterui_web/constant/static_values.dart';
import 'package:flutterui_web/constant/strings.dart';
import 'package:flutterui_web/constant/styles.dart';
import 'package:flutterui_web/pages/main/models/component.dart';
import 'package:flutterui_web/pages/main/models/item_left_navigation.dart';
import 'package:flutterui_web/utils/authentication.dart';
import 'package:flutterui_web/utils/utils.dart';
import 'package:flutterui_web/widgets/appbar.dart';
import 'package:flutterui_web/widgets/button.dart';
import 'package:flutterui_web/widgets/custom_expansion_tile.dart';
import 'package:flutterui_web/widgets/divider.dart';
import 'package:flutterui_web/widgets/input.dart';
import 'package:flutterui_web/widgets/item_canvas.dart';
import 'package:flutterui_web/widgets/item_left_navigation.dart';
import 'package:flutterui_web/widgets/text.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../controller/controller.dart';

/* PARTS */
part 'body.dart';

class View extends StatelessWidget {
  const View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<LoginController>(
        initState: (state) {},
        builder: (_) {
          return Scaffold(
              backgroundColor: MyColors.background,
              appBar: getAppbar(title: _.text.toString(), iconStart: MyImages.icon),
              body: getBody(_));
        });
  }
}