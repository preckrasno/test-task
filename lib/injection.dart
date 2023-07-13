import 'package:flutter_test_task_flora/navigation/app_navigation/app_navigation.dart';
import 'package:flutter_test_task_flora/navigation/app_navigation/app_navigation_implementation.dart';
import 'package:get_it/get_it.dart';

final injection = GetIt.instance;

void setupInjection() {
  injection.registerSingleton<AppNavigation>(
    AppNavigationImplementation(),
  );
}
