import 'package:bloc/bloc.dart';
import 'package:bloc_practice/bloc/bloc_event.dart';
import 'package:bloc_practice/bloc/bloc_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>{
  CounterBloc() : super(CounterState()){
    on<IncrementEvent>(_increment);
    on<DecrementEvent>(_decrement);
  }




  void _increment(IncrementEvent event, Emitter<CounterState> emit) {
    emit(CounterState(counter: state.counter + 1));
  }

  void _decrement(DecrementEvent event, Emitter<CounterState> emit) {
    emit(CounterState(counter: state.counter - 1));
  }



}