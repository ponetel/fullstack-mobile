
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_pr/components/bottomNavigator_widget.dart';
import 'package:restaurant_pr/components/messageHelper.dart';
import 'package:restaurant_pr/provider/product_provider.dart';
//import 'package:restaurant_pr/view/home_view.dart';
//import 'package:cupertino_icons/cupertino_icons.dart';
//import 'package:restaurant_pr/view/tester_view.dart';

void main (){
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> ProductProvider()..getProduct()),
    ],
    child: MyApp(),)
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      scaffoldMessengerKey: Messagehelper.ScaffoldMessengerKey,
      home: BottomnavigatorWidget(),
    );
  }
}
