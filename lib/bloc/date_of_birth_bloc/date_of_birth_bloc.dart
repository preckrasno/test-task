import 'package:bloc/bloc.dart';
import 'package:flutter_test_task_flora/data/models/summary_model.dart';
import 'package:meta/meta.dart';

part 'date_of_birth_event.dart';
part 'date_of_birth_state.dart';

class DateOfBirthBloc extends Bloc<DateOfBirthEvent, DateOfBirthState> {
  final SummaryModel summary;

  DateOfBirthBloc({
    required this.summary,
  }) : super(DateOfBirthInitial(
          summary: summary,
        )) {
    on<DateOfBirthNextPressed>(_onDateOfBirthNextPressed);
  }

  void _onDateOfBirthNextPressed(
      DateOfBirthNextPressed event, Emitter<DateOfBirthState> emit) {
    final summary = state.summary.copyWith(
      dateOfBirth: event.dateOfBirth,
    );

    emit(DateOfBirthNavigateToSummaryPage(summary: summary));
  }
}
