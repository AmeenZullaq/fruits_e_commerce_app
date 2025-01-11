import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  int currentNavBarIndex = 0;

  void changeNavBarIndex(int index) {
    currentNavBarIndex = index;
    emit(
      IndexChanged(),
    );
  }
}
