import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'cube_state.dart';

class CubeCubit extends Cubit<CubeState> {
  CubeCubit() : super(CubeInitial());

// update data
// emit
  changeInitialToUpdateCubit()=>emit(CubeNew());

// duration 
  fetchData() async{
    emit(Loading());

    try {
     await Future.delayed(const Duration(milliseconds: 500), (){
          emit(DataState());
      });
      
    } catch (e) {
      emit(Error(e: e.toString()));
    }
  }







}



