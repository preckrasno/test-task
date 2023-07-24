import 'package:flutter/material.dart';
import 'package:flutter_test_task_flora/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:flutter_test_task_flora/navigation/navigation_path.dart';
import 'package:flutter_test_task_flora/ui/pages/choice/choice_container.dart';

class AppRouter {
  List<Page> onGeneratePages(NavigationState state, List<Page> pages) {
    final List<NavigationPath> paths = [...state.routeStack];

    if (paths.isEmpty) return [ChoiceContainer.page];

    final List<Page> pages = paths.map<Page>((path) => path.page).toList();

    return pages;
  }
}
