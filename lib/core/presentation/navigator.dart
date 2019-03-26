import 'package:app_driver/core/common/optional.dart';
import 'package:app_driver/core/presentation/global_context.dart';
import 'package:app_driver/core/presentation/stateful.dart';
import 'package:flutter/widgets.dart';


class BaseRouter implements Disposable {

  @protected
  Optional<BuildContext> context;
  ContextListener _listener;

  void attach() {
    _listener = (context) => this.context = context;
    GlobalContext.shared.addListener(_listener);
  }

  @override
  void dispose() {
    GlobalContext.shared.removeListener(_listener);
    context = None();
  }
}
