part of 'layout_cubit.dart';

@immutable
abstract class LayoutState {}

class LayoutInitial extends LayoutState {}
class ChangeBottomScreen extends LayoutState {}
class GetUserDataLoading extends LayoutState {}
class GetUserDataSuccess extends LayoutState {}

class ShowPassVisibility extends LayoutState {}
class RegisterLoading extends LayoutState {}
class RegisterSuccess extends LayoutState {
  final String uid;
  RegisterSuccess(this.uid);
}
class RegisterError extends LayoutState {
  final String error;
  RegisterError(this.error);
}
class LoginLoading extends LayoutState {}
class LoginSuccess extends LayoutState {
  final String uid;
  LoginSuccess(this.uid);
}
class LoginError extends LayoutState {
  final String error;
  LoginError(this.error);
}