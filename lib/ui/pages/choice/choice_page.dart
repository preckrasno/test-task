import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task_flora/bloc/choice_bloc/choice_bloc.dart';
import 'package:flutter_test_task_flora/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:flutter_test_task_flora/ui/widgets/choice/choice_widget.dart';

class ChoicePage extends StatelessWidget {
  const ChoicePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ChoiceBloc bloc = context.read<ChoiceBloc>();
    final NavigationBloc navigationBloc = context.read<NavigationBloc>();
    return BlocConsumer<ChoiceBloc, ChoiceState>(
      listener: (context, state) async {
        if (state is ChoiceNavigateToDateOfBirthPage) {
          navigationBloc.add(NavigationOpenDateOfBirthPage());
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
