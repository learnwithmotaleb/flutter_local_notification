import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locacl_notification/local_notification.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Local Notification'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(onPressed: (){
              LocalNotification.showSimpleNotification(
                  title: "Simple notification title",
                  body: "Simple notification body",
                  payload: "Simple notification of the description hello flutter developer");
            },
              icon: Icon(Icons.notifications),
              label: Text("Simple Notification"),
            )
          ],
        ),
      ),

    );
  }
}
