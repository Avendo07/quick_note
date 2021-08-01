import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quick_note/core/local_services/Notification.dart';
import 'package:quick_note/core/local_services/routingHome.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String t = "Hello";
  String t2 = "Hello";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (details) {
          route(details, "/home", context);
        },
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(t),
                Text(t2),
                ElevatedButton(
                  onPressed: () async {
                    print("Hello");
                    final int helloAlarmID = 0;
                    /*await AndroidAlarmManager.cancel(helloAlarmID);
                    await AndroidAlarmManager.initialize();
                    await AndroidAlarmManager.periodic(const Duration(seconds: 10), helloAlarmID, triggerNotification);*/
                    triggerNotification();
                  },
                  child: Text("Start Process"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void triggerNotification(){
  Notifications().generateNotification("Notification", "HI How are u");
}
