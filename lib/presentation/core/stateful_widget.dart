import 'package:app_driver/presentation/core/view_model.dart';
import 'package:flutter/widgets.dart';


// Базовый StatelessWidget
abstract class BaseStatelessWidget<VM extends BaseViewModel> extends StatelessWidget {
  VM get viewModel;
}