import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState> {
  CounterBloc():super(CounterInit()){
    on<IncreamentEvent> ((event , emit){
      emit(CounterUpdate(state.count+1));


    });


    on<DecreamentEvent> ((event , emit){
      emit(CounterUpdate(state.count-1));


    });
}


}
