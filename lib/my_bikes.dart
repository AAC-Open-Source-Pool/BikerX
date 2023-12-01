import 'package:bikerxx/login.dart';
import 'package:flutter/material.dart';

class BikeRegistrationPage extends StatefulWidget {
  const BikeRegistrationPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BikeRegistrationPageState createState() => _BikeRegistrationPageState();
}

class _BikeRegistrationPageState extends State<BikeRegistrationPage> {
  final List<BikeInfo> _bikes = [
    BikeInfo(numberPlate: 'AB 1234', brandName: 'Honda'),
    BikeInfo(numberPlate: 'CD 5678', brandName: 'Yamaha'),
  ];
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _bikeNumberController = TextEditingController();
  final TextEditingController _bikeBrandController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registered Bikes'),
        backgroundColor: AppColors.redColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Registered Bikes:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _bikes.isEmpty
                ? const Text('No bikes registered yet.')
                : Column(
                    children: _bikes.map((bike) {
                      return ListTile(
                        title: Text('Number Plate: ${bike.numberPlate}'),
                        subtitle: Text('Brand: ${bike.brandName}'),
                      );
                    }).toList(),
                  ),
            const SizedBox(
              height: 300,
            ),
            const Text(
              'Add a Bike:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: _bikeNumberController,
                    decoration:
                        const InputDecoration(labelText: 'Bike Number Plate'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter the bike number plate';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _bikeBrandController,
                    decoration:
                        const InputDecoration(labelText: 'Bike Brand Name'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter the bike brand name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.redColor)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          _bikes.add(BikeInfo(
                            numberPlate: _bikeNumberController.text,
                            brandName: _bikeBrandController.text,
                          ));
                          _bikeNumberController.clear();
                          _bikeBrandController.clear();
                        });
                      }
                    },
                    child: const Text(
                      'Register Bike',
                      style: TextStyle(color: Colors.white),
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

class BikeInfo {
  final String numberPlate;
  final String brandName;

  BikeInfo({
    required this.numberPlate,
    required this.brandName,
  });
}
