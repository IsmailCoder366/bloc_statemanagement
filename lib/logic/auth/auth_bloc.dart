import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    // Listen for the Login button press
    on<LoginPressed>((event, emit) async {
      emit(AuthLoading()); // Tell UI to show spinner

      try {
        // Mocking a network delay (like calling Firebase)
        await Future.delayed(const Duration(seconds: 2));

        // ROLE LOGIC: Telling the app who is who
        // If email has 'admin', they are a Creator. Otherwise, a User.
        if (event.email.contains('admin')) {
          emit(AuthSuccess(role: 'creator'));
        } else {
          emit(AuthSuccess(role: 'user'));
        }
      } catch (e) {
        emit(AuthFailure(error: "Something went wrong. Try again!"));
      }
    });
  }
}