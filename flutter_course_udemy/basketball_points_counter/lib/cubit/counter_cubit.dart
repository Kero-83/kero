import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterInitial());

  void incrementa1() => emit(CounterStateData(state.countA + 1,state.countB));
  void incrementa2() => emit(CounterStateData(state.countA + 2,state.countB));
  void incrementa3() => emit(CounterStateData(state.countA + 3, state.countB));
  void incrementb1() => emit(CounterStateData(state.countA,state.countB + 1));
  void incrementb2() => emit(CounterStateData(state.countA,state.countB + 2));
  void incrementb3() => emit(CounterStateData(state.countA, state.countB + 3));
  void reset() => emit(const CounterInitial());
}
