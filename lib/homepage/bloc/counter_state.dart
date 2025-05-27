part of 'counter_bloc.dart';

abstract class CounterState {
  int count;
  CounterState(this.count);
}

class CounterInitial extends CounterState {
  CounterInitial(super.count);
}

class NumberIncrimented extends CounterState {
  NumberIncrimented(super.count);
}

class NumberDecremented extends CounterState {
  NumberDecremented(super.count);
}

class CounterReset extends CounterState {
  CounterReset(super.count);
}
