import 'package:basket_ball_app10/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int resultA = 0;
  int resultB = 0;

  void TeamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      resultA += buttonNumber;
      emit(CounterAIncrementState());
    }else{
      resultB += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
