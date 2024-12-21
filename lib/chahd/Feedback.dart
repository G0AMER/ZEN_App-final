import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => FeedbackScreen(),
        '/viewFeedback': (context) => ViewFeedbackScreen(),
      },
    );
  }
}

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final TextEditingController sizeController = TextEditingController();
  final TextEditingController qualityController = TextEditingController();
  final TextEditingController deliveryController = TextEditingController();
  int selectedRating = 0;

  void handleRating(int rating) {
    setState(() {
      selectedRating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Back Arrow
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(height: 10),
              // Product Image
              Image.network(
                'assets/sweatshirt.jpg', // Replace with your hoodie image URL
                height: 300,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              // Feedback Form
              TextField(
                controller: sizeController,
                decoration: InputDecoration(
                  labelText: 'Size',
                  hintText: 'No comments',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: qualityController,
                decoration: InputDecoration(
                  labelText: 'Quality',
                  hintText: 'No comments',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: deliveryController,
                decoration: InputDecoration(
                  labelText: 'Delivery Service',
                  hintText: 'No comments',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              // Rating Section
              Text('Rate Us!', style: TextStyle(fontSize: 18)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return IconButton(
                    icon: Icon(
                      Icons.star,
                      color: index < selectedRating ? Colors.yellow : Colors.grey,
                    ),
                    onPressed: () => handleRating(index + 1),
                  );
                }),
              ),
              SizedBox(height: 20),
              // Submit Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to View Feedback Screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  ViewFeedbackScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: Text(
                  'Add Your Feedback',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ViewFeedbackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Arrow
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(height: 10),
              // Product Image
              Image.network(
                'assets/sweatshirt.jpg', // Replace with your hoodie image URL
                height: 300,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              // Feedback Section
              Center(
                child: Text(
                  'Feedback',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Feedback List
              Column(
                children: [
                  FeedbackItem(
                    rating: 4,
                    sizeFeedback: 'fits perfectly as expected',
                    qualityFeedback: 'Perfect',
                    deliveryFeedback: 'Slower than expected',
                  ),
                  FeedbackItem(
                    rating: 5,
                    sizeFeedback: 'Perfect size',
                    qualityFeedback: 'Excellent',
                    deliveryFeedback: 'Impressively fast',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeedbackItem extends StatelessWidget {
  final int rating;
  final String sizeFeedback;
  final String qualityFeedback;
  final String deliveryFeedback;

  FeedbackItem({
    required this.rating,
    required this.sizeFeedback,
    required this.qualityFeedback,
    required this.deliveryFeedback,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: List.generate(5, (index) {
                return Icon(
                  Icons.star,
                  color: index < rating ? Colors.yellow : Colors.grey,
                );
              }),
            ),
            SizedBox(height: 10),
            Text('Size: $sizeFeedback'),
            Text('Quality: $qualityFeedback'),
            Text('Delivery service: $deliveryFeedback'),
          ],
        ),
      ),
    );
  }
}
