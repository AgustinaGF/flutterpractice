import 'package:flutter/material.dart';
import 'package:practiceflutter/pages/counter_page.dart';
import 'package:practiceflutter/pages/menu_page.dart';

import 'routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    '/': (_) => const MenuPage(),
    Routes.counter: (_) => const CounterPage()
  };
}
