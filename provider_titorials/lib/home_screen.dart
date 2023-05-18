import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int count = 0;

  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Tutorials"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(DateTime.now().toString()),
          SizedBox(
            child: Center(
              child: Text(
                count.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 50,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++ ;
          print(count);
          setState(() {
            
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
