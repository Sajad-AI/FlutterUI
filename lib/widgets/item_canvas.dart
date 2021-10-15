import 'package:flutter/material.dart';
import 'package:flutterui_web/constant/colors.dart';
import 'package:flutterui_web/constant/styles.dart';
import 'package:flutterui_web/pages/main/controller/controller.dart';
import 'package:flutterui_web/pages/main/models/component.dart';
import 'package:flutterui_web/utils/utils.dart';
import 'package:get/get.dart';

import 'text.dart';

class ItemCanvas extends StatelessWidget {
  MainController controller = Get.find();

  final Items items;

  ItemCanvas({
    Key? key,
    required this.items,
  }) : super(key: key);

  Rx<Color> borderColorHover = Colors.transparent.obs;

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return InkWell(
        onTap: ()=>{controller.currentWidget.value = items,
          Utils.showMessage(message: items.title.toString())
         },
        hoverColor: borderColorHover.value,
        focusColor: Colors.indigo,
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.blue, width: 10)
        ),
        child: DragTarget<Items>(
          builder: (context, candidateItems, rejectedItems) {
            print(items.code);
            return items.code ?? Container();
          },
          onAccept: (item) {
            if(items.type == WidgetType.main){
              items.child = item;
            }else if(items.type == WidgetType.none){
              items.code = item.code;
            }else if(items.type == WidgetType.single && items.title == 'Container'){
              items.child = item;

              items.code = Container(
                  width: 200,
                  height: 200,
                  color:Colors.yellow,
                  // child: items.child?.code ?? Text("container") ,
                  child:  items.child?.code == null
                      ? Text("hollo")
                      : ItemCanvas(items: items.child ?? Items(),)
              );

            }

            controller.updateCanvas();

          },
        ),
      );

    });
  }

  void _updateLocation(PointerEvent details) {
    borderColorHover.value = MyColors.blue05;
  }

  void _incrementExit(PointerEvent details) {
    borderColorHover.value = Colors.transparent;
  }
}
