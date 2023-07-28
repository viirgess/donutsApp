import 'package:flutter_bloc/flutter_bloc.dart';

class CheckboxCubit extends Cubit<CheckboxState> {
  CheckboxCubit() : super(CheckboxState(isChecked: false));

  void changeValue(bool value) {
    emit(state.copyWith(changeState: value));
  }
}

class CheckboxState {
  bool isChecked;

  CheckboxState({required this.isChecked});

  CheckboxState copyWith({required bool changeState}) {
    return CheckboxState(isChecked: changeState);
  }
}