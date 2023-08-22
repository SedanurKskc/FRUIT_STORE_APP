import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruit_store_app/CartPage.dart';
import 'package:fruit_store_app/DetailsPage.dart';
import 'package:fruit_store_app/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0XFFF7F5F8),
        ),
        routes: {
          "/": (context) => HomePage(),
          "detailspage":(context)=>DetailsPage(),
          "cartpage":(context)=>CartPage(),

        });
  }
}
