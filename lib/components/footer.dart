import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/constants.dart';

class Footer extends StatelessWidget {
  final ImageProvider image1 = const AssetImage('assets/images/img_1.png');
  final ImageProvider image2 = const AssetImage('assets/images/img_2.png');
  final ImageProvider image3 = const AssetImage('assets/images/img_3.png');
  final ImageProvider image4 = const AssetImage('assets/images/img_4.png');

  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      decoration: const BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Cart',
                  style: GoogleFonts.lato(color: Colors.black, fontSize: 20),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                  backgroundColor: primaryColor,
                  backgroundImage: image1,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                  backgroundColor: primaryColor,
                  backgroundImage: image2,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                  backgroundColor: primaryColor,
                  backgroundImage: image3,
                ),
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                '3',
                style: GoogleFonts.lato(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
