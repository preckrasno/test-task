import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task_flora/bloc/choice_bloc/choice_bloc.dart';
import 'package:flutter_test_task_flora/data/repositories/summary_repository.dart';
import 'package:flutter_test_task_flora/ui/pages/choice/choice_page.dart';
import 'package:get_it/get_it.dart';

class ChoiceContainer extends StatelessWidget {
  const ChoiceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChoiceBloc(
        summaryRepository: GetIt.instance.get<SummaryRepository>(),
      ),
      child: const ChoicePage(),
    );
  }
}
