import 'package:flutter/material.dart';
import 'package:grocery_app/components/footer.dart';
import 'package:grocery_app/components/grocery_item.dart';
import 'package:grocery_app/components/header.dart';
import 'package:grocery_app/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routename = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        bottom: false,
        child: Scaffold(
            // appBar: AppBar(
            //   title: Text(widget.title),
            // ),
            body: Container(
          color: Colors.white,
          child: Column(
            children: [
              const Header(),
              Container(
                child: Expanded(
                    child: GridView.count(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 8.0),
                  crossAxisCount: 2,
                  childAspectRatio: (size.width * 0.45) / (size.height * 0.3),
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                  children: [
                    GroceryItem(
                      productName: 'Cabbage',
                      category: 'Fruits',
                      imageLocation: 'assets/images/img_1.png',
                      price: 20,
                    ),
                    GroceryItem(
                      productName: 'Brocolli',
                      category: 'Fruits',
                      imageLocation: 'assets/images/img_2.png',
                      price: 20,
                    ),
                    GroceryItem(
                      productName: 'Pakcoy',
                      category: 'Fruits',
                      imageLocation: 'assets/images/img_4.png',
                      price: 20,
                    ),
                    GroceryItem(
                      productName: 'Pakcoy',
                      category: 'Fruits',
                      imageLocation: 'assets/images/img_3.png',
                      price: 20,
                    ),
                    GroceryItem(
                      productName: 'Pakcoy',
                      category: 'Fruits',
                      imageLocation: 'assets/images/img_4.png',
                      price: 20,
                    ),
                    GroceryItem(
                      productName: 'Pakcoy',
                      category: 'Fruits',
                      imageLocation: 'assets/images/img_4.png',
                      price: 20,
                    ),
                  ],
                )),
              ),
              Footer()
            ],
          ),
        )));
  }
}
