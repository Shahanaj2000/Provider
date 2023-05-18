import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_titorials/provider/count_provider.dart';


class CountExample extends StatelessWidget {
  const CountExample({super.key});

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context);
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Provider"),
        centerTitle: true,
      ),
      body:  Center(
        child: Text(
          'Count: ${countProvider.count}',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}