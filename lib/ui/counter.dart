import 'package:bloc_practice/bloc/counter_bloc/bloc_event.dart';
import 'package:bloc_practice/bloc/counter_bloc/bloc_state.dart';
import 'package:bloc_practice/bloc/counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('counter example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Center(child: Text(state.counter.toString(), style: TextStyle(fontSize: 60)));
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                context.read<CounterBloc>().add(IncrementEvent());

              }, child: Text('Inc')),
              SizedBox(width: 20),
              ElevatedButton(onPressed: () {
                context.read<CounterBloc>().add(DecrementEvent());
              }, child: Text('Dec')),
            ],
          )
        ],
      ),
    );
  }
}
