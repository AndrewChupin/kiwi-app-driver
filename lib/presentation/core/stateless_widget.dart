import 'package:app_driver/presentation/core/stateful.dart';
import 'package:app_driver/presentation/core/view_model.dart';
import 'package:flutter/widgets.dart';


// Базовый StatefulWidget
abstract class BaseStatefulWidget<VM extends DisposableViewModel> extends StatefulWidget {

  BaseState get state;

  @override
  State<StatefulWidget> createState() {
    return state;
  }
}


// Базовый State без ViewState
abstract class BaseState<BW extends BaseStatefulWidget<VM>, VM extends DisposableViewModel> extends State<BW> {

  final VM viewModel;

  BaseState(this.viewModel);

  @override
  @mustCallSuper
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }
}


// Базовый State c ViewState
abstract class BaseStateWithProps<BW extends BaseStatefulWidget<VM>, VM extends StatefulViewModel<VS>, VS extends ViewState> extends BaseState<BW, VM> {
  BaseStateWithProps(VM viewModel) : super(viewModel);

  Widget render(BuildContext context, VS state);

  @override
  Widget build(BuildContext context) {
    var stream = StreamBuilder<VS>(
      stream: viewModel.stateStream,
      initialData: viewModel.initialState,
      builder: (BuildContext context, AsyncSnapshot<VS> snapshot) {
        return render(context, snapshot.data);
      },
    );

    return stream;
  }
}
