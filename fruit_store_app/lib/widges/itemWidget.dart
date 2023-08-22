import 'package:flutter/material.dart';
import 'package:fruit_store_app/DetailsPage.dart';

class itemWidget extends StatelessWidget {
  const itemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        childAspectRatio: 0.63, //boyunu belirler
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        shrinkWrap: true,
        children: [
          for (int i = 1; i < 6; i++)
            Padding(
              padding:
                  const EdgeInsets.only(left: 5, right: 8, bottom: 8, top: 8),
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Color(0XFFF7F5F8),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 3,
                        spreadRadius: 2,
                        color: Color(0XFFF7F5F8).withOpacity(0.2)),
                  ],
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsPage(),
                              ));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Image.asset("images/$i.png"),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 15,
                        ),
                        child: Text(
                          "Item Name",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Text("\$50",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                )),
                            Text(
                              "/1KG",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                            Icon(
                              Icons.favorite_border,
                              color: Colors.orange,
                            )
                          ],
                        ),
                      )
                    ]),
              ),
            )
        ],
      ),
    );
  }
}
