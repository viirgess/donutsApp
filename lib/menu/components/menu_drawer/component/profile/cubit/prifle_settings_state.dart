part of 'prifle_settings_cubit.dart';

abstract class ProfileSettingsState extends Equatable {
  const ProfileSettingsState();
}

class ProfileSettingsInitial extends ProfileSettingsState {
  @override
  List<Object> get props => [];
}

class ProfileSettingsUpdatedState extends ProfileSettingsState {
  @override
  List<Object> get props => [];
}

abstract class ProfileSettingsEvent extends Equatable {
  const ProfileSettingsEvent();
}

class UpdateProfileEvent extends ProfileSettingsEvent {
  final String newName;
  final String newEmail;
  final String newPhone;

  UpdateProfileEvent(this.newName, this.newEmail, this.newPhone);

  @override
  List<Object> get props => [newName, newEmail, newPhone];
}
