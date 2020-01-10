import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import './screens/cart_screen.dart';
import './screens/product_detail.dart';
import './screens/products_overview_screen.dart';
import './providers/products.dart';
import './providers/cart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop App',
        theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.redAccent,
            fontFamily: 'Lato'),
        home: ProductOverViewScreen(),
        routes: {
          ProductDetailScree.routeName: (ctx) => ProductDetailScree(),
          CartScreen.routeName:(ctx)=>CartScreen(),
        },
      ),
    );
  }
}
