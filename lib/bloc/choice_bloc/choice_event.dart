part of 'choice_bloc.dart';

@immutable
abstract class ChoiceEvent {}

class ChoiceTrackMyPeriodPressed extends ChoiceEvent {}

class ChoiceGetPregnantPressed extends ChoiceEvent {}
