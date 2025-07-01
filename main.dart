
import 'package:flutter/material.dart';

void main() {
  runApp(const KawsarApp());
}

class KawsarApp extends StatelessWidget {
  const KawsarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'কাউসার অ্যাপ',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('কাউসার - গাড়ির তথ্য')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('🔹 গাড়ির স্পিড: ৬০ কিমি/ঘণ্টা'),
            SizedBox(height: 10),
            Text('🔹 পেট্রোল: ৫০%'),
            SizedBox(height: 10),
            Text('🔹 স্টিয়ারিং: নিয়ন্ত্রণে'),
            SizedBox(height: 10),
            Text('🔹 লোকেশন: ঢাকায় আছে'),
          ],
        ),
      ),
    );
  }
}
