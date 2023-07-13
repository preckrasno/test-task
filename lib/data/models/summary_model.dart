import 'package:equatable/equatable.dart';

class SummaryModel extends Equatable {
  final String choice;
  final int dateOfBirth;

  const SummaryModel({
    required this.choice,
    required this.dateOfBirth,
  });

  SummaryModel copyWith({
    String? choice,
    int? dateOfBirth,
  }) {
    return SummaryModel(
      choice: choice ?? this.choice,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
    );
  }

  @override
  List<Object?> get props => [
        choice,
        dateOfBirth,
      ];

  @override
  String toString() {
    return 'SummaryModel(choice: $choice, dateOfBirth: $dateOfBirth)';
  }
}
