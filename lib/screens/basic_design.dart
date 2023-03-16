import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg')),
          title(),
          ButtonsSection(),
          Container(
            padding: EdgeInsets.all(20),
            child: Text('Laboris nisi voluptate aute in est aliquip. Ullamco qui laboris veniam amet do et ut labore ad ex aliqua consectetur. Ex deserunt pariatur quis dolore. Velit irure incididunt enim officia labore tempor qui ut proident veniam dolore. Ad proident labore amet aliqua nulla ad reprehenderit nostrud reprehenderit consectetur consequat incididunt amet. Proident mollit tempor voluptate ea in. Ea ut sit commodo tempor ex eu nulla Lorem commodo magna irure qui sunt.'))
        ],
      ),
    );
  }
}

class title extends StatelessWidget {
  const title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschien lake campgorund',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Oeschien lake Kangester, Switzerland',
                  style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonItem(
            icon: Icons.phone,
            text: 'Call',
          ),
          ButtonItem(
            icon: Icons.navigation_sharp,
            text: 'Route',
          ),
          ButtonItem(
            icon: Icons.share,
            text: 'Share',
          ),
        ],
      ),
    );
  }
}

class ButtonItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const ButtonItem({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(icon, color: Colors.blue[500],), Text(text, style: TextStyle(color: Colors.blue[500]),)],
    );
  }
}
