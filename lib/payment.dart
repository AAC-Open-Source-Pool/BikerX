import 'package:bikerxx/auth_controller.dart';
import 'package:bikerxx/cart_provider.dart';
import 'package:bikerxx/home.dart';
import 'package:bikerxx/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class PaymentPage extends StatefulWidget {
  final void Function(DateTime, TimeOfDay) onDateAndTimeSelected;

  const PaymentPage({Key? key, required this.onDateAndTimeSelected})
      : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.redColor,
        title: const Text('Select Date and Time'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Date:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => _selectDate(context),
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(AppColors.redColor)),
                  child: const Text(
                    'Pick Date',
                    style: TextStyle(color: AppColors.whiteColor),
                  ),
                ),
                const SizedBox(width: 16.0),
                Text(
                  DateFormat('dd/MM/yyyy').format(selectedDate),
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Select Time:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => _selectTime(context),
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(AppColors.redColor)),
                  child: const Text(
                    'Pick Time',
                    style: TextStyle(color: AppColors.whiteColor),
                  ),
                ),
                const SizedBox(width: 16.0),
                Text(
                  selectedTime.format(context),
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Pass the selected date and time to the callback function
                widget.onDateAndTimeSelected(selectedDate, selectedTime);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CheckoutPage(
                            selectedDate: selectedDate,
                            selectedTime: selectedTime,
                          )),
                );
              },
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(AppColors.redColor)),
              child: const Text(
                'Next',
                style: TextStyle(color: AppColors.whiteColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckoutPage extends StatefulWidget {
  //const CheckoutPage({super.key});
  final DateTime selectedDate;
  final TimeOfDay selectedTime;
  const CheckoutPage({
    super.key,
    required this.selectedDate,
    required this.selectedTime,
  });
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  double getCartTotal() {
    List<CartItem> cartItems = Provider.of<CartProvider>(context).cartItems;
    double total = 0.0;
    for (int i = 0; i < cartItems.length; i++) {
      total += quantities[i] * cartItems[i].price;
    }
    return total;
  }

  List<String> productNames = [
    'Painting',
    'Cleaning',
    'Bike Inspection',
    'Detailing Services'
  ];
  List<int> quantities = [
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1
  ];
  List<double> prices = [6000, 800, 1000, 1500];
  List<String> images = [
    'assets/carousel_slider/icons/denting_and_painting.png',
    'assets/carousel_slider/icons/cleaning.png',
    'assets/carousel_slider/icons/bike_inspection.png',
    'assets/carousel_slider/icons/detailing_services.png',
  ];
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  void navigateToThankYouPage(
      BuildContext context, DateTime selectedDate, TimeOfDay selectedTime) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ThankYouPage(
          selectedDate: selectedDate,
          selectedTime: selectedTime,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find<AuthController>();
    List<CartItem> cartItems = Provider.of<CartProvider>(context).cartItems;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.redColor,
        title: const Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: ((context, index) {
                  CartItem item = cartItems[index];
                  return Dismissible(
                    key: Key(productNames[index]),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {
                      setState(() {
                        productNames.removeAt(index);
                      });
                    },
                    background: Container(
                      color: AppColors.redColor,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 16.0),
                      child: const Icon(
                        Icons.cancel,
                        color: Colors.white,
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.only(right: 16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            images[index],
                            height: 50,
                            width: 50,
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          Column(
                            children: [
                              Text(
                                //productNames[index],
                                item.name,
                                style: const TextStyle(fontSize: 18.0),
                              ),
                              Text(
                                //'Rs${prices[index]}',
                                'Rs${item.price}',
                                style: const TextStyle(
                                    fontSize: 18.0, color: Colors.grey),
                              )
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Total Price: Rs${getCartTotal().toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15.0),
            Text(
              'Selected Date: ${_formattedDate(widget.selectedDate)}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Selected Time: ${widget.selectedTime.format(context)}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15.0),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 2, right: 10),
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
            const SizedBox(height: 16.0),
            Container(
              margin: const EdgeInsets.only(top: 2, left: 2, right: 10),
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
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                DateTime selectedDate = widget.selectedDate;
                //DateTime.now();
                TimeOfDay selectedTime = widget.selectedTime;
                //TimeOfDay.now();
                navigateToThankYouPage(context, selectedDate, selectedTime);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: AppColors.redColor,
                elevation: 8.0,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'Pay Now',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formattedDate(DateTime date) {
    return '${date.day}-${date.month}-${date.year}';
  }
}

class ThankYouPage extends StatelessWidget {
  final DateTime selectedDate;
  final TimeOfDay selectedTime;

  const ThankYouPage({
    super.key,
    required this.selectedDate,
    required this.selectedTime,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Thank You'),
      //   automaticallyImplyLeading: false, // Disable the back button
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.thumb_up,
              size: 80,
              color: Colors.green,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Thank you for choosing our service!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'A representative from our service center will be at your location on:',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8.0),
            Text(
              'Date: ${_formattedDate(selectedDate)}',
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              'Time: ${selectedTime.format(context)}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const Home()), // Replace with your home page
                  (route) => false, // Remove all existing routes from the stack
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.redColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              ),
              child: const Text(
                'Go to Home',
                style: TextStyle(fontSize: 18, color: AppColors.whiteColor),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formattedDate(DateTime date) {
    return '${date.day}-${date.month}-${date.year}';
  }
}
