import 'package:flutter/material.dart';
import 'package:pallettop/views/HomePage.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
