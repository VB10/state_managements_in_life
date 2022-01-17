import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'velicubit_event.dart';
part 'velicubit_state.dart';

class VelicubitBloc extends Bloc<VelicubitEvent, VelicubitState> {
  VelicubitBloc() : super(VelicubitInitial()) {
    on<VelicubitEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
