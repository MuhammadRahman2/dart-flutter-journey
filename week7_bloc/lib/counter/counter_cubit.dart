import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week7_bloc/counter/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(count: 0));

  void increment() {
    emit(CounterState(count: state.count + 1));
  }

  void decrement() {
    if (state.count == 0) return;

    emit(CounterState(count: state.count - 1),
    );
  }

   void resit() {
    emit(CounterState(count: 0));
  }
}
