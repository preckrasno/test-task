import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task_flora/bloc/choice_bloc/choice_bloc.dart';
import 'package:flutter_test_task_flora/navigation/app_navigation/app_navigation.dart';
import 'package:flutter_test_task_flora/ui/widgets/choice/choice_widget.dart';

class ChoicePage extends StatelessWidget {
  const ChoicePage({
    required this.appNavigation,
    super.key,
  });

  final AppNavigation appNavigation;

  @override
  Widget build(BuildContext context) {
    final ChoiceBloc bloc = context.read<ChoiceBloc>();
    return BlocConsumer<ChoiceBloc, ChoiceState>(
      listener: (context, state) async {
        if (state is ChoiceNavigateToDateOfBirthPage) {
          await appNavigation.openDateOfBirthPage(
            context,
            summary: state.summary,
            canPop: true,
          );
        }
      },
      builder: (context, state) {
        return ChoiceWidget(
          onGetPregnantPressed: () => _onGetPregnantPressed(bloc),
          onTrackMyPeriodPressed: () => _onTrackMyPeriodPressed(bloc),
        );
      },
    );
  }

  void _onGetPregnantPressed(ChoiceBloc bloc) {
    bloc.add(ChoiceGetPregnantPressed());
  }

  void _onTrackMyPeriodPressed(ChoiceBloc bloc) {
    bloc.add(ChoiceTrackMyPeriodPressed());
  }
}
