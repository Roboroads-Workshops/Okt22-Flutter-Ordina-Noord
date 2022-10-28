import 'package:flutter/material.dart';
import 'package:tmp_flutter_workshop/models/review_model.dart';
import 'package:tmp_flutter_workshop/pages/overview_page.dart';
import 'package:tmp_flutter_workshop/widgets/review_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: OverviewPage(),
    );
  }
}
