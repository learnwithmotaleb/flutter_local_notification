import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'local_notification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalNotification.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter_local_notification',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
