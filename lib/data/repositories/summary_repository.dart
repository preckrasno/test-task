import 'package:flutter_test_task_flora/data/models/summary_model.dart';

class SummaryRepository {
  static final SummaryRepository _summaryRepository =
      SummaryRepository._internal();

  SummaryModel? _summaryModel;

  factory SummaryRepository() {
    return _summaryRepository;
  }

  SummaryRepository._internal();

  SummaryModel? get summaryModel => _summaryModel;

  set summaryModel(SummaryModel? summaryModel) {
    _summaryModel = summaryModel;
  }
}
