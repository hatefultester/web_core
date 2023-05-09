import 'dart:convert';

import 'kh_day_plan.dart';

class KhDietaryPlan {
  final List<KhDayPlan> dayPlans;
  final String recommendation;

  KhDietaryPlan(this.dayPlans, this.recommendation);

  factory KhDietaryPlan.fromJson(Map<String, dynamic> json) {
    return KhDietaryPlan(
      (json['dayPlans'] as List).map((dayPlan) => KhDayPlan.fromJson(dayPlan)).toList(),
      json['recommendation'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dayPlans': dayPlans.map((dayPlan) => dayPlan.toJson()).toList(),
      'recommendation': recommendation,
    };
  }
}