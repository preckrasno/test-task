import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task_flora/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:flutter_test_task_flora/bloc/summary_bloc/summary_bloc.dart';
import 'package:flutter_test_task_flora/ui/widgets/summary/summary_widget.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final summaryBloc = context.read<SummaryBloc>();
    final navigationBloc = context.read<NavigationBloc>();
    return BlocConsumer<SummaryBloc, SummaryState>(
      listener: (context, state) async {
        if (state is SummaryNavigatePop) {
          navigationBloc.add(NavigationPopEvent());
        }
      },
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () {
            summaryBloc.add(SummaryPopEvent());
            return Future.value(false);
          },
          child: SummaryWidget(
            summary: state.summary,
          ),
        );
      },
    );
  }
}
