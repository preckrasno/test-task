import 'package:flutter/material.dart';
import 'package:flutter_test_task_flora/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:flutter_test_task_flora/navigation/navigation_path.dart';
import 'package:flutter_test_task_flora/ui/pages/choice/choice_container.dart';

class AppRouter {
  // Route onGenerateRoute(RouteSettings settings) {
  //   return MaterialPageRoute(
  //     builder: (context) => BlocBuilder<NavigationBloc, NavigationState>(
  //       builder: (context, state) {
  //         if (state is NavigationDateOfBirthPage) {
  //           return const DateOfBirthContainer();
  //         } else if (state is NavigationSummaryPage) {
  //           return const SummaryContainer();
  //         } else if (state is NavigationChoicePage ||
  //             state is NavigationInitial) {
  //           return const ChoiceContainer();
  //         } else {
  //           throw Exception('Unknown state: $state');
  //         }
  //       },
  //     ),
  //   );
  // }

  List<Page> onGeneratePages(NavigationState state, List<Page> pages) {
    final List<NavigationPath> paths = [...state.routeStack];

    if (paths.isEmpty) return [ChoiceContainer.page];

    final List<Page> pages = paths.map<Page>((path) => path.page).toList();

    return pages;
  }
}
