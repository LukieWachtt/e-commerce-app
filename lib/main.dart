import 'package:flutter/material.dart';
import 'package:ui_e_commerce/pages/authentication.dart';
import 'package:ui_e_commerce/pages/cart.dart';
import 'package:ui_e_commerce/pages/chatPage.dart';
import 'package:ui_e_commerce/pages/home.dart';
import 'package:ui_e_commerce/pages/itemPage.dart';
import 'package:ui_e_commerce/pages/messageListPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
       
        '/': (context) => HomePage(),
        'loginPage': (context) => LoginPage(),
        'cartPage': (context) => CartPage(),
        'itemPage': (context) => ItemPage(),
        'messageListPage': (context) => MessageListPage(),
        'chatPage': (context) => ChatPage(),
      },
    );
  }
}
