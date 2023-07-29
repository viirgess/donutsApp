part of 'checkbox_cubit.dart';


class CheckboxState {
  bool isChecked;

  CheckboxState({required this.isChecked});

  CheckboxState copyWith({required bool changeState}) {
    return CheckboxState(isChecked: changeState);
  }
}
