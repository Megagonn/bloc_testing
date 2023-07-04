import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super( CounterState(counter: 0, counter2: 0)) {



    // on<CounterEvent>((event, emit) {
    //     emit(state.copyWith(counter: 2, list: []));
    // });


    on<ChangeCounter>((event, emit) {
      print(state.counter);
        emit(state.copyWith(counter: state.counter + event.bythisValue ));
    });



    on<OnLogin>(login);




  }

  FutureOr<void> login(OnLogin event, Emitter<CounterState> emit){
    //  event.nam  httpe 

    // http.get(
    //   body: {
    //     'name': event.name
    //   }
    // )
  }
}

