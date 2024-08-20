import 'package:flutter/material.dart';

class NotificationSettingsPage extends StatefulWidget {
  @override
  _NotificationSettingsPageState createState() => _NotificationSettingsPageState();
}

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  bool notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notification Settings')),
      body: SwitchListTile(
        title: Text('Enable Notifications'),
        value: notificationsEnabled,
        onChanged: (bool value) {
          setState(() {
            notificationsEnabled = value;
          });
        },
      ),
    );
  }
}
