import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('0', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FloatingActionButton(onPressed: (){}, child: Text('inc')),
                  SizedBox(width: 20),
                  FloatingActionButton(onPressed: (){}, child: Text('dec')),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
