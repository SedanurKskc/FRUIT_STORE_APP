import 'package:flutter/material.dart';
import 'package:fruit_store_app/CartPage.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration:
          BoxDecoration(color: Color.fromRGBO(238, 237, 237, 1), boxShadow: [
        BoxShadow(
          blurRadius: 2,
          spreadRadius: 3,
          color: Colors.grey.withOpacity(0.3),
        )
      ]),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(
                  Icons.home,
                  size: 35,
                  color: Colors.orange,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.search_rounded,
                  size: 35,
                  color: Colors.orange,
                ),
                Text(
                  "Explore",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartPage()));
                  },
                  child: Icon(
                    Icons.shopping_cart_checkout_outlined,
                    size: 35,
                    color: Colors.orange,
                  ),
                ),
                Text(
                  "My Cart",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.person,
                  size: 35,
                  color: Colors.orange,
                ),
                Text(
                  "Account",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
