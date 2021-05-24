import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/commons/theme.dart';
import 'package:provider_demo/models/cart.dart';
import 'package:provider_demo/models/catalog.dart';
import 'package:provider_demo/screens/carts.dart';
import 'package:provider_demo/screens/catalog.dart';
import 'package:provider_demo/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context)=>CatalogModel()),
        ChangeNotifierProxyProvider<CatalogModel,Cart>(
          create: (context)=>Cart(),
          update: (context,catalog,cart){
            if(cart==null) throw ArgumentError.notNull('cart');
            cart.catalog = catalog;
            return cart;
          },
        )

      ],
      child: MaterialApp(
        title: 'Provider demo',
        theme: appTheme,
        initialRoute: '/',
        routes: {
          '/':(context) => Login(),
          '/catalog': (context)=>MyCatalog(),
          '/cart' : (context) => MyCart()
        },
      ),
    );
  }
}


