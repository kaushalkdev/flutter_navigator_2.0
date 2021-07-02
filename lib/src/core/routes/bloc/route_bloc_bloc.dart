import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'route_bloc_event.dart';
part 'route_bloc_state.dart';

class RouteBlocBloc extends Bloc<RouteBlocEvent, RouteBlocState> {
  RouteBlocBloc() : super(HomeState());

  @override
  Stream<RouteBlocState> mapEventToState(
    RouteBlocEvent event,
  ) async* {
    if (event is SettingsEvent) {
      yield SettingsState();
    } else if (event is DetialEvent) {
      yield DetailState();
    }
  }
}
