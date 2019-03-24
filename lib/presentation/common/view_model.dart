import 'dart:async';

import 'package:flutter/material.dart';


mixin ViewState {}


class BaseViewModel {}


abstract class StatefulViewModel<S extends ViewState> extends BaseViewModel {

  S get initialState;

  final _stateController = StreamController<S>();
  Stream<S> get stateStream => _stateController.stream;

  S _state;
  S get state => _state;

  StatefulViewModel() {
    _state = initialState;
  }

  @mustCallSuper
  void updateState(S func()) {
    var state = func();
    _state = state;
    _stateController.add(state);
    print("updateState $state");
  }

  @mustCallSuper
  void dispose() {
    _stateController.close();
  }
}
