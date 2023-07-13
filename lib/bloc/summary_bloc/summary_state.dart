part of 'summary_bloc.dart';

abstract class SummaryState {
  const SummaryState({
    required this.summary,
  });

  final SummaryModel summary;
}

class SummaryInitial extends SummaryState {
  const SummaryInitial({
    required SummaryModel summary,
  }) : super(
          summary: summary,
        );
}
