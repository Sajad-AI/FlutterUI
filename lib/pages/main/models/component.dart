import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Component {
  String title;
  String type;
  List<Items> items;

  Component({required this.title, required this.type, required this.items});

  @override
  String toString() {
    return '$title';
  }
}

class Items {
  int? id;
  WidgetType? type;
  Items? child;
  String? title;
  String? icon;
  Widget? code;
  List<MyValue>? values;



  Items({
    this.id,
    this.type,
    this.child,
    this.title,
    this.icon,
    this.code,
    this.values,
  });

  @override
  String toString() {
    return '{code : $code , child : $child}';
  }
}

class MyValue {
  String key;
  String value;



  MyValue({
    required this.key,
    required this.value,
  });

}

enum WidgetType { single, multi, silver, none, main }
