
// mixin - маркер
mixin ViewState {}


// Объект со стейтом
mixin Stateful<S extends ViewState> {
  S get initialState;
  S get state;
}


// Объект с реактивным стейтом
mixin StatefulObserver<S extends ViewState> {
  Stream<S> get stateStream;
}


// Объект от которого можно отписаться
mixin Disposable {
  void dispose();
}