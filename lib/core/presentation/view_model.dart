import 'dart:async';

import 'package:app_driver/core/presentation/navigator.dart';
import 'package:app_driver/core/presentation/stateful.dart';
import 'package:flutter/material.dart';


abstract class BaseViewModel {

  @protected
  bool isAttached = false;

  @mustCallSuper
  void attach() {
    if (!isAttached) {
      isAttached = true;
      onFirstAttach();
    }

    onAttach();
  }

  void onAttach() {}

  void onFirstAttach() {}
}


abstract class DisposableViewModel extends BaseViewModel with Disposable {

  @protected
  BaseRouter router;
  bool isAttached = false;

  DisposableViewModel(this.router);

  @mustCallSuper
  @override
  void attach() {
    router.attach();
    super.attach();
  }

  @mustCallSuper
  @override
  void dispose() {
    router.dispose();
  }
}


abstract class StatefulViewModel<S extends ViewState> extends DisposableViewModel with Stateful<S>, StatefulObserver<S> {

  final _stateController = StreamController<S>();
  S _state;

  @override
  Stream<S> get stateStream => _stateController.stream;

  @override
  S get state => _state;

  StatefulViewModel(BaseRouter router) : super(router) {
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
    super.dispose();
  }
}
