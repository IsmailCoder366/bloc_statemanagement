import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable{}

class IncrementCounter extends CounterEvent{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class DecrementCounter extends CounterEvent{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}