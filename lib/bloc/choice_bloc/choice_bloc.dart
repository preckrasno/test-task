import 'package:bloc/bloc.dart';
import 'package:flutter_test_task_flora/data/models/summary_model.dart';
import 'package:flutter_test_task_flora/theme/app_texts.dart';
import 'package:meta/meta.dart';

part 'choice_event.dart';
part 'choice_state.dart';

class ChoiceBloc extends Bloc<ChoiceEvent, ChoiceState> {
  ChoiceBloc() : super(ChoiceInitial()) {
    on<ChoiceTrackMyPeriodPressed>(_onChoiceTrackMyPeriodPressed);
    on<ChoiceGetPregnantPressed>(_onChoiceGetPregnantPressed);
  }

  void _onChoiceTrackMyPeriodPressed(
      ChoiceTrackMyPeriodPressed event, Emitter<ChoiceState> emit) {
    const summary = SummaryModel(
      dateOfBirth: -1,
      choice: AppTexts.trackMyPeriod,
    );

    emit(ChoiceNavigateToDateOfBirthPage(summary: summary));
  }

  void _onChoiceGetPregnantPressed(
      ChoiceGetPregnantPressed event, Emitter<ChoiceState> emit) {
    const summary = SummaryModel(
      dateOfBirth: -1,
      choice: AppTexts.getPregnant,
    );

    emit(ChoiceNavigateToDateOfBirthPage(summary: summary));
  }
}
