import '../entities/account_settings_data.dart';

abstract class UserSettingsUseCase {
  Future<void> updateAccountSettings({final AccountSettingsData accountSettingsData});
}