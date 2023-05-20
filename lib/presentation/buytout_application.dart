import 'package:buytout/presentation/views/home/ui/home_view.dart';
import 'package:flutter/material.dart';

class BuytoutApplication extends StatelessWidget {
  const BuytoutApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        // textTheme: GoogleFonts.interTextTheme(textTheme),
        // brightness: brightness,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
        // dividerTheme: DividerThemeData(color: Colors.black.withOpacity(.04)),
        // scaffoldBackgroundColor: from(context).scaffoldBackground,
      ),
      home: const HomeView(),
    );
  }
}