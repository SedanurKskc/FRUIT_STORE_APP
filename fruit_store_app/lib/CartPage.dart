import 'package:flutter/material.dart';
import 'package:fruit_store_app/widges/BottomTotalBar.dart';
import 'package:fruit_store_app/widges/CartItemSamples.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 28,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "My Cart",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFFFB608),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 1,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Icon(
                    Icons.notifications,
                    size: 30,
                    color: Color(0XFFFFB608),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            color: Colors.white,
            child: Column(
              children: [
                CheckboxListTile(
                  activeColor: Color(0XFFFFB608),
                  value: checkbox,
                  title: Text(
                    "Select all items",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onChanged: (newValue) {
                    setState(() {
                      checkbox = newValue!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity
                      .leading, //checkbox'ı başa almak için
                ),
                Divider(
                  height: 30,
                  thickness: 1, //çizgi kalınlığı belirler
                ),
                CartItemSamples(),
                Divider(
                  height: 30,
                  thickness: 1,
                ),
                CartItemSamples(),
                Divider(
                  height: 30,
                  thickness: 1,
                ),
                CartItemSamples(),
                Divider(
                  height: 30,
                  thickness: 1,
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 8,
                          spreadRadius: 1,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Sub-Total:",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 210,
                            ),
                            Text("\$100",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                        Divider(
                          height: 15,
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            Text(
                              "Delivery Fee:",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 200,
                            ),
                            Text("\$20",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                        Divider(
                          height: 15,
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            Text(
                              "Discount:",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 220,
                            ),
                            Text("-\$10",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomTotalBar(),
    );
  }
}
