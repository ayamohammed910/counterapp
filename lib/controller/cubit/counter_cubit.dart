import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit():super(0);

  void increament(){
    emit(state+1);

  }

  void decreament(){
    emit(state-1);
  }
}
