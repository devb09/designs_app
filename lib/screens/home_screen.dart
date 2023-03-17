import 'package:flutter/material.dart';
import 'package:design_app/widgets/background.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background()
      ],
    );
  }
}