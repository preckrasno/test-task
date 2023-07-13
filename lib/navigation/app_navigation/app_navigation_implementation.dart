import 'package:flutter/material.dart';
import 'package:flutter_test_task_flora/data/models/summary_model.dart';
import 'package:flutter_test_task_flora/navigation/app_navigation/app_navigation.dart';
import 'package:flutter_test_task_flora/navigation/navigation_path.dart';

class AppNavigationImplementation implements AppNavigation {
  @override
  Future<void> openChoicePage(
    BuildContext context, {
    bool canPop = false,
  }) async {
    canPop
        ? await Navigator.pushNamed(
            context,
            NavigationPath.choice.string,
          )
        : await Navigator.pushReplacementNamed(
            context,
            NavigationPath.choice.string,
          );
  }

  @override
  Future<void> openDateOfBirthPage(
    BuildContext context, {
    bool canPop = false,
    required SummaryModel summary,
  }) async {
    canPop
        ? await Navigator.pushNamed(
            context,
            NavigationPath.dateOfBirth.string,
            arguments: summary,
          )
        : await Navigator.pushReplacementNamed(
            context,
            NavigationPath.dateOfBirth.string,
            arguments: summary,
          );
  }

  @override
  Future<void> openSummaryPage(
    BuildContext context, {
    bool canPop = false,
    required SummaryModel summary,
  }) async {
    canPop
        ? await Navigator.pushNamed(
            context,
            NavigationPath.summary.string,
            arguments: summary,
          )
        : await Navigator.pushReplacementNamed(
            context,
            NavigationPath.summary.string,
            arguments: summary,
          );
  }
}
