import 'package:bloc/bloc.dart';
import 'package:flutter_test_task_flora/data/models/summary_model.dart';
import 'package:flutter_test_task_flora/data/repositories/summary_repository.dart';

part 'summary_event.dart';
part 'summary_state.dart';

class SummaryBloc extends Bloc<SummaryEvent, SummaryState> {
  final SummaryRepository summaryRepository;
  SummaryBloc({
    required this.summaryRepository,
  }) : super(SummaryInitial(
          summary: summaryRepository.summaryModel!,
        )) {
    on<SummaryEvent>((event, emit) {});
    on<SummaryPopEvent>(_onSummaryPopEvent);
  }

  void _onSummaryPopEvent(SummaryPopEvent event, Emitter<SummaryState> emit) {
    emit(SummaryNavigatePop(summary: state.summary));
  }
}
