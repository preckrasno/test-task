part of 'navigation_bloc.dart';

abstract class NavigationState {
  final List<NavigationPath> routeStack;

  const NavigationState({
    required this.routeStack,
  });
}

class NavigationInitial extends NavigationState {
  const NavigationInitial() : super(routeStack: const []);
}

// class NavigationChoicePage extends NavigationState {
//   NavigationChoicePage({
//     required super.routeStack,
//   });
// }

// class NavigationDateOfBirthPage extends NavigationState {
//   NavigationDateOfBirthPage({
//     required super.routeStack,
//   });
// }

// class NavigationSummaryPage extends NavigationState {
//   NavigationSummaryPage({
//     required super.routeStack,
//   });
// }

class NavigationOpenPageState extends NavigationState {
  const NavigationOpenPageState({
    required super.routeStack,
  });
}
