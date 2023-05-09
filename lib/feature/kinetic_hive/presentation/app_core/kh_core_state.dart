import 'package:fluent_ui/fluent_ui.dart';

enum KhCoreState {
  home, planner, about,
  user
}

KhCoreState? getDashboardMenuItemFromIndex(int value) {
if (value == 0) return KhCoreState.home;
if (value == 1) return KhCoreState.planner;
if (value == 2) return KhCoreState.about;
if (value == 3) return KhCoreState.user;
return null;
}

extension KhCoreStateExtension on KhCoreState {

  int getMenuItemIndex() {
    switch (this) {

      case KhCoreState.home:
        return 0;
      case KhCoreState.planner:
        return 1;
      case KhCoreState.about:
        return 2;
      case KhCoreState.user:
        return 3;
    }
  }

  Icon getMenuIcon() {
    switch (this) {

      case KhCoreState.home:
        return const Icon(FluentIcons.home);
      case KhCoreState.planner:
        return const Icon(FluentIcons.calendar_agenda);
      case KhCoreState.user:
        return const Icon(FluentIcons.account_management);
      case KhCoreState.about:
        return const Icon(FluentIcons.info);
    }
  }

  String getMenuTitle() {
    switch (this) {

      case KhCoreState.home:
        return 'Home';
      case KhCoreState.planner:
        return 'Create plan';
      case KhCoreState.user:
        return 'Account';
      case KhCoreState.about:
        return 'About';
    }
  }

  isFooterMenuItem() => !isMenuItem();

  isMenuItem() {
    switch (this) {

      case KhCoreState.home:
      case KhCoreState.planner:
        return true;
      case KhCoreState.about:
      case KhCoreState.user:
        return false;
    }
  }
}