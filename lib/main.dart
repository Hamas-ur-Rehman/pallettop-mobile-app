import 'package:flutter/material.dart';
import 'package:pallettop/views/HomePage.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void didChangeDependencies() {
    precacheImage(const AssetImage("images/banner0.jpg"), context);
    precacheImage(const AssetImage("images/banner1.jpg"), context);
    precacheImage(const AssetImage("images/banner2.jpg"), context);
    precacheImage(const AssetImage("images/banner3.jpg"), context);
    precacheImage(const AssetImage("images/map.png"), context);
    precacheImage(const AssetImage("images/truck.png"), context);
    precacheImage(const AssetImage("images/deliver.jpg"), context);
    precacheImage(const AssetImage("images/collect.jpg"), context);

    super.didChangeDependencies();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pallettop',
      theme: ThemeData(
        primaryColor: const Color(0xff3054bf),
      ),
      home: const HomePage(),
    );
  }
}
