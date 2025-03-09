part of 'counter_cubit.dart';

sealed class CounterState{

   final int count;

  CounterState(this.count);

}
 class CounterInit extends CounterState{
  CounterInit() : super(10);
}
class CounterUpdate extends CounterState{
  CounterUpdate(super.count);
}
