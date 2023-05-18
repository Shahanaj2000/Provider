import 'dart:async';

import 'package:flutter/material.dart';

class ProviderScreen extends StatefulWidget {
  const ProviderScreen({super.key});

  @override
  State<ProviderScreen> createState() => _ProviderScreenState();
}

class _ProviderScreenState extends State<ProviderScreen> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        count ++;
        //print(count);
        setState(() {
          
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    print('Build' + count.toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Tutorials"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text( DateTime.now().hour.toString() + ':' + DateTime.now().minute.toString() + ':' + DateTime.now().second.toString() , style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w200),),
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
    );
  }
}
