import 'package:bikerxx/login.dart';
import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.redColor,
        title: const Text('Feedback'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'How can we improve?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            const Expanded(
              child: TextField(
                maxLines: 8,
                decoration: InputDecoration(
                  hintText: 'Your feedback...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  _submitFeedback(context);
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.redColor)),
                child: const Text(
                  'Submit',
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _submitFeedback(BuildContext context) {
    // Simulated functionality to process feedback
    // You can integrate actual submission logic here, like sending the feedback to a server.
    // For now, this example just navigates back to the previous page.
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Thank you for your feedback!'),
    ));

    // Simulated delay for the user to see the 'Thank you' message
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pop(context);
    });
  }
}
