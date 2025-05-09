import 'dart:ffi';

import 'package:basket_ball_app10/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int resultA = 0;
  int resultB = 0;

  void TeamIncrement({required String team, required int buttonNumber}) {
    if (team == "A") {
      resultA += buttonNumber;
      emit(CounterAIncrementState());
    } else if (team == "0") {
      resultA = 0;
      emit(CounterAIncrementState());
      resultB = 0;
      emit(CounterBIncrementState());
    } else {
      resultB += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
