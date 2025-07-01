import 'package:flutter/material.dart';

void main() => runApp(KawsarApp());

class KawsarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'কাউসার',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Roboto',
      ),
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  double speed = 0;
  double fuel = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('কাউসার – স্মার্ট সেন্সর')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('স্পিডঃ ${speed.toStringAsFixed(0)} km/h',
                style: Theme.of(context).textTheme.headline6),
            SizedBox(height: 8),
            LinearProgressIndicator(value: speed / 180),
            SizedBox(height: 24),
            Text('ফুয়েলঃ ${fuel.toStringAsFixed(0)} %',
                style: Theme.of(context).textTheme.headline6),
            SizedBox(height: 8),
            LinearProgressIndicator(value: fuel / 100, color: Colors.orange),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  speed = (speed + 10) % 180;
                  fuel = fuel > 0 ? fuel - 5 : 100;
                });
              },
              child: Text('রিফ্রেশ'),
            )
          ],
        ),
      ),
    );
  }
}