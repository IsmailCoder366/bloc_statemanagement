import 'package:bloc_practice/bloc/switch_bloc/switch_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/switch_bloc/switch_bloc.dart';
import '../../bloc/switch_bloc/switch_state.dart';

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
                BlocBuilder<SwitchBloc, SwitchState>(builder: (context, state) {
                  print('build');
                  return Switch(value: state.isSwitch, onChanged: (newValue) {
                    context.read<SwitchBloc>().add(
                        EnabledOrDisabledNotifications());
                  });
                })
              ],
            ),
            SizedBox(height: 30),
            BlocBuilder<SwitchBloc, SwitchState>(
              builder: (context, state) {
                return Container(
                  height: 200,
                  color: Colors.red.withOpacity(state.slider),
                );
              },
            ),
            SizedBox(height: 30),
            BlocBuilder<SwitchBloc, SwitchState>(builder: (context, state) {
              return Slider(
                  value: state.slider, onChanged: (value) {

              }
              );
            })
          ],
        ),
      ),
    );
  }
}
