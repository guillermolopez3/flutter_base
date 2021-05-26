import 'package:boileplate/bloc/auth/auth_event.dart';
import 'package:boileplate/bloc/auth/auth_state.dart';
import 'package:boileplate/repository/AuthRepository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent,AuthState>{
  final AuthRepository _repository;

  AuthBloc({required AuthRepository repository}) :
        _repository = repository,
        super(AuthInProgress());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async*{
    if(event is CheckUserSignedIn){
      yield* _mapCheckUserSignedInToState();
    }else if (event is LoggedIn){
      yield* _mapLoggedInToState();
    }else if (event is LoggedOut){
      yield* _mapLoggedOutToState();
    }
  }

  Stream<AuthState> _mapCheckUserSignedInToState() async*{
    await Future.delayed(Duration(seconds: 2));
    try{
      final signIn = await _repository.isAuthenticated();
      if(signIn){
        yield AuthSuccess();
      }else{
        yield Unauthenticated();
      }
    }catch(_){
      yield Unauthenticated();
    }
  }

  Stream<AuthState> _mapLoggedInToState() async*{
    try{

    }catch(_){

    }
  }

  Stream<AuthState> _mapLoggedOutToState() async*{
    try{

    }catch(_){

    }
  }

}