import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'mycub_state.dart';

class MycubCubit extends Cubit<MycubState> {
  MycubCubit() : super(MycubInitial());
}
