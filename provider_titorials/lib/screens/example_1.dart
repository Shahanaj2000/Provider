import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_titorials/provider/example_one.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  
  @override
  Widget build(BuildContext context) {
    //log('Buid');

    print('Build');

    final provider = Provider.of<ExampleOneProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multi Provider"),
      ),
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(builder: (context, value, child) {
            return Slider(
            min: 0,
            max: 1,
            value: value.value,
            onChanged: (val) {
              provider.setValue(val);
            },
          );
          }),

          Consumer<ExampleOneProvider>(builder: (context, value, child) {
            return Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(value.value),
                  ),
                  child: const Center(
                    child: Text(
                      'Container One',
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(value.value),
                  ),
                  child: const Center(
                    child: Text(
                      'Container Two',
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ],
          );
          }),
          
          
        ],
      ),
    );
  }
}
