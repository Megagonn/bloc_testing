// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'cube_cubit.dart';

abstract class CubeState extends Equatable {

  const CubeState();

  @override
  List<Object> get props => [];
}

class CubeInitial extends CubeState {}  //data 

class CubeNew extends CubeState {}  //data 


class Loading extends CubeState {}  //data 


class DataState extends CubeState {}  //data 


class Error extends CubeState {
  final String e;

  const Error({
    required this.e,
  });

  @override
  List<Object> get props => [e];

  
}  //data 




