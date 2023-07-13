import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task_flora/bloc/choice_bloc/choice_bloc.dart';
import 'package:flutter_test_task_flora/injection.dart';
import 'package:flutter_test_task_flora/navigation/app_navigation/app_navigation.dart';
import 'package:flutter_test_task_flora/ui/pages/choice/choice_page.dart';

class ChoiceContainer extends StatelessWidget {
  const ChoiceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChoiceBloc(),
      child: ChoicePage(
        appNavigation: injection.get<AppNavigation>(),
      ),
    );
  }
}
