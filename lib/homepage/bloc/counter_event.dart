part of 'counter_bloc.dart';

abstract class CounterEvent {}

class InrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}

class CounterResetEvent extends CounterEvent {}
