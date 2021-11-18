import 'package:flutter/material.dart';
import 'package:parcial_mapa/app/ui/pages/home/home_page.dart';

void main() {
  runApp(AppMaps());
}

class AppMaps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Maps Parcial',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}
