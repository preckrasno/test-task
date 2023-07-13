import 'package:flutter/material.dart';
import 'package:flutter_test_task_flora/injection.dart';
import 'package:flutter_test_task_flora/navigation/navigation_path.dart';
import 'package:flutter_test_task_flora/ui/pages/choice/choice_container.dart';
import 'package:flutter_test_task_flora/ui/pages/date_of_birth/date_of_birth_container.dart';
import 'package:flutter_test_task_flora/ui/pages/summary/summary_container.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupInjection();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        NavigationPath.choice.string: (context) => const ChoiceContainer(),
        NavigationPath.dateOfBirth.string: (context) =>
            const DateOfBirthContainer(),
        NavigationPath.summary.string: (context) => const SummaryContainer(),
      },
      initialRoute: NavigationPath.choice.string,
    );
  }
}
