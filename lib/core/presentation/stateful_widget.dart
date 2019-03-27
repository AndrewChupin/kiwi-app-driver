
import 'package:app_driver/core/common/logger.dart';
import 'package:app_driver/core/presentation/global_context.dart';
import 'package:app_driver/core/presentation/stateful.dart';
import 'package:app_driver/core/presentation/view_model.dart';
import 'package:flutter/widgets.dart';


// Базовый StatefulWidget
abstract class BaseStatefulWidget<BS extends BaseState<VM>, VM extends DisposableViewModel> extends StatefulWidget {

  BS get state;
  
  @override
  State<StatefulWidget> createState() {
    return state;
  }
}


// Базовый State без ViewState
abstract class BaseState<VM extends DisposableViewModel> extends State<BaseStatefulWidget> {

  final VM viewModel;

  BaseState(this.viewModel);

  @override
  void didChangeDependencies() {
    log("BaseState didChangeDependencies");
    super.didChangeDependencies();
    viewModel.attach();
  }

  @override
  @mustCallSuper
  void dispose() {
    log("BaseState dispose");
    viewModel.dispose();
    super.dispose();
  }
}


// Базовый State c ViewState
abstract class BaseStateWithProps<VM extends StatefulViewModel<VS>, VS extends ViewState> extends BaseState<VM> {

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


// mixin для экрана который не имеет родительских виджетов
mixin RootScreen<VM extends StatefulViewModel<VS>, VS extends ViewState> on BaseState<VM>  {
  BuildContext get context;

  @override
  void didChangeDependencies() {
    log("RootScreen didChangeDependencies");
    super.didChangeDependencies();
    GlobalContext.shared.attach(context);
  }

  @override
  @mustCallSuper
  void dispose() {
    log("RootScreen dispose");
    super.dispose();
    GlobalContext.shared.detach();
  }
}
