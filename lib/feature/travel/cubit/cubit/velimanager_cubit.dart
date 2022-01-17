import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'velimanager_state.dart';

class VelimanagerCubit extends Cubit<VelimanagerState> {
  VelimanagerCubit() : super(VelimanagerInitial('a'));
}
