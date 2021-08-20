import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_setstate/ana_sayfa.dart';
import 'package:provider_setstate/state_data.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => StateData(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider Deneme',
      theme: ThemeData(primaryColor: Colors.purpleAccent.shade700),
      home: AnaSayfa(),
    );
  }
}
