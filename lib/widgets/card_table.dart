import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _singleCard(
              color: Colors.blue, icon: Icons.border_all, text: 'General'),
          _singleCard(
              color: Colors.pink, icon: Icons.car_rental, text: 'Transport'),
        ]),
        TableRow(children: [
          _singleCard(color: Colors.purple, icon: Icons.shop, text: 'Shopping'),
          _singleCard(
              color: Colors.greenAccent,
              icon: Icons.monetization_on_outlined,
              text: 'Bill'),
        ]),
        TableRow(children: [
          _singleCard(
              color: Colors.deepPurple, icon: Icons.cloud_circle, text: 'Cloud'),
          _singleCard(
              color: Colors.orange, icon: Icons.movie, text: 'Movie'),
        ]),
        TableRow(children: [
          _singleCard(
              color: Colors.lightBlue, icon: Icons.telegram, text: 'Telegram'),
          _singleCard(
              color: Colors.lightGreenAccent, icon: Icons.handshake_outlined, text: 'Peace'),
        ]),
      ],
    );
  }
}

class _singleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _singleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
          child: Container(
            // margin: const EdgeInsets.all(15),
            height: 160,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 30,
                  child: Icon(
                    icon,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  text,
                  style: TextStyle(color: color, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
