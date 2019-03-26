


mixin Optional<T> {

  void unwrap({void some(T value), void none()}) {
    onSome((someValue) => some(someValue));
    onNone(() => none());
  }

  void onSome(void some(T some)) {
    var self = this;
    if (self is Some<T>) {
      some(self.value);
    }
  }

  void onNone(void none()) {
    var self = this;
    if (self is None<T>) {
      none();
    }
  }
}


class Some<T> with Optional<T> {

  final T _value;
  T get value => _value;

  const Some(this._value);
}


class None<T> with Optional<T> {}
