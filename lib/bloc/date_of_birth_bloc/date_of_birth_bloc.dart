import 'package:bloc/bloc.dart';
import 'package:flutter_test_task_flora/data/models/summary_model.dart';
import 'package:flutter_test_task_flora/data/repositories/summary_repository.dart';
import 'package:meta/meta.dart';

part 'date_of_birth_event.dart';
part 'date_of_birth_state.dart';

class DateOfBirthBloc extends Bloc<DateOfBirthEvent, DateOfBirthState> {
  final SummaryRepository summaryRepository;

  DateOfBirthBloc({
    required this.summaryRepository,
  }) : super(DateOfBirthInitial(
          summary: summaryRepository.summaryModel!,
        )) {
    on<DateOfBirthNextPressed>(_onDateOfBirthNextPressed);
    on<DateOfBirthPopEvent>(_onDateOfBirthPopEvent);
  }

  void _onDateOfBirthNextPressed(
      DateOfBirthNextPressed event, Emitter<DateOfBirthState> emit) {
    final summary = state.summary.copyWith(
      dateOfBirth: event.dateOfBirth,
    );

    summaryRepository.summaryModel = summary;

    emit(DateOfBirthNavigateToSummaryPage(summary: summary));
  }

  void _onDateOfBirthPopEvent(
      DateOfBirthPopEvent event, Emitter<DateOfBirthState> emit) {
    emit(DateOfBirthNavigatePop(summary: state.summary));
  }
}
