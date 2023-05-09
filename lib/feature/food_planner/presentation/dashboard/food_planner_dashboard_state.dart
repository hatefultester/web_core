import 'package:fluent_ui/fluent_ui.dart';

enum FoodPlannerDashboardState {
  home, planner, about,
  user
}

FoodPlannerDashboardState? getDashboardMenuItemFromIndex(int value) {
if (value == 0) return FoodPlannerDashboardState.home;
if (value == 1) return FoodPlannerDashboardState.planner;
if (value == 2) return FoodPlannerDashboardState.about;
if (value == 3) return FoodPlannerDashboardState.user;
return null;
}

extension FoodPlannerDashboardStateExtension on FoodPlannerDashboardState {

  int getMenuItemIndex() {
    switch (this) {

      case FoodPlannerDashboardState.home:
        return 0;
      case FoodPlannerDashboardState.planner:
        return 1;
      case FoodPlannerDashboardState.about:
        return 2;
      case FoodPlannerDashboardState.user:
        return 3;
    }
  }

  Icon getMenuIcon() {
    switch (this) {

      case FoodPlannerDashboardState.home:
        return const Icon(FluentIcons.home);
      case FoodPlannerDashboardState.planner:
        return const Icon(FluentIcons.calendar_agenda);
      case FoodPlannerDashboardState.user:
        return const Icon(FluentIcons.account_management);
      case FoodPlannerDashboardState.about:
        return const Icon(FluentIcons.info);
    }
  }

  String getMenuTitle() {
    switch (this) {

      case FoodPlannerDashboardState.home:
        return 'Home';
      case FoodPlannerDashboardState.planner:
        return 'Create plan';
      case FoodPlannerDashboardState.user:
        return 'Account';
      case FoodPlannerDashboardState.about:
        return 'About';
    }
  }

  isFooterMenuItem() => !isMenuItem();

  isMenuItem() {
    switch (this) {

      case FoodPlannerDashboardState.home:
      case FoodPlannerDashboardState.planner:
        return true;
      case FoodPlannerDashboardState.about:
      case FoodPlannerDashboardState.user:
        return false;
    }
  }
}