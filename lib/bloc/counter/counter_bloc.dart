import 'package:increment_decrement/bloc/bloc_imports.dart';
import 'package:equatable/equatable.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial()) {
    on<CounterIncrementEvent>((event, emit) {
      emit(IncrementState(state.counterValue +1));
    });
    on<CounterDecrementEvent>((event,emit){
      emit(DecrementState(state.counterValue -1));
    });
  }
}
