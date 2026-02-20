import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';

import '../bloc/counter_event.dart';
import '../bloc/counter_state.dart';

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

          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state){
              return Center(child: Text(state.counter.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)));

            }
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FloatingActionButton(onPressed: (){
                    context.read<CounterBloc>().add(IncrementCounter());

                  }, child: Text('inc')),
                  SizedBox(width: 20),
                  FloatingActionButton(onPressed: (){
                    context.read<CounterBloc>().add(DecrementCounter());

                  }, child: Text('dec')),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
