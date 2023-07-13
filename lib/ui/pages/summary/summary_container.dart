import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task_flora/bloc/summary_bloc/summary_bloc.dart';
import 'package:flutter_test_task_flora/data/models/summary_model.dart';
import 'package:flutter_test_task_flora/ui/pages/summary/summary_page.dart';

class SummaryContainer extends StatelessWidget {
  const SummaryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final SummaryModel summary =
        ModalRoute.of(context)!.settings.arguments as SummaryModel;
    return BlocProvider(
      create: (context) => SummaryBloc(
        summary: summary,
      ),
      child: const SummaryPage(),
    );
  }
}
