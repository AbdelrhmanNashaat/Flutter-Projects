part of 'sign_up_cubit_cubit.dart';

abstract class SignUpCubitState {}

final class SignUpCubitInitial extends SignUpCubitState {}

final class SignUpSuccess extends SignUpCubitState {}

final class SignUpFailure extends SignUpCubitState {
  String errorMessage;
  SignUpFailure({required this.errorMessage});
}

final class SignUpLoading extends SignUpCubitState {}
