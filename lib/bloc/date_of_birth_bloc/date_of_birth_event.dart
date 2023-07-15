part of 'date_of_birth_bloc.dart';

@immutable
abstract class DateOfBirthEvent {}

class DateOfBirthNextPressed extends DateOfBirthEvent {
  final int dateOfBirth;

  DateOfBirthNextPressed({
    required this.dateOfBirth,
  });
}

class DateOfBirthPopEvent extends DateOfBirthEvent {}
