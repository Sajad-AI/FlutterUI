import 'package:get/get.dart';

import '../pages/unknown/view/view.dart' as unknown;
import '../pages/main/view/view.dart' as main;
import '../pages/main/binding/binding.dart' as main_binding;
import '../pages/login/view/view.dart' as login;
import '../pages/login/binding/binding.dart' as login_binding;
import '../pages/dashboard/view/view.dart' as dashboard;
import '../pages/dashboard/binding/binding.dart' as dashboard_binding;

part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.unknown, page: () => unknown.View()),
    GetPage(
        name: Routes.main,
        page: () => const main.View(),
        binding: main_binding.Binding()),
    GetPage(
        name: Routes.login,
        page: () => const login.View(),
        binding: login_binding.Binding()),
    GetPage(
        name: Routes.dashboard,
        page: () =>  dashboard.View(),
        binding: dashboard_binding.Binding()),
  ];
}
