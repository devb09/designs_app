import 'package:design_app/screens/home_screen.dart';
import 'package:design_app/screens/scroll_deisgn.dart';
import 'package:flutter/material.dart';
import 'package:design_app/screens/basic_design.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Color.fromRGBO(0, 0, 0, 0.4),
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_design': ( _ ) => BasicDesignScreen(),
        'scroll_design': ( _ ) => ScrollScreen(),
        'home_screen': ( _ ) => HomeScreen(),
        },
    );
  }
}
