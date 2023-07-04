// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}



class OnLogin extends CounterEvent {
  final String name;
  OnLogin({
    required this.name,
  });

    @override
  List<Object> get props => [name];
}


class ChangeCounter extends CounterEvent {
  final int bythisValue;
  
  ChangeCounter({
    required this.bythisValue,
  });
  

    @override
  List<Object> get props => [bythisValue];
}
