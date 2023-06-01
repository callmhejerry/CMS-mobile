abstract class AuthEvent {}

class LoadUser extends AuthEvent {}

class LoginAdmin extends AuthEvent {
  String emailAddress;
  String password;

  LoginAdmin({required this.emailAddress, required this.password});
}

class LoginMember extends AuthEvent {
  String emailAddress;
  String password;

  LoginMember({required this.emailAddress, required this.password});
}

class LoginGuest extends AuthEvent {}

class Logout extends AuthEvent {}
