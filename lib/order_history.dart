import 'package:bikerxx/login.dart';
import 'package:flutter/material.dart';

class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order History'),
        backgroundColor: AppColors.redColor,
      ),
      body: _currentIndex == 0 ? PastServicesPage() : UpcomingServicesPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Past Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Upcoming Services',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
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
        automaticallyImplyLeading: false,
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
        automaticallyImplyLeading: false,
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
