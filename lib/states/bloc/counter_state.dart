// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int counter;
  final int counter2;
  final List<int> list;

  
  CounterState({
    required this.counter,
    required this.counter2,
    this.list= const <int>[]
  });

  @override
  List<Object> get props => [counter, counter2, list];


  CounterState copyWith({
    int? counter,
    int? counter2,
    List<int>? list,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
      counter2: counter2 ?? this.counter2,
      list: list ?? this.list,
    );
  }
}










// class CounterInitial extends CounterState {}
