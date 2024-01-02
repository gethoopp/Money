part of 'auth_cubit_cubit.dart';

@immutable
abstract class AuthCubitState {}

final class AuthCubitInitial extends AuthCubitState {}

final class AuthLogin extends AuthCubitState {
  final User? user;

  AuthLogin(this.user);
}

final class AuthError extends AuthCubitState {
 
  final SnackbarController snackbarController;


  AuthError( this.snackbarController);
}
