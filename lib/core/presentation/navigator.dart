import 'package:app_driver/core/common/optional.dart';
import 'package:app_driver/core/presentation/stateful.dart';
import 'package:flutter/widgets.dart';


class BaseNavigator with Disposable {

  @protected
  Optional<BuildContext> context;

  void attach(BuildContext context) {
    this.context = Some(context);
  }

  @override
  void dispose() {
    context = None();
  }
}
