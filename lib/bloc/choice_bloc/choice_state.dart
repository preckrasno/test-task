part of 'choice_bloc.dart';

@immutable
abstract class ChoiceState {}

class ChoiceInitial extends ChoiceState {}

class ChoiceNavigateToDateOfBirthPage extends ChoiceState {
  final SummaryModel summary;

  ChoiceNavigateToDateOfBirthPage({
    required this.summary,
  });
}
