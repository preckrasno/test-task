import 'package:flutter/material.dart';
import 'package:flutter_test_task_flora/data/models/summary_model.dart';

abstract class AppNavigation {
  Future<void> openChoicePage(
    BuildContext context, {
    bool canPop = false,
  }) async {}

  Future<void> openDateOfBirthPage(
    BuildContext context, {
    bool canPop = false,
    required SummaryModel summary,
  }) async {}

  Future<void> openSummaryPage(
    BuildContext context, {
    bool canPop = false,
    required SummaryModel summary,
  }) async {}
}
