import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task_flora/bloc/summary_bloc/summary_bloc.dart';
import 'package:flutter_test_task_flora/ui/widgets/summary/summary_widget.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SummaryBloc, SummaryState>(
      builder: (context, state) {
        return SummaryWidget(
          summary: state.summary,
        );
      },
    );
  }
}
