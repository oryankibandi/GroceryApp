import 'package:flutter/material.dart';
import 'package:grocery_app/components/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routename = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Scaffold(
            // appBar: AppBar(
            //   title: Text(widget.title),
            // ),
            body: Container(
                color: Colors.white,
                child: Column(
                  children: const [
                    Header(),
                  ],
                ))));
  }
}
