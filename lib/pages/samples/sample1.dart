import 'package:flutter/material.dart';

class Sample1PageWidget extends StatefulWidget {
  const Sample1PageWidget({required Key key}) : super(key: key);

  @override
  _Sample1PageWidgetState createState() => _Sample1PageWidgetState();
}

class _Sample1PageWidgetState extends State<Sample1PageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
    );
  }
}
