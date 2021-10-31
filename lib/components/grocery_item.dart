import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/constants.dart';

class GroceryItem extends StatelessWidget {
  String productName;
  String category;
  int price;
  String imageLocation;

  GroceryItem(
      {required this.productName,
      required this.category,
      required this.price,
      required this.imageLocation});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.3,
      width: size.width * 0.45,
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          Image.asset(
            imageLocation,
            height: size.height * 0.3 * 0.7,
          ),
          Text(
            productName,
            style: GoogleFonts.lato(color: Colors.black, fontSize: 20.0),
          ),
          Text(
            category,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$$price/Kg',
                  style: GoogleFonts.lato(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SvgPicture.asset(
                  'assets/icons/heart.svg',
                  color: Colors.red,
                  height: 15,
                  width: 15,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
