import 'dart:async';

import 'package:food_view/dao/favorite_dao.dart';
import 'package:food_view/widgets/toast.dart';

class CheckFavoritBloc {
  var inputType = false;

  StreamController _inputTypeController = StreamController();
  StreamSink get sinkInputType => _inputTypeController.sink;

  StreamController _outputTypeController = StreamController();
  StreamSink get sinkOutputType => _outputTypeController.sink;

  Stream get output => _outputTypeController.stream;

  CheckFavoritBloc() {
    _inputTypeController.stream.listen(
      (event) {
        print("check type");
        // toast(event, "check type");
        FavoriteDao.getItem(event).then((value) {
          print(event);
          if (value.isEmpty) {
            inputType = false;
          } else {
            inputType = true;
          }
        });

        sinkOutputType.add(inputType);
      },
    );
  }

  void dispose() {
    _inputTypeController.close();
    _outputTypeController.close();
  }
}

class FavoriteBloc {
  var favoritData = [];

  StreamController _inputController = StreamController();
  StreamSink get sinkInput => _inputController.sink;

  StreamController _outputController = StreamController();
  StreamSink get sinkOutput => _outputController.sink;

  Stream get output => _outputController.stream;

  FavoriteBloc() {
    _inputController.stream.listen(
      (_) {
        FavoriteDao.getItems().then((value) => favoritData = value);

        sinkOutput.add(favoritData);
      },
    );
  }

  // void dispose() {
  //   _inputController.close();
  //   _outputController.close();
  // }
}
