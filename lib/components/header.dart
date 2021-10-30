import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ImageProvider backgroungImage =
        const AssetImage('assets/images/profile.png');

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [
              Text(
                'Good Morning',
                style: TextStyle(color: Colors.grey, fontSize: 13),
                textAlign: TextAlign.left,
              ),
              Text('Ian Kibandi',
                  style: TextStyle(color: Colors.grey, fontSize: 20))
            ],
          ),
          CircleAvatar(
            backgroundImage: backgroungImage,
          )
        ],
      ),
    );
  }
}
