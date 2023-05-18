import 'package:flutter/material.dart';

class NotifyListnerScreen extends StatelessWidget {
  NotifyListnerScreen({super.key});

  ValueNotifier<int> _counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notify Listeners'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ValueListenableBuilder(
            valueListenable: _counter,
            builder: (context, index, child) {
              return Center(
                child: Text(
                  _counter.value.toString(),
                  style:
                      const TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
          print(_counter.value.toString());
        },
        child: const Icon(Icons.add),
      ),
      
    );
  }
}
