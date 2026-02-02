abstract class AuthEvent {}

class LoginPressed extends AuthEvent {
  final String email;
  final String password;

  LoginPressed({required this.email, required this.password});
}

// You can add LogoutPressed here later!