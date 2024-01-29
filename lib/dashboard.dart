import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monomaya'),
        automaticallyImplyLeading: false,
      ),
      body: const Text('Dashboard'),
    );
  }
}
