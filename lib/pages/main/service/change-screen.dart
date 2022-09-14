import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenEvent {
  const ScreenEvent();
}

class ChangeScreen extends ScreenEvent {
  final int navIndex;
  const ChangeScreen({this.navIndex = 0});
}

class ScreenState {
  final int navIndex;
  const ScreenState({required this.navIndex});
}

class ScreenBloc extends Bloc<ScreenEvent, ScreenState> {
  ScreenBloc(ScreenState initialState) : super(initialState);

  @override
  Stream<ScreenState> mapEventToState(ScreenEvent event) async* {
    if (event is ChangeScreen) {
      yield ScreenState(navIndex: state.navIndex);
    }
  }
}
