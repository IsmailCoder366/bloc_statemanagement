import 'package:flutter/material.dart';

class SwitchExampleScreen extends StatelessWidget {
  const SwitchExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Notification'),
                Switch(value: true, onChanged: (newValue){

                })
              ],
            ),
            SizedBox(height: 30),
            Container(
              height: 200,
              color: Colors.red.withOpacity(0.2),
            ),
            SizedBox(height: 30),
            Slider(
              value: 0.4,
              onChanged: (value){},
            )
          ],
        ),
      ),
    );
  }
}
