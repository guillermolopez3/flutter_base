import '../../../modules/user/repository/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent,SplashState>{

  final UserRepository _userRepository;

  SplashBloc({required UserRepository userRepository
  }): _userRepository=userRepository, super(SplashState.stayInSplash);

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async*{
    switch(event){
      case SplashEvent.checkUserSignedIn:
        yield* _mapCheckUserSignedInToState();
        break;
    }
  }

  Stream<SplashState> _mapCheckUserSignedInToState() async*{
    await Future.delayed(Duration(seconds: 1));
  }
  
}