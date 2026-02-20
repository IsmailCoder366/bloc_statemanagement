import 'package:bloc/bloc.dart';
import 'package:bloc_practice/bloc/switch_bloc/switch_event.dart';
import 'package:bloc_practice/bloc/switch_bloc/switch_state.dart';

class SwitchBloc  extends Bloc<SwitchEvent, SwitchState>{
  SwitchBloc() : super(SwitchState()){
    on<EnabledOrDisabledNotifications>(_enableORDisabledNotification);
  }

  void _enableORDisabledNotification(EnabledOrDisabledNotifications event, Emitter<SwitchState> emit){

    emit(state.copyWith(isSwitch: !state.isSwitch));

  }
}