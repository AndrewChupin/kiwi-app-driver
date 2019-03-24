import 'package:app_driver/presentation/common/view_model.dart';
import 'package:flutter/widgets.dart';


enum ScreenState {
  loading, error, data, success
}


abstract class BaseWidget<VM extends StatefulViewModel> extends StatefulWidget {

  BaseState get state;

  @override
  State<StatefulWidget> createState() {
    return state;
  }
}


abstract class BaseState<BW extends BaseWidget<VM>, VM extends StatefulViewModel<VS>, VS extends ViewState> extends State<BW> {

  final VM viewModel;

  BaseState(this.viewModel);

  Widget render(BuildContext context, VS state);

  @override
  Widget build(BuildContext context) {
    var stream = StreamBuilder<VS>(
      stream: viewModel.stateStream,
      initialData: viewModel.initialState,
      builder: (BuildContext context, AsyncSnapshot<VS> snapshot) {
        print("Update data ${snapshot.data}");
        return render(context, snapshot.data);
      },
    );

    return stream;
  }

  @override
  @mustCallSuper
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }
}