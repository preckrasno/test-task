part of 'date_of_birth_bloc.dart';

@immutable
abstract class DateOfBirthState {
  final SummaryModel summary;

  const DateOfBirthState({
    required this.summary,
  });
}

class DateOfBirthInitial extends DateOfBirthState {
  const DateOfBirthInitial({
    required SummaryModel summary,
  }) : super(
          summary: summary,
        );
}

class DateOfBirthNavigateToSummaryPage extends DateOfBirthState {
  const DateOfBirthNavigateToSummaryPage({
    required SummaryModel summary,
  }) : super(
          summary: summary,
        );
}

class DateOfBirthNavigatePop extends DateOfBirthState {
  const DateOfBirthNavigatePop({
    required SummaryModel summary,
  }) : super(
          summary: summary,
        );
}
