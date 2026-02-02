abstract class AuthState {}

// Initial state when the app first opens
class AuthInitial extends AuthState {}

// Shown when the login button is clicked (Spinner)
class AuthLoading extends AuthState {}

// Successful login with the Role we discussed
class AuthSuccess extends AuthState {
  final String role; // 'creator' or 'user'
  AuthSuccess({required this.role});
}

// Shown when email/password is wrong
class AuthFailure extends AuthState {
  final String error;
  AuthFailure({required this.error});
}