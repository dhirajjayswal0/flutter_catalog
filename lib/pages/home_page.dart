import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

// Day 11 we learned about context, constraints
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 30;
  final String name = 'Codepur';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
      ),
      body: Center(
        child: Container(
          child: Text('Welcome to $days days of $name'),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
