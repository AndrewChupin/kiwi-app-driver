import 'package:app_driver/core/common/optional.dart';
import 'package:app_driver/core/presentation/global_context.dart';
import 'package:app_driver/core/presentation/stateful.dart';
import 'package:flutter/widgets.dart';


class BaseRouter implements Disposable {

  @protected
  Optional<BuildContext> context;

  void attach() {
    GlobalContext.shared.addListener((context) => this.context = context);
  }

  @override
  void dispose() {
    context = None();
  }
}
