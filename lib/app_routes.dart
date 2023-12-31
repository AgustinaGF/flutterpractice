import 'package:flutter/material.dart';
import 'package:practiceflutter/pages/color_picker.dart';
import 'package:practiceflutter/pages/counter_page.dart';
import 'package:practiceflutter/pages/dialogs_page.dart';
import 'package:practiceflutter/pages/login_page.dart';
import 'package:practiceflutter/pages/menu_page.dart';
import 'package:practiceflutter/pages/splash_page.dart';

import 'routes.dart';

T getArguments<T>(BuildContext context) {
  return ModalRoute.of(context)!.settings.arguments as T;
}

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.splash: (_) => const SplashPage(),
    Routes.home: (_) => const MenuPage(),
    Routes.counter: (_) => const CounterPage(),
    Routes.login: (context) {
      final email = getArguments<String>(context);
      return LoginPage(
        email: email,
      );
    },
    Routes.colorPicker: (_) => const ColorPicker(),
    Routes.dialogs: (_) => const DialogsPages(),
  };
}
