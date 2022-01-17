part of 'velimanager_cubit.dart';

abstract class VelimanagerState extends Equatable {
  const VelimanagerState();

  @override
  List<Object> get props => [];
}

class VelimanagerInitial extends VelimanagerState {
  final String data;

  const VelimanagerInitial(this.data);
}
