import 'package:bikerxx/card.dart';
import 'package:bikerxx/cart_provider.dart';
import 'package:bikerxx/home.dart';
import 'package:bikerxx/login.dart';
//import 'package:bikerxx/payment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaintingPage extends StatefulWidget {
  const PaintingPage({super.key});

  @override
  State<PaintingPage> createState() => _PaintingPageState();
}

class _PaintingPageState extends State<PaintingPage> {
  void addToCart() {
    CartItem newItem = CartItem(name: 'Painting', price: 6000, quantity: 1);
    Provider.of<CartProvider>(context, listen: false).addToCart(newItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.redColor,
        title: const Text('Painting Services'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://th.bing.com/th/id/R.ad0f51efd3fb4f26286af3df71bea23b?rik=bnNzQfSK9guguQ&riu=http%3a%2f%2f2.bp.blogspot.com%2f-jvtJSx-aDYw%2fULLhLazVYXI%2fAAAAAAAACjo%2fizI1mqdhk4c%2fs1600%2fIMG_8146.JPG&ehk=Hhoxj82OZyK%2bgfS1hzlklXUgsF7j7hUjs2mtIA46No8%3d&risl=&pid=ImgRaw&r=0',
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Price: ₹6,000',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Give your bike a fresh lease on life with our professional bike painting service. Our experienced team will restore its shine and protect it from the elements. Choose from a variety of custom colors and drive with confidence. Contact us today for a stunning transformation!',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  addToCart();
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.redColor)),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CleaningPage extends StatefulWidget {
  const CleaningPage({super.key});

  @override
  State<CleaningPage> createState() => _CleaningPageState();
}

class _CleaningPageState extends State<CleaningPage> {
  void addToCart() {
    CartItem newItem = CartItem(name: 'Cleaning', price: 800, quantity: 1);
    Provider.of<CartProvider>(context, listen: false).addToCart(newItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.redColor,
        title: const Text('Cleaning Services'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://cdn.shopify.com/s/files/1/0059/0705/4661/articles/painting_a_motorcycle_1024x1024.jpeg?v=1556242379',
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Price: ₹800',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Experience the magic of a thorough, professional bike cleanup right at your doorstep. Our top-tier bike servicing app ensures that your bicycle sparkles like new and provides you with a smoother, safer ride. Get Your Ride Cleaned Effortlessly: Just a Click Away',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  addToCart();
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.redColor)),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InspectionDetailsPage extends StatefulWidget {
  const InspectionDetailsPage({super.key});

  @override
  State<InspectionDetailsPage> createState() => _InspectionDetailsPageState();
}

class _InspectionDetailsPageState extends State<InspectionDetailsPage> {
  void addToCart() {
    CartItem newItem =
        CartItem(name: 'Bike Inspection', price: 1000, quantity: 1);
    Provider.of<CartProvider>(context, listen: false).addToCart(newItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.redColor,
        title: const Text('Inspection Services'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://cdn1.droom.in/imgusr/droomEco/content/bike-inspection-img.png',
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Price: ₹1,000',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "A bike that performs flawlessly is a joy to ride! Our bike inspection service forms a backbone for bike servicing, ensuring every journey you embark on is both safe and enjoyable. We inspect every minute aspect of your bike, from brakes to the handlebar grips, ensuring you're always ready to hit the road.",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  addToCart();
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.redColor)),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailedServicesPage extends StatefulWidget {
  const DetailedServicesPage({super.key});

  @override
  State<DetailedServicesPage> createState() => _DetailedServicesPageState();
}

class _DetailedServicesPageState extends State<DetailedServicesPage> {
  void addToCart() {
    CartItem newItem =
        CartItem(name: 'Detailing Services', price: 1500, quantity: 1);
    Provider.of<CartProvider>(context, listen: false).addToCart(newItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Detailing Services'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://images.wisegeek.com/mechanic-fixing-motorcycle-engine.jpg',
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Price: ₹1,500',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "With a team of trained professionals at the helm, our app assures dedicated and reliable bike servicing. Our experts conduct precise diagnostics, ensuring comprehensive servicing that tackles every issue, from minor adjustments to major repairs. Expect quality workmanship that raises your bike's performance bar and aims to provide a smooth, hassle-free riding experience.",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  addToCart();
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.redColor)),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PeriodicServicesPage extends StatefulWidget {
  const PeriodicServicesPage({super.key});

  @override
  State<PeriodicServicesPage> createState() => _PeriodicServicesPageState();
}

class _PeriodicServicesPageState extends State<PeriodicServicesPage> {
  void addToCart() {
    CartItem newItem =
        CartItem(name: 'Periodic Services', price: 6000, quantity: 1);
    Provider.of<CartProvider>(context, listen: false).addToCart(newItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.redColor,
        title: const Text('Periodic Services'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://smartguy.com/webservice/storage/category/motorcycles-repairing-service.jpg',
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Price: ₹6,000',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "We understand your hectic schedule and know how hard it could be to pencil in time for bike servicing within it. That’s why we bring the service to you. The Periodic Bike Service on our app offers at-your-doorstep service, streamlined specifically for your convenience. You also have access to timely reminders, ensuring that your bike's needs never skip your mind amidst life's whirlwind.",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  addToCart();
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.redColor)),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WheelCarePage extends StatefulWidget {
  const WheelCarePage({super.key});

  @override
  State<WheelCarePage> createState() => _WheelCarePageState();
}

class _WheelCarePageState extends State<WheelCarePage> {
  void addToCart() {
    CartItem newItem = CartItem(name: 'Wheel Care', price: 3000, quantity: 1);
    Provider.of<CartProvider>(context, listen: false).addToCart(newItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.redColor,
        title: const Text('Wheel Care'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://th.bing.com/th/id/R.b84bcce766a0e203d0fba8f82f1d0a13?rik=lphoKGzK91v7MQ&riu=http%3a%2f%2fwww.mcleishorlando.com%2fwp-content%2fuploads%2f2017%2f05%2fBlog-25-wheel-1024x576.jpg&ehk=FDYHR9x%2bohSE4umHloz%2faZwwHXx0LZ4GYRQvvdIwZr8%3d&risl=&pid=ImgRaw&r=0',
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Price: ₹3,000',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "From spokes tensioning to rim truing and hub overhauling, no aspect of your bike's wheels is left unattended by our master technicians with years of field experience. Be it a city cruiser or a mountain bruiser, the meticulousness of our service ensures your wheels are always aligned, balanced, and delivering the best possible performance.",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  addToCart();
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.redColor)),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BatteriesPage extends StatefulWidget {
  const BatteriesPage({super.key});

  @override
  State<BatteriesPage> createState() => _BatteriesPageState();
}

class _BatteriesPageState extends State<BatteriesPage> {
  void addToCart() {
    CartItem newItem = CartItem(name: 'Batteries', price: 3000, quantity: 1);
    Provider.of<CartProvider>(context, listen: false).addToCart(newItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.redColor,
        title: const Text('Batteries'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://tzassets.bestwestern.com/wp-content/uploads/2012/04/31074138/4-26-2012.jpg',
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Price: ₹3,000',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "Nothing beats the kick of going on leisurely rides or intense biking tours with a bike that’s performing at its peak. Our battery service reaffirms your bike's vitality by ensuring consistent power supply through expert diagnostic and servicing.Stay powered up and ready to roll with our exceptional battery service.",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  addToCart();
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.redColor)),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RepairPage extends StatefulWidget {
  const RepairPage({super.key});

  @override
  State<RepairPage> createState() => _RepairPageState();
}

class _RepairPageState extends State<RepairPage> {
  void addToCart() {
    CartItem newItem =
        CartItem(name: 'Oil Change & Repair', price: 3000, quantity: 1);
    Provider.of<CartProvider>(context, listen: false).addToCart(newItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.redColor,
        title: const Text('Oil change and Repair'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://coursegate.co.uk/wp-content/uploads/2021/05/IrkDqPmI8A-1-768x512.jpg',
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Price: ₹3,000',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "We offer professional and reliable Oil Change and Repair services to keep your motorbike in optimal condition. Our skilled technicians are dedicated to ensuring your bike runs smoothly and safely, whether it's for daily commuting or thrilling rides.",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  addToCart();
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.redColor)),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AccidentalRepairPage extends StatefulWidget {
  const AccidentalRepairPage({super.key});

  @override
  State<AccidentalRepairPage> createState() => _AccidentalRepairPageState();
}

class _AccidentalRepairPageState extends State<AccidentalRepairPage> {
  void addToCart() {
    CartItem newItem =
        CartItem(name: 'Accidental Repair', price: 3000, quantity: 1);
    Provider.of<CartProvider>(context, listen: false).addToCart(newItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.redColor,
        title: const Text('Accidental Repair'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://img77.uenicdn.com/image/upload/v1537285196/service_images/shutterstock_114594787.jpg',
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Price: ₹3,000',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "Introducing our bike servicing app's Accidental Repair Feature, a revolutionary tool for riders in need. Although incidents sometimes occur, your safety is our primary priority. We've added this cutting-edge feature to assist you resume driving fast and safely following unplanned catastrophes.",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  addToCart();
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.redColor)),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SparePartsPage extends StatefulWidget {
  const SparePartsPage({super.key});

  @override
  State<SparePartsPage> createState() => _SparePartsPageState();
}

class _SparePartsPageState extends State<SparePartsPage> {
  void addToCart() {
    CartItem newItem = CartItem(name: 'Spare Parts', price: 3000, quantity: 1);
    Provider.of<CartProvider>(context, listen: false).addToCart(newItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Spare Parts'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://offroadvietnam.com/media/motorbike-spare-parts-for-sale-hanoi-offroad-vietnam-motorcycle-tours-office.jpg?5a7b53&5a7b53',
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Price: ₹3,000',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "Introducing the Spare Parts Section, a valuable addition to our Bike Servicing App, designed to enhance your bike maintenance experience. We understand that finding the right spare parts for your motorcycle can be a time-consuming and challenging task. That's why we've created this dedicated section to make it easier than ever for you to replace the components you need to keep your bike running smoothly.",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  addToCart();
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.redColor)),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SeatRepairPage extends StatefulWidget {
  const SeatRepairPage({super.key});

  @override
  State<SeatRepairPage> createState() => _SeatRepairPageState();
}

class _SeatRepairPageState extends State<SeatRepairPage> {
  void addToCart() {
    CartItem newItem = CartItem(name: 'Seat Repair', price: 1500, quantity: 1);
    Provider.of<CartProvider>(context, listen: false).addToCart(newItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Seat Repair'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://content.instructables.com/ORIG/FPF/BY94/IPMUL45N/FPFBY94IPMUL45N.jpg?auto=webp&frame=1&width=2100',
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Price: ₹1,500',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "The Seat Repair Service, a unique function designed to guarantee the comfort, security, and aesthetics of the seat on your motorcycle, is now available in our bike servicing app. We are aware of the negative effects a worn-out or damaged seat can have on your riding experience. We've developed this special service to make it easier for you to locate qualified specialists that can fix, modify, or restore the seat on your bike.",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  addToCart();
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.redColor)),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SuspensionPage extends StatefulWidget {
  const SuspensionPage({super.key});

  @override
  State<SuspensionPage> createState() => _SuspensionPageState();
}

class _SuspensionPageState extends State<SuspensionPage> {
  void addToCart() {
    CartItem newItem = CartItem(name: 'Suspension', price: 3000, quantity: 1);
    Provider.of<CartProvider>(context, listen: false).addToCart(newItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Suspension Services'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://www.generalsguild.com/wp-content/uploads/2020/01/images3750-5e1c9670c60de-1024x676.jpg',
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Price: ₹3,000',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "Whether you're a sportbike enthusiast, a touring rider, or an off-road explorer, the Suspension Services function in our Bike Servicing App is made to meet the varied needs of riders. You can enjoy increased handling, comfort, and safety on your travels by making sure your bike's suspension is in excellent condition. With the ease of our app, discover the benefits of a well-maintained suspension system. Ride with assurance knowing that the suspension on your bike is tailored to your particular riding style.",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  addToCart();
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.redColor)),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EvPage extends StatefulWidget {
  const EvPage({super.key});

  @override
  State<EvPage> createState() => _EvPageState();
}

class _EvPageState extends State<EvPage> {
  void addToCart() {
    CartItem newItem =
        CartItem(name: 'EV servicing', price: 15000, quantity: 1);
    Provider.of<CartProvider>(context, listen: false).addToCart(newItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('EV Services'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://www.allpennystocks.com/apps/images/library/original/temp_2658.jpg',
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Price: ₹1,5000',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'EV Repair Services specializes in electric bike maintenance and repairs. EV owners are catered to by certified experts and repair centers, who offer services like : battery diagnostics, charging system repairs, routine maintenance, and more. These services ensure that electric bikes operate efficiently, safely, and sustainably, thereby assisting the increasing community of EV fans.',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  addToCart();
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.redColor)),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AccessoriesPage extends StatefulWidget {
  const AccessoriesPage({super.key});

  @override
  State<AccessoriesPage> createState() => _AccessoriesPageState();
}

class _AccessoriesPageState extends State<AccessoriesPage> {
  void addToCart() {
    CartItem newItem = CartItem(name: 'Accesories', price: 1500, quantity: 1);
    Provider.of<CartProvider>(context, listen: false).addToCart(newItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Bike Accesories'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://biker.report/wp-content/uploads/2019/12/motorcycle-safety-gear.jpeg',
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Price: ₹1,500',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "Our Bike Servicing App's Bike Accessories Section is intended to provide users with a convenient and secure platform for upgrading their biking experience. We provide everything you need, from safety equipment to fashionable accessories and critical maintenance items. Enhance your rides with high-quality accessories that are tailored to your requirements and preferences, all of which are conveniently accessible through our app.",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  addToCart();
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.redColor)),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TermsAndConditionsPage extends StatefulWidget {
  const TermsAndConditionsPage({super.key});

  @override
  _TermsAndConditionsPageState createState() => _TermsAndConditionsPageState();
}

class _TermsAndConditionsPageState extends State<TermsAndConditionsPage> {
  bool _isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
        backgroundColor: AppColors.redColor,
      ),
      body: Column(
        children: <Widget>[
          const Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '1. Acceptance of Terms\n'
                    'By using BikerX, you agree to be bound by these Terms and Conditions.\n',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    '2. Services\n'
                    'BikerX provides a platform for users to request bike servicing and maintenance services from independent service providers.'
                    'The services offered may include bike repairs, maintenance, cleaning, and other related services.'
                    'The availability and quality of services may vary based on the location and service providers.\n',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    '3. User Accounts\n'
                    'Users are required to create an account to use the app.'
                    'Users are responsible for safeguarding their account information, and any actions taken through their account are their responsibility.\n',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    '4. Service Providers\n'
                    'Service providers using the app are independent contractors, and BikerX does not employ them directly.'
                    'We may conduct background checks and vetting on service providers, but we do not guarantee their qualifications or quality of service.\n',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    '5. Booking and Payments\n'
                    'Users can book services through the app, and payment will be processed through the app.'
                    'Pricing and payment methods are subject to change, and users will be notified of any such changes.'
                    'Cancellation and refund policies are detailed in our Cancellation and Refund Policy.\n',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    '6. User Responsibilities\n'
                    'Users are responsible for providing accurate and up-to-date information about their bikes and service requirements.'
                    'Users must ensure bike accessibility for service providers and follow safety guidelines during service appointments.\n',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    '7. Liability\n'
                    'BikerX disclaims liability for any damages or losses incurred during the use of the app or the services provided through the app.'
                    'Users acknowledge and accept the inherent risks associated with bike servicing.\n',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    '8. Privacy and Data Usage\n'
                    'User data is collected and used in accordance with our Privacy Policy.'
                    'By using the app, users consent to the collection and use of their data as outlined in the Privacy Policy.\n',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    '9. Intellectual Property\n'
                    'All content and intellectual property within the app are owned by BikerX and are protected by intellectual property laws.\n',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    '10. Prohibited Activities\n'
                    'Users are prohibited from engaging in activities that violate these Terms and Conditions, local laws, or any third-party rights.\n',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    '11. Termination\n'
                    'BikerX reserves the right to terminate or suspend user accounts for violations of these Terms and Conditions.\n',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    '12. Modification of Terms\n'
                    'BikerX may modify these Terms and Conditions, and users will be notified of any changes. Continued use of the app after changes constitute acceptance of the modified terms.\n',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: const Text('I accept the terms and conditions'),
            leading: Checkbox(
              value: _isAccepted,
              onChanged: (value) {
                setState(() {
                  _isAccepted = value!;
                });
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.redColor)),
                onPressed: () {
                  if (_isAccepted) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Accept Terms and Conditions'),
                        content: const Text(
                            'Please accept the terms and conditions to continue.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'OK',
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.redColor,
        title: const Text('Wallet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16.0),
            Container(
              width: double.infinity,
              height: 200.0,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'BikerX Cash',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    '₹0.00',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Implement action for Gift Card
                    },
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(AppColors.redColor)),
                    child: const Text(
                      ' + Gift Card',
                      style: TextStyle(color: AppColors.whiteColor),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Payment Methods',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            ListTile(
              title: const Text('Cash'),
              leading: const Icon(
                Icons.money, // Placeholder for custom cash icon
                size: 30.0, // Adjust the size as needed
              ),
              onTap: () {
                // Implement cash payment method
              },
            ),
            ListTile(
              title: const Text('UPI'),
              leading: const Icon(Icons.qr_code),
              onTap: () {
                // Implement UPI payment method with QR code
              },
            ),
            ListTile(
              title: const Text('Card'),
              leading: const Icon(Icons.credit_card),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentScreen()),
                );
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implement action to add payment method
              },
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(AppColors.redColor)),
              child: const Text(
                'Add Payment Method',
                style: TextStyle(color: AppColors.whiteColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
