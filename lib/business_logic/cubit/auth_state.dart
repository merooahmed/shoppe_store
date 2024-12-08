part of 'auth_cubit.dart';


@immutable

sealed class AuthState {}


final class AuthInitial extends AuthState {}


final class LoginRedirect extends AuthState {}

final class SignupSuccess extends AuthState {}
final class SignupFailed extends AuthState {
  final String message;
  SignupFailed({required this.message});
}
