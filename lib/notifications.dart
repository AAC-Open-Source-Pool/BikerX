import 'package:bikerxx/login.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  final List<String> notifications = [
    "Your bike service is due!",
    "Service appointment scheduled for tomorrow.",
    "New service package available for your bike."
    // Add more notifications here
  ];

  NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: AppColors.redColor,
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons
                .notifications), // Add your custom icon for each notification
            title: Text(notifications[index]),
            onTap: () {
              // Add functionality when a notification is tapped
              // For example, navigate to a details page
            },
          );
        },
      ),
    );
  }
}
