part of 'auth_bloc.dart';


abstract class AuthState extends Equatable{
  const AuthState();
  @override
  List<Object> get props => [];
}

class AuthInProgress extends AuthState{}

class AuthSuccess extends AuthState{
  //TODO agregar el retorno correspondiente
  final User user;
  const AuthSuccess(this.user);

  List<Object> get props=>[user];
}

class Unauthenticated extends AuthState{}

class AuthFailure extends AuthState{}