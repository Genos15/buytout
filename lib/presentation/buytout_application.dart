import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class BuytoutApplication extends StatelessWidget {
  const BuytoutApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Readige',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: TextDimens.baseSize),
        ),
        // textTheme: GoogleFonts.interTextTheme(textTheme),
        // brightness: brightness,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
        // dividerTheme: DividerThemeData(color: Colors.black.withOpacity(.04)),
        // scaffoldBackgroundColor: from(context).scaffoldBackground,
      ),
      home: const HomeUI(),
      // home: const CartUI(products: {}),
      // home: const ProductUI(),
    );
  }
}
