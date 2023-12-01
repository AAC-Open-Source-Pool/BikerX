import 'package:bikerxx/cart_provider.dart';
import 'package:bikerxx/login.dart';
import 'package:bikerxx/payment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
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

  void incrementQuantity(int index) {
    setState(() {
      quantities[index]++;
    });
  }

  void decrementQuantity(int index) {
    setState(() {
      quantities[index]--;
    });
  }

  double getCartTotal() {
    List<CartItem> cartItems = Provider.of<CartProvider>(context).cartItems;
    double total = 0.0;
    for (int i = 0; i < cartItems.length; i++) {
      total += quantities[i] * cartItems[i].price;
    }
    return total;
  }

  void showCheckoutDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Checkout'),
            content: const Text('Hurray! You have purchased the services!'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Ok'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    List<CartItem> cartItems = Provider.of<CartProvider>(context).cartItems;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BIKERX'),
        backgroundColor: AppColors.redColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'CART',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    decrementQuantity(index);
                                  },
                                  icon: const Icon(Icons.remove),
                                ),
                                Text(
                                  quantities[index].toString(),
                                  style: const TextStyle(fontSize: 18.0),
                                ),
                                IconButton(
                                  onPressed: () {
                                    incrementQuantity(index);
                                  },
                                  icon: const Icon(Icons.add),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Text(
                      'Cart Total: ',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    const SizedBox(
                      width: 50.0,
                    ),
                    Text(
                      'Rs${getCartTotal().toStringAsFixed(2)}',
                      style: const TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaymentPage(
                                onDateAndTimeSelected:
                                    (selectedDate, selectedTime) {
                                  // Handle the selected date and time
                                  // This is where you can perform actions with the selected date and time
                                },
                              ),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.redColor),
                        child: const Text(
                          'Proceed to Checkout',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
