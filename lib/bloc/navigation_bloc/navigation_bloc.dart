import 'package:bloc/bloc.dart';
import 'package:flutter_test_task_flora/navigation/navigation_path.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationInitial(routeStack: [])) {
    on<NavigationOpenDateOfBirthPage>(_onNavigationOpenDateOfBirthPage);
    on<NavigationOpenSummaryPage>(_onNavigationOpenSummaryPage);
    on<NavigationPopEvent>(_onNavigationPopEvent);
    on<NavigationOpenChoicePage>(_onNavigationOpenChoicePage);
  }

  void _onNavigationOpenDateOfBirthPage(
      NavigationOpenDateOfBirthPage event, Emitter<NavigationState> emit) {
    List<NavigationPath> routeStack = [...state.routeStack];
    routeStack.add(NavigationPath.dateOfBirth);
    emit(NavigationDateOfBirthPage(
      routeStack: routeStack,
    ));
  }

  void _onNavigationOpenSummaryPage(
      NavigationOpenSummaryPage event, Emitter<NavigationState> emit) {
    List<NavigationPath> routeStack = [...state.routeStack];
    routeStack.add(NavigationPath.summary);
    emit(NavigationSummaryPage(
      routeStack: routeStack,
    ));
  }

  void _onNavigationOpenChoicePage(
      NavigationOpenChoicePage event, Emitter<NavigationState> emit) {
    List<NavigationPath> routeStack = [...state.routeStack];
    routeStack.add(NavigationPath.choice);
    emit(NavigationChoicePage(
      routeStack: routeStack,
    ));
  }

  void _onNavigationPopEvent(
      NavigationPopEvent event, Emitter<NavigationState> emit) {
    List<NavigationPath> routeStack = [...state.routeStack];
    routeStack.removeLast();
    if (routeStack.isEmpty) {
      emit(const NavigationInitial(routeStack: []));
    } else {
      final NavigationPath lastPath = routeStack.last;

      if (lastPath == NavigationPath.dateOfBirth) {
        emit(NavigationDateOfBirthPage(
          routeStack: routeStack,
        ));
      } else if (lastPath == NavigationPath.summary) {
        emit(NavigationSummaryPage(
          routeStack: routeStack,
        ));
      } else if (lastPath == NavigationPath.choice) {
        emit(NavigationChoicePage(
          routeStack: routeStack,
        ));
      } else {
        throw Exception('Unknown path: $lastPath');
      }
    }
  }
}
