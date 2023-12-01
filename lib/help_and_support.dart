import 'package:bikerxx/chat.dart';
import 'package:bikerxx/feedback.dart';
import 'package:bikerxx/login.dart';
import 'package:flutter/material.dart';

class HelpAndSupportPage extends StatefulWidget {
  const HelpAndSupportPage({Key? key}) : super(key: key);

  @override
  _HelpAndSupportPageState createState() => _HelpAndSupportPageState();
}

class _HelpAndSupportPageState extends State<HelpAndSupportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help & Support'),
        backgroundColor: AppColors.redColor,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SearchBar(),
            SizedBox(height: 20),
            Expanded(
              child: FAQSection(),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FeedbackButton(),
                ChatWithUsButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FAQSection extends StatelessWidget {
  const FAQSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: const [
        FAQItem(
          question: 'How do I schedule a service?',
          answer:
              'You can schedule a service by going to the "Appointments" section and selecting your preferred service date.',
          icon: Icons.calendar_today,
        ),
        FAQItem(
          question: 'What are the available payment methods?',
          answer:
              'We accept various payment methods including credit/debit cards and online transfers.',
          icon: Icons.payment,
        ),
        FAQItem(
          question: 'How do I cancel an appointment?',
          answer:
              'To cancel an appointment, navigate to the "Appointments" section and select the booking to cancel.',
          icon: Icons.cancel,
        ),
        FAQItem(
          question: 'Where can I find service center locations?',
          answer:
              'You can find our service center locations in the "Locations" section of the app.',
          icon: Icons.location_on,
        ),
        FAQItem(
          question: 'What are the service charges?',
          answer:
              'Service charges vary based on the type of service. You can find detailed pricing in the "Pricing" section of the app.',
          icon: Icons.attach_money,
        ),
        FAQItem(
          question: 'Do you provide roadside assistance?',
          answer:
              'Yes, we offer roadside assistance for emergency situations. Contact our support for immediate help.',
          icon: Icons.commute,
        ),
        FAQItem(
          question: 'Can I track my service status?',
          answer:
              'Yes, you can track the service status in the "My Services" section once your bike is at the service center.',
          icon: Icons.track_changes,
        ),
        // Add more FAQItem widgets here
      ],
    );
  }
}

class FAQItem extends StatefulWidget {
  final String question;
  final String answer;
  final IconData icon;

  const FAQItem({
    super.key,
    required this.question,
    required this.answer,
    required this.icon,
  });

  @override
  State<FAQItem> createState() => _FAQItemState();
}

class _FAQItemState extends State<FAQItem> {
  // ignore: unused_field
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ExpansionTile(
        leading: Icon(widget.icon),
        title: Text(
          widget.question,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        onExpansionChanged: (value) {
          setState(() {
            _isExpanded = value;
          });
        },
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              widget.answer,
              style: TextStyle(color: Colors.grey[700]),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatWithUsButton extends StatelessWidget {
  const ChatWithUsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ChatWithUsPage()),
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.redColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
      child: const Text('Chat with Us', style: TextStyle(color: Colors.white)),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextField(
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.search, color: Colors.grey),
          hintText: 'Search FAQs',
          border: InputBorder.none,
        ),
        onChanged: (value) {
          // Implement search functionality
        },
      ),
    );
  }
}

class FeedbackButton extends StatelessWidget {
  const FeedbackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FeedbackPage()),
        );
      },
      icon: const Icon(Icons.feedback, color: Colors.black),
      label:
          const Text('Provide Feedback', style: TextStyle(color: Colors.black)),
    );
  }
}
