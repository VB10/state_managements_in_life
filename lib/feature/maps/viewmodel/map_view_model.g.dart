// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MapViewModel on _MapViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_MapViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$mapModelItemsAtom = Atom(name: '_MapViewModelBase.mapModelItems');

  @override
  List<MapModel> get mapModelItems {
    _$mapModelItemsAtom.reportRead();
    return super.mapModelItems;
  }

  @override
  set mapModelItems(List<MapModel> value) {
    _$mapModelItemsAtom.reportWrite(value, super.mapModelItems, () {
      super.mapModelItems = value;
    });
  }

  final _$selectedIndexAtom = Atom(name: '_MapViewModelBase.selectedIndex');

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  final _$fetchAllMapsAsyncAction =
      AsyncAction('_MapViewModelBase.fetchAllMaps');

  @override
  Future<void> fetchAllMaps() {
    return _$fetchAllMapsAsyncAction.run(() => super.fetchAllMaps());
  }

  final _$_MapViewModelBaseActionController =
      ActionController(name: '_MapViewModelBase');

  @override
  void _changeLoading() {
    final _$actionInfo = _$_MapViewModelBaseActionController.startAction(
        name: '_MapViewModelBase._changeLoading');
    try {
      return super._changeLoading();
    } finally {
      _$_MapViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeIndex(int index) {
    final _$actionInfo = _$_MapViewModelBaseActionController.startAction(
        name: '_MapViewModelBase.changeIndex');
    try {
      return super.changeIndex(index);
    } finally {
      _$_MapViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
mapModelItems: ${mapModelItems},
selectedIndex: ${selectedIndex}
    ''';
  }
}
