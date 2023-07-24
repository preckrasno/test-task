import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task_flora/bloc/date_of_birth_bloc/date_of_birth_bloc.dart';
import 'package:flutter_test_task_flora/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:flutter_test_task_flora/navigation/navigation_path.dart';
import 'package:flutter_test_task_flora/ui/widgets/date_of_birth/date_of_birth_widget.dart';

class DateOfBirthPage extends StatelessWidget {
  const DateOfBirthPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final DateOfBirthBloc bloc = context.read<DateOfBirthBloc>();
    final NavigationBloc navigationBloc = context.read<NavigationBloc>();
    return BlocConsumer<DateOfBirthBloc, DateOfBirthState>(
      listener: (context, state) async {
        if (state is DateOfBirthNavigateToSummaryPage) {
          navigationBloc.add(NavigationPushPageEvent(
            path: NavigationPath.summary,
          ));
        }
        if (state is DateOfBirthNavigatePop) {
          navigationBloc.add(NavigationPopEvent());
        }
      },
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            bloc.add(DateOfBirthPopEvent());
            return Future.value(false);
          },
          child: DateOfBirthWidget(
            onNextPressed: (dateOfBirth) => _onNextPressed(bloc, dateOfBirth),
          ),
        );
      },
    );
  }

  void _onNextPressed(DateOfBirthBloc bloc, int dateOfBirth) {
    bloc.add(DateOfBirthNextPressed(dateOfBirth: dateOfBirth));
  }
}
