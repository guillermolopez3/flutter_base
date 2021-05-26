import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable{
  const AuthState();
  @override
  List<Object> get props => [];
}

class AuthInProgress extends AuthState{}

class AuthSuccess extends AuthState{
  //TODO agregar el retorno correspondiente
  const AuthSuccess();

  List<Object> get props=>[];
}

class Unauthenticated extends AuthState{}

class AuthFailure extends AuthState{}