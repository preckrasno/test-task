import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task_flora/bloc/date_of_birth_bloc/date_of_birth_bloc.dart';
import 'package:flutter_test_task_flora/navigation/app_navigation/app_navigation.dart';
import 'package:flutter_test_task_flora/ui/widgets/date_of_birth/date_of_birth_widget.dart';

class DateOfBirthPage extends StatelessWidget {
  const DateOfBirthPage({
    required this.appNavigation,
    super.key,
  });

  final AppNavigation appNavigation;

  @override
  Widget build(BuildContext context) {
    final DateOfBirthBloc bloc = context.read<DateOfBirthBloc>();
    return BlocConsumer<DateOfBirthBloc, DateOfBirthState>(
      listener: (context, state) async {
        if (state is DateOfBirthNavigateToSummaryPage) {
          await appNavigation.openSummaryPage(
            summary: state.summary,
            context,
            canPop: true,
          );
        }
      },
      builder: (context, state) {
        return DateOfBirthWidget(
          onNextPressed: (dateOfBirth) => _onNextPressed(bloc, dateOfBirth),
        );
      },
    );
  }

  void _onNextPressed(DateOfBirthBloc bloc, int dateOfBirth) {
    bloc.add(DateOfBirthNextPressed(dateOfBirth: dateOfBirth));
  }
}
