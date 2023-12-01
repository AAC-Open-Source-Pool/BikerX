import 'package:bikerxx/auth_controller.dart';
import 'package:bikerxx/login.dart';
import 'package:bikerxx/my_bikes.dart';
import 'package:bikerxx/my_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  AuthController authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Account'),
        backgroundColor: AppColors.redColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              authController.myUser.value.name == null
                  ? 'Mark Novoak'
                  : authController.myUser.value.name!,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            const SizedBox(height: 8),
            Text(
              authController.myUser.value.phno == null
                  ? '9725324520'
                  : authController.myUser.value.phno!,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildMenuCard('Past Services', Icons.history, Colors.blue,
                      () {
                    // Handle tap for 'Past Services'
                    _handleMenuTap(context, 'Past Services');
                  }),
                  _buildMenuCard(
                      'Upcoming Services', Icons.schedule, Colors.green, () {
                    // Handle tap for 'Upcoming Services'
                    _handleMenuTap(context, 'Upcoming Services');
                  }),
                  _buildMenuCard('My Bikes', Icons.motorcycle, Colors.orange,
                      () {
                    // Handle tap for 'Bikes'
                    _handleMenuTap(context, 'Bikes');
                  }),
                  _buildMenuCard('Account Details', Icons.person, Colors.purple,
                      () {
                    // Handle tap for 'Account Details'
                    _handleMenuTap(context, 'Account Details');
                  }),
                  _buildMenuCard('Preferences', Icons.settings, Colors.teal,
                      () {
                    // Handle tap for 'Preferences'
                    _handleMenuTap(context, 'Preferences');
                  }),
                  _buildMenuCard(
                      'Security & Privacy', Icons.security, Colors.red, () {
                    // Handle tap for 'Security & Privacy'
                    _handleMenuTap(context, 'Security & Privacy');
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard(
      String title, IconData icon, Color color, VoidCallback onTap) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 32,
                color: color,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleMenuTap(BuildContext context, String menuItem) {
    // Implement the logic for each menu item tap
    // For demonstration, navigate to a different page for each menu item
    switch (menuItem) {
      case 'Past Services':
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PastServicesPage()));
        break;
      case 'Upcoming Services':
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => UpcomingServicesPage()));
        break;
      case 'Bikes':
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const BikeRegistrationPage()));
        break;
      case 'Account Details':
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => AccountDetailsPage()));
        break;
      case 'Preferences':
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const PreferencesPage()));
        break;
      case 'Security & Privacy':
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SecurityPrivacyPage()));
        break;
      // Add more cases for additional menu items
    }
  }
}

class ServiceRecord {
  final String date;
  final String description;
  final double cost;
  final String bikeImage;
  final String timeSlot;

  ServiceRecord({
    required this.date,
    required this.description,
    required this.cost,
    required this.bikeImage,
    required this.timeSlot,
  });
}

class PastServicesPage extends StatelessWidget {
  final List<ServiceRecord> pastServices = [
    ServiceRecord(
      date: '19-04-2023',
      description: 'Periodic services',
      cost: 14000.0,
      bikeImage:
          'https://wallup.net/wp-content/uploads/2019/09/632200-bmw-s1000-rr-super-bike-motorcycles-race-speed-motors-2.jpg',
      timeSlot: '1:00 PM - 4:00 PM',
    ),
    ServiceRecord(
      date: '25-11-2022',
      description: 'Wheel Care',
      cost: 6500.0,
      bikeImage:
          'https://wallup.net/wp-content/uploads/2019/09/632200-bmw-s1000-rr-super-bike-motorcycles-race-speed-motors-2.jpg',
      timeSlot: '10:00 AM - 11:30 PM',
    ),
  ];

  PastServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Past Services'),
        backgroundColor: AppColors.redColor,
      ),
      body: ListView.builder(
        itemCount: pastServices.length,
        itemBuilder: (context, index) {
          final service = pastServices[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300.0,
              height: 220.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10.0, left: 10.0),
                        width: 140.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(service.bikeImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10.0, left: 0.0),
                            child: const Text(
                              'Details of the Bike',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Text('Bike Name: Yamaha MT 15'),
                          const Text('Bike Color: Red'),
                          const Text('Registration: TS26DQ5551'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 0.0, left: 10.0),
                        child: const Text(
                          'Service Information',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10.0),
                            child: Text('Description: ${service.description}'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10.0),
                            child: Text(
                                'Cost: ₹${service.cost.toStringAsFixed(2)}'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10.0),
                            child: Text('Date: ${service.date}'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10.0),
                            child: Text('Time Slot: ${service.timeSlot}'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class UpcomingServicesPage extends StatelessWidget {
  final List<ServiceRecord> pastServices = [
    ServiceRecord(
      date: '05-12-2023',
      description: 'Batteries',
      cost: 6000.0,
      bikeImage:
          'https://wallup.net/wp-content/uploads/2019/09/632200-bmw-s1000-rr-super-bike-motorcycles-race-speed-motors-2.jpg',
      timeSlot: '3:00 PM',
    ),
    ServiceRecord(
      date: '27-12-2023',
      description: 'Detailed services',
      cost: 10000.0,
      bikeImage:
          'https://wallup.net/wp-content/uploads/2019/09/632200-bmw-s1000-rr-super-bike-motorcycles-race-speed-motors-2.jpg',
      timeSlot: '11:00 AM',
    ),
  ];

  UpcomingServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upcoming Services'),
        backgroundColor: AppColors.redColor,
      ),
      body: ListView.builder(
        itemCount: pastServices.length,
        itemBuilder: (context, index) {
          final service = pastServices[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300.0,
              height: 220.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10.0, left: 10.0),
                        width: 140.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(service.bikeImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10.0, left: 0.0),
                            child: const Text(
                              'Details of the Bike',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Text('Bike Name: Yamaha MT 15'),
                          const Text('Bike Color: Red'),
                          const Text('Registration: TS26DQ5551'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 0.0, left: 10.0),
                        child: const Text(
                          'Service Information',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10.0),
                            child: Text('Description: ${service.description}'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10.0),
                            child: Text(
                                'Cost: ₹${service.cost.toStringAsFixed(2)}'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10.0),
                            child: Text('Date: ${service.date}'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10.0),
                            child: Text('Time Slot: ${service.timeSlot}'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class AccountDetailsPage extends StatelessWidget {
  AuthController authController = Get.find<AuthController>();

  AccountDetailsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Details'),
        backgroundColor: AppColors.redColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyProfile()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40, left: 18, right: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Name:',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    authController.myUser.value.name == null
                        ? 'Mark Novoak'
                        : authController.myUser.value.name!,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40, left: 18, right: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Address:',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    authController.myUser.value.hAddress == null
                        ? '123 Main Street, Cityville'
                        : authController.myUser.value.hAddress!,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40, left: 18, right: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Phone Number:',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    authController.myUser.value.phno == null
                        ? '9725324520'
                        : authController.myUser.value.phno!,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40, left: 18, right: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Email:',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    authController.myUser.value.email == null
                        ? 'john.doe@example.com'
                        : authController.myUser.value.email!,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PreferencesPage extends StatelessWidget {
  const PreferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preferences'),
        backgroundColor: AppColors.redColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const PreferenceSwitch(label: 'Receive Push Notifications'),
            const PreferenceSwitch(label: 'Enable Location Services'),
            const PreferenceSwitch(label: 'Dark Mode'),
            const SizedBox(height: 10),
            const PreferenceSlider(label: 'Notification Volume'),
            const PreferenceSlider(label: 'Text Size'),
            const SizedBox(height: 300),
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(AppColors.redColor)),
              onPressed: () {
                // Implement logic to save preferences
                Navigator.pop(context); // Navigate back to AccountDetailsPage
              },
              child: const Text(
                'Save Preferences',
                style: TextStyle(color: AppColors.whiteColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PreferenceSwitch extends StatefulWidget {
  final String label;

  const PreferenceSwitch({super.key, required this.label});

  @override
  _PreferenceSwitchState createState() => _PreferenceSwitchState();
}

class _PreferenceSwitchState extends State<PreferenceSwitch> {
  bool _isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.label,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600]),
          ),
          Switch(
            value: _isEnabled,
            onChanged: (value) {
              setState(() {
                _isEnabled = value;
              });
            },
            activeColor: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}

class PreferenceSlider extends StatefulWidget {
  final String label;

  const PreferenceSlider({super.key, required this.label});

  @override
  _PreferenceSliderState createState() => _PreferenceSliderState();
}

class _PreferenceSliderState extends State<PreferenceSlider> {
  double _sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600]),
          ),
          Slider(
            value: _sliderValue,
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
            min: 0,
            max: 100,
            divisions: 100,
            label: _sliderValue.round().toString(),
          ),
        ],
      ),
    );
  }
}

class SecurityPrivacyPage extends StatelessWidget {
  const SecurityPrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.redColor,
        title: const Text('Security and Privacy'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Security Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            ListTile(
              title: const Text('Change Password'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Two-Factor Authentication'),
              onTap: () {},
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Privacy Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            ListTile(
              title: const Text('Manage App Permissions'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Privacy Policy'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Terms of Service'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
