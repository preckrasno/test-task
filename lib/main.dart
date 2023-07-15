import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task_flora/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:flutter_test_task_flora/injection.dart';
import 'package:flutter_test_task_flora/navigation/navigation_path.dart';
import 'package:flutter_test_task_flora/navigation/router/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupInjection();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBloc()..add(NavigationOpenChoicePage()),
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
        ),
        initialRoute: NavigationPath.choice.string,
        onGenerateRoute: _appRouter.onGenerateRoute,
      ),
    );
  }
}
