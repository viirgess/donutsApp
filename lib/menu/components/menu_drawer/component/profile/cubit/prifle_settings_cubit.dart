import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'prifle_settings_state.dart';

class ProfileSettingsCubit extends Cubit<ProfileSettingsState> {
  ProfileSettingsCubit() : super(ProfileSettingsInitial());

  void updateProfile(String newName, String newEmail, String newPhone) {
    // You can add Firebase update logic here to update the user's profile data.

    // After updating, emit the correct state to notify the UI that the profile is updated.
    emit(ProfileSettingsUpdatedState());
  }
}
