import 'package:bikerxx/login.dart';
import 'package:flutter/material.dart';

class ChatWithUsPage extends StatelessWidget {
  const ChatWithUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat with Us'),
        backgroundColor: AppColors.redColor,
      ),
      body: const ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<Map<String, dynamic>> _messages = [];

  void _handleSubmitted(String text) {
    if (text.isNotEmpty) {
      setState(() {
        _messages.insert(0, {
          'text': text,
          'isUser': true,
          'timestamp': DateTime.now(),
        });
        _simulateResponse(text);
        _textController.clear();
      });
    }
  }

  void _simulateResponse(String text) {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        if (text.toLowerCase().contains('service')) {
          _handleServiceQuery();
        } else if (text.toLowerCase().contains('hi') ||
            text.toLowerCase().contains('hello')) {
          _handleResponse();
        } else if (text.toLowerCase().contains('appointment')) {
          _handleAppointmentQuery();
        } else if (text.toLowerCase().contains('cost')) {
          _handleCostQuery();
        } else if (text.toLowerCase().contains('tire')) {
          _handleTireQuery();
        } else if (text.toLowerCase().contains('oil change')) {
          _handleOilChangeQuery();
        } else if (text.toLowerCase().contains('maintenance tips')) {
          _handleMaintenanceTipsQuery();
        } else if (text.toLowerCase().contains('emergency')) {
          _handleEmergencyQuery();
        } else if (text.toLowerCase().contains('accessories')) {
          _handleAccessoriesQuery();
        } else if (text.toLowerCase().contains('insurance')) {
          _handleInsuranceQuery();
        } else if (text.toLowerCase().contains('repairs')) {
          _handleRepairsQuery();
        } else if (text.toLowerCase().contains('spare parts')) {
          _handleSparePartsQuery();
        } else if (text.toLowerCase().contains('warranty')) {
          _handleWarrantyQuery();
        } else if (text.toLowerCase().contains('bike models')) {
          _handleBikeModelsQuery();
        } else if (text.toLowerCase().contains('pickup')) {
          _handlePickupQuery();
        } else if (text.toLowerCase().contains('customization')) {
          _handleCustomizationQuery();
        } else if (text.toLowerCase().contains('service center')) {
          _handleServiceCenterQuery();
        } else if (text.toLowerCase().contains('service partner')) {
          _handleServicePartnerQuery();
        } else if (text.toLowerCase().contains('not responding')) {
          _handleServiceCenterNotRespondingQuery();
        } else if (text.toLowerCase().contains('contact')) {
          _handleServiceCenterContactQuery();
        } else if (text.toLowerCase().contains('payment')) {
          _handlePaymentQuery();
        } else if (text.toLowerCase().contains('cancel appointment')) {
          _handleCancelAppointmentQuery();
        } else if (text.toLowerCase().contains('track service') ||
            text.toLowerCase().contains('track')) {
          _handleTrackServiceQuery();
        } else if (text.toLowerCase().contains('feedback') ||
            text.toLowerCase().contains('complaint')) {
          _handleFeedbackQuery();
        } else if (text.toLowerCase().contains('technical issue') ||
            text.toLowerCase().contains('app problem')) {
          _handleTechnicalSupportQuery();
        } else if (text.toLowerCase().contains('service availability') ||
            text.toLowerCase().contains('in my area')) {
          _handleServiceAvailabilityQuery();
        } else if (text.toLowerCase().contains('service details') ||
            text.toLowerCase().contains('packages')) {
          _handleServiceDetailsQuery();
        } else if (text.toLowerCase().contains('membership') ||
            text.toLowerCase().contains('loyalty program')) {
          _handleMembershipQuery();
        } else if (text.toLowerCase().contains('service center timings') ||
            text.toLowerCase().contains('hours')) {
          _handleServiceCenterTimingsQuery();
        } else if (text.toLowerCase().contains('additional services') ||
            text.toLowerCase().contains('add-ons')) {
          _handleAdditionalServicesQuery();
        } else if (text.toLowerCase().contains('insurance claims') ||
            text.toLowerCase().contains('support')) {
          _handleInsuranceClaimsQuery();
        } else if (text.toLowerCase().contains('service center locations') ||
            text.toLowerCase().contains('addresses')) {
          _handleServiceCenterLocationsQuery();
        } else if (text.toLowerCase().contains('thank you') ||
            text.toLowerCase().contains('end')) {
          _endConversation();
        } else {
          _messages.insert(0, {
            'text':
                "I'm sorry, I may need more information. How can I help you?",
            'isUser': false,
            'timestamp': DateTime.now(),
          });
        }
      });
    });
  }

  void _handleServiceQuery() {
    _messages.insert(0, {
      'text':
          'Sure, we offer various service packages for different bike models.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
    _messages.insert(0, {
      'text': 'Would you like to know more about a specific service?',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleAppointmentQuery() {
    _messages.insert(0, {
      'text': 'Absolutely, we can help you schedule an appointment.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
    _messages.insert(0, {
      'text': 'When would you like to schedule your appointment?',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleCostQuery() {
    _messages.insert(0, {
      'text':
          'The service cost may vary based on the type of service required.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
    _messages.insert(0, {
      'text': 'Do you have a specific service in mind?',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleResponse() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _messages.insert(0, {
          'text': 'Hello! How can we help you?',
          'isUser': false,
          'timestamp': DateTime.now(),
        });
      });
    });
  }

  void _handleTireQuery() {
    _messages.insert(0, {
      'text':
          'We have various tire options available depending on your bike model.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
    _messages.insert(0, {
      'text': 'Would you like to know about a specific type of tire?',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleOilChangeQuery() {
    _messages.insert(0, {
      'text':
          'Oil changes are crucial and we recommend regular oil changes for optimal performance.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
    _messages.insert(0, {
      'text': 'Do you need information about our oil change service?',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleMaintenanceTipsQuery() {
    _messages.insert(0, {
      'text':
          'Regular maintenance like chain lubrication and brake checks are essential.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
    _messages.insert(0, {
      'text': 'Would you like specific maintenance tips?',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleEmergencyQuery() {
    _messages.insert(0, {
      'text':
          'In case of an emergency, please call our emergency service hotline at XXX-XXXX-XXX.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
    _messages.insert(0, {
      'text': 'Or click on the SOS button on the Home Page.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleAccessoriesQuery() {
    _messages.insert(0, {
      'text':
          'We offer a wide range of bike accessories including helmets, gloves, and more.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
    _messages.insert(0, {
      'text': 'Are you looking for a specific accessory?',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleInsuranceQuery() {
    _messages.insert(0, {
      'text':
          'We do not directly provide insurance, but we can guide you on bike insurance providers.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
    _messages.insert(0, {
      'text': 'Would you like information on bike insurance companies?',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleRepairsQuery() {
    _messages.insert(0, {
      'text':
          'We provide repair services for various bike issues like brakes, chain, etc.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
    _messages.insert(0, {
      'text': 'Do you need information about a specific repair?',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleSparePartsQuery() {
    _messages.insert(0, {
      'text':
          'We have a range of spare parts available. Please specify the part you are looking for.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleWarrantyQuery() {
    _messages.insert(0, {
      'text':
          'We offer warranties on specific services. Please specify the service for more details.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleBikeModelsQuery() {
    _messages.insert(0, {
      'text':
          'We have service facilities for various bike models including XX, YY, and ZZ.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handlePickupQuery() {
    _messages.insert(0, {
      'text':
          'We provide pickup services in certain areas for scheduled appointments.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
    _messages.insert(0, {
      'text': 'Do you need pickup service for your appointment?',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleCustomizationQuery() {
    _messages.insert(0, {
      'text':
          'We offer customization services for bike modifications and accessories.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
    _messages.insert(0, {
      'text': 'Would you like to know more about our customization options?',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleServiceCenterQuery() {
    _messages.insert(0, {
      'text':
          'We have service centers located in various areas. What is your location?',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
    _messages.insert(0, {
      'text': 'Would you like to know the nearest service center?',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleServicePartnerQuery() {
    _messages.insert(0, {
      'text':
          'We collaborate with authorized service partners for extended services. How can I assist you further?',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleServiceCenterNotRespondingQuery() {
    _messages.insert(0, {
      'text':
          'I apologize for the inconvenience. Please provide your contact details, and I will escalate this issue for you.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleServiceCenterContactQuery() {
    _messages.insert(0, {
      'text':
          'Sure, you can contact our service center at XXX-XXXX-XXX for further assistance.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handlePaymentQuery() {
    _messages.insert(0, {
      'text':
          "If you're facing payment issues, please check your payment method or contact our support for assistance.",
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleCancelAppointmentQuery() {
    _messages.insert(0, {
      'text':
          'To cancel an appointment, go to your appointments section in the app or contact our support for help.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleTrackServiceQuery() {
    _messages.insert(0, {
      'text':
          'You can track your service status by going to your service history in the app or contacting our service center.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleFeedbackQuery() {
    _messages.insert(0, {
      'text':
          'We value your feedback. Please share your feedback or complaints through our feedback section or contact us directly.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleTechnicalSupportQuery() {
    _messages.insert(0, {
      'text':
          'For technical issues, please check for app updates or contact our technical support team for assistance.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleServiceAvailabilityQuery() {
    _messages.insert(0, {
      'text':
          'To check service availability in your area, please enter your location in the app or contact our support team.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleServiceDetailsQuery() {
    _messages.insert(0, {
      'text':
          'You can find service details and packages in the Home Page of the app or contact our service center for information.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleMembershipQuery() {
    _messages.insert(0, {
      'text':
          'To know more about our membership or loyalty program, visit the "Membership" section in the app or contact our support.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleServiceCenterTimingsQuery() {
    _messages.insert(0, {
      'text':
          'Our service center timings are from XX:XX AM to XX:XX PM, Monday to Saturday. For any changes, contact our service center directly.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleAdditionalServicesQuery() {
    _messages.insert(0, {
      'text':
          'You can add additional services during the appointment booking process in the app or discuss options with our service center.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleServiceCenterLocationsQuery() {
    _messages.insert(0, {
      'text':
          'Our service centers are located at various places. You can find the addresses in the "Locations" section in the app or contact our support for details.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _handleInsuranceClaimsQuery() {
    _messages.insert(0, {
      'text':
          'To handle insurance claims or support, please contact our insurance team directly or find more information in the "Insurance" section in the app.',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  void _endConversation() {
    _messages.insert(0, {
      'text':
          'Thank you for using our service! If you have any more questions in the future, feel free to ask. Have a great day!',
      'isUser': false,
      'timestamp': DateTime.now(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            reverse: true,
            itemCount: _messages.length,
            itemBuilder: (context, index) {
              return _buildMessage(_messages[index]);
            },
          ),
        ),
        const Divider(height: 1.0),
        _buildTextComposer(),
      ],
    );
  }

  Widget _buildMessage(Map<String, dynamic> message) {
    final bool isUser = message['isUser'];
    return ListTile(
      title: Container(
        decoration: BoxDecoration(
          color: isUser ? Colors.blue : Colors.grey[200],
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.all(10.0),
        child: Text(
          message['text'],
          style: TextStyle(color: isUser ? Colors.white : Colors.black),
        ),
      ),
      subtitle: Text(
        // Format timestamp
        '${message['timestamp'].hour}:${message['timestamp'].minute}',
        style: const TextStyle(fontSize: 12.0),
      ),
      trailing: isUser
          ? const CircleAvatar(
              child: Text('You', style: TextStyle(fontSize: 12)),
            )
          : const CircleAvatar(
              child: Text(
                'Support',
                style: TextStyle(fontSize: 10),
              ),
            ),
    );
  }

  Widget _buildTextComposer() {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: _textController,
              onSubmitted: _handleSubmitted,
              decoration: InputDecoration(
                hintText: 'Send a message',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                contentPadding: const EdgeInsets.all(12.0),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.send,
              color: AppColors.redColor,
            ),
            onPressed: () => _handleSubmitted(_textController.text),
          ),
        ],
      ),
    );
  }
}
