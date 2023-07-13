import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task_flora/bloc/date_of_birth_bloc/date_of_birth_bloc.dart';
import 'package:flutter_test_task_flora/data/models/summary_model.dart';
import 'package:flutter_test_task_flora/injection.dart';
import 'package:flutter_test_task_flora/navigation/app_navigation/app_navigation.dart';
import 'package:flutter_test_task_flora/ui/pages/date_of_birth/date_of_birth_page.dart';

class DateOfBirthContainer extends StatelessWidget {
  const DateOfBirthContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final SummaryModel summary =
        ModalRoute.of(context)!.settings.arguments as SummaryModel;
    return BlocProvider(
      create: (context) => DateOfBirthBloc(
        summary: summary,
      ),
      child: DateOfBirthPage(
        appNavigation: injection.get<AppNavigation>(),
      ),
    );
  }
}
