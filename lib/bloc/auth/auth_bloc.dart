import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../repository/AuthRepository.dart';
import '../../model/User.dart';

part 'auth_event.dart';
part 'auth_state.dart';

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
      final user = _repository.getCurrentUser();
      //final User? user = User(id: 1, email: 'guillermo.lopez@coderio.co');
      if(user != null){
        yield AuthSuccess(user);
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