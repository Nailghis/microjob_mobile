import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:forsat_app/router/route_constants.dart';
import 'package:forsat_app/router/router.dart';

void main() {
  runApp(Forsat());
}

class Forsat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forsat app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: MyRouter.onGenerateRoute,
      initialRoute: homeRoute,
    );
  }
}
