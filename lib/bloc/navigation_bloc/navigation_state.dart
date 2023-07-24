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

class NavigationOpenPageState extends NavigationState {
  const NavigationOpenPageState({
    required super.routeStack,
  });
}
