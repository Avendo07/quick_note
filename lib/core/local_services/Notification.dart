import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Notifications{
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  static AndroidNotificationDetails androidPlatformChannelSpecifics;
  static NotificationDetails platformChannelSpecifics;

  void initialise() async {
    /*print("Initialised");
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
            '4', 'nots', 'Description',
            importance: Importance.max,
            priority: Priority.low,
            showWhen: false);
    platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics);*/

    flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
// initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    const AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('mipmap/ic_launcher');
    final InitializationSettings initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid,);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);

    androidPlatformChannelSpecifics =
    AndroidNotificationDetails(
        'your channel id', 'your channel name', 'your channel description',
        importance: Importance.max,
        priority: Priority.high,
        showWhen: false);
    platformChannelSpecifics =
    NotificationDetails(android: androidPlatformChannelSpecifics);

  }

  void generateNotification(String title, String bodyText){
    print("Triggered");
    flutterLocalNotificationsPlugin.show(
        0, title, bodyText, platformChannelSpecifics,
        payload: 'item x', );
  }
}