import 'package:bloc/bloc.dart';

enum CounterEvents { increment, decrement }

class CounterBloc extends Bloc<CounterEvents, int> {
  CounterBloc(int initialState) : super(initialState);

  // TODO: implement initialState
  int get initialState => 0;

  Stream<int> mapEventToState(CounterEvents event) async* {
    // TODO: implement mapEventToState
    switch (event) {
      case CounterEvents.increment:
        yield state + 1;
        break;
      case CounterEvents.decrement:
        yield state - 1;
        break;
    }
  }
}
