part of 'counter_bloc.dart';

sealed class CounterState extends Equatable{

  final int count;

  CounterState(this.count);
  @override
  // TODO: implement props
  List<Object?> get props => [count];

}
class CounterInit extends CounterState{
  CounterInit() : super(0);


}
class CounterUpdate extends CounterState{
  CounterUpdate(super.count);
}
