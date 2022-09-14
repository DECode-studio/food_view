import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:food_view/resource/list/list_repository.dart';

import '../../models/food_model.dart';

part 'food_event.dart';
part 'food_state.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  FoodBloc() : super(FoodInitial()) {
    final ListRepository _apiRepository = ListRepository();

    on<FoodEvent>((event, emit) async {
      try {
        emit(FoodLoading());
        final mList = await _apiRepository.fetchFoodList();
        emit(FoodLoaded(mList));
        if (mList.error != null) {
          emit(FoodError(mList.error));
        }
      } on NetworkError {
        emit(const FoodError("Failed to fetch data. is your device online?"));
      }
    });
  }
}
