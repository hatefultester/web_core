import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'feature/kinetic_hive/kh_app.dart';
//import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    //usePathUrlStrategy();
  }

  // todo
  runApp(const FoodPlannerApp());
}

