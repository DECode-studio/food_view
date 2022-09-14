import 'dart:async';

class ChangeScreenBloc {
  var navIndex = 0;

  StreamController _changeInputController = StreamController();
  StreamSink get sinkInputChange => _changeInputController.sink;

  StreamController _changeOutputController = StreamController();
  StreamSink get sinkOutputChange => _changeOutputController.sink;

  Stream get output => _changeOutputController.stream;

  ChangeScreenBloc() {
    _changeInputController.stream.listen(
      (event) {
        navIndex = event;

        sinkOutputChange.add(event);
      },
    );
  }

  void dispose() {
    _changeInputController.close();
    _changeOutputController.close();
  }
}
