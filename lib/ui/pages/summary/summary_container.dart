import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task_flora/bloc/summary_bloc/summary_bloc.dart';
import 'package:flutter_test_task_flora/data/repositories/summary_repository.dart';
import 'package:flutter_test_task_flora/ui/pages/summary/summary_page.dart';
import 'package:get_it/get_it.dart';

class SummaryContainer extends StatelessWidget {
  const SummaryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SummaryBloc(
        summaryRepository: GetIt.instance.get<SummaryRepository>(),
      ),
      child: const SummaryPage(),
    );
  }
}
