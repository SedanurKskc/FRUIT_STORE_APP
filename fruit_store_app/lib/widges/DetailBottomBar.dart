import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailBottomBar extends StatelessWidget {
  const DetailBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 60,
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 202, 76),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                CupertinoIcons.cart_fill,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 60,
              width: 220,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 202, 76),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Buy Now",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1,//harf arası boşluk
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
