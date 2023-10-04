part of 'counter_cubit.dart';

abstract class CounterState {
  final int countA, countB;
  const CounterState(this.countA, this.countB):super();
}

final class CounterInitial extends CounterState {
  const CounterInitial() : super(0, 0);
}

class CounterStateData extends CounterState {
  const CounterStateData(int countA, countB) : super(countA, countB);
}
