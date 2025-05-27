import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int count = 0;
  CounterBloc() : super(CounterInitial(0)) {
    on<CounterEvent>((event, emit) {
      if (event is InrementEvent) {
        count++;
        emit(NumberIncrimented(count));
      }

      if (event is DecrementEvent) {
        count--;
        emit(NumberDecremented(count));
      }

      if (event is CounterResetEvent) {
        count = 0;
        emit(CounterReset(count));
      }
    });
  }
}
