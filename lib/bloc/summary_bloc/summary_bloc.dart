import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_test_task_flora/data/models/summary_model.dart';

part 'summary_event.dart';
part 'summary_state.dart';

class SummaryBloc extends Bloc<SummaryEvent, SummaryState> {
  final SummaryModel summary;
  SummaryBloc({
    required this.summary,
  }) : super(SummaryInitial(
          summary: summary,
        )) {
    on<SummaryEvent>((event, emit) {});
  }
}
