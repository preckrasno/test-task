import 'package:flutter/material.dart';
import 'package:flutter_test_task_flora/ui/pages/choice/choice_container.dart';
import 'package:flutter_test_task_flora/ui/pages/date_of_birth/date_of_birth_container.dart';
import 'package:flutter_test_task_flora/ui/pages/summary/summary_container.dart';

enum NavigationPath {
  choice(
    '/choice',
    page: ChoiceContainer.page,
  ),
  dateOfBirth(
    '/dateOfBirth',
    page: DateOfBirthContainer.page,
  ),
  summary(
    '/summary',
    page: SummaryContainer.page,
  );

  final String string;
  final Page page;

  const NavigationPath(
    this.string, {
    required this.page,
  });
}
