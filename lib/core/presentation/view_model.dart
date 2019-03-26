import 'dart:async';

import 'package:app_driver/core/presentation/stateful.dart';
import 'package:flutter/material.dart';


abstract class BaseViewModel {
  // TODO логика для экранов без стейта, но с экшенами
}


abstract class DisposableViewModel extends BaseViewModel with Disposable {
  // TODO логика для экранов без стейта, но с экшенами
}


abstract class StatefulViewModel<S extends ViewState> extends DisposableViewModel with Stateful<S>, StatefulObserver<S> {

  final _stateController = StreamController<S>();
  S _state;

  @override
  Stream<S> get stateStream => _stateController.stream;

  @override
  S get state => _state;

  StatefulViewModel() {
    _state = initialState;
  }

  @mustCallSuper
  void updateState(void func()) {
    func();
    _stateController.add(state);
  }

  @mustCallSuper
  @override
  void dispose() {
    _stateController.close();
  }
}
