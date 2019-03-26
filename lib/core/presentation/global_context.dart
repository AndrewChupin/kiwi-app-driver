
import 'package:app_driver/core/common/logger.dart';
import 'package:app_driver/core/common/optional.dart';
import 'package:flutter/widgets.dart';


typedef ContextListener = void Function(Optional<BuildContext> newContext);


class GlobalContext {

  GlobalContext._();

  static GlobalContext _object;

  static GlobalContext get shared {
    if (_object == null) {
      _object = GlobalContext._();
    }
    return _object;
  }

  List<ContextListener> _listeners = [];

  Optional<BuildContext> _currentContext;
  Optional<BuildContext> get context => _currentContext;

  void attach(BuildContext context) {
    log("attach new context");
    _currentContext = Some(context);
    _listeners.forEach((listener) => listener(_currentContext));
  }

  void detach() {
    log("detach context");
    _currentContext = None();
    _listeners.forEach((listener) => listener(_currentContext));
  }

  void addListener(ContextListener listener) {
    _listeners.add(listener);
    listener(_currentContext);
  }

  void removeListener(ContextListener listener) {
    _listeners.remove(listener);
  }
}
