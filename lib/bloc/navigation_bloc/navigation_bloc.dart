import 'package:bloc/bloc.dart';
import 'package:flutter_test_task_flora/navigation/navigation_path.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationInitial()) {
    // on<NavigationOpenDateOfBirthPage>(_onNavigationOpenDateOfBirthPage);
    // on<NavigationOpenSummaryPage>(_onNavigationOpenSummaryPage);
    on<NavigationPopEvent>(_onNavigationPopEvent);
    // on<NavigationOpenChoicePage>(_onNavigationOpenChoicePage);
    on<NavigationPushPageEvent>(_onNavigationPushPageEvent);
  }

  // void _onNavigationOpenDateOfBirthPage(
  //     NavigationOpenDateOfBirthPage event, Emitter<NavigationState> emit) {
  //   List<NavigationPath> routeStack = [...state.routeStack];
  //   routeStack.add(NavigationPath.dateOfBirth);
  //   emit(NavigationDateOfBirthPage(
  //     routeStack: routeStack,
  //   ));
  // }

  // void _onNavigationOpenSummaryPage(
  //     NavigationOpenSummaryPage event, Emitter<NavigationState> emit) {
  //   List<NavigationPath> routeStack = [...state.routeStack];
  //   routeStack.add(NavigationPath.summary);
  //   emit(NavigationSummaryPage(
  //     routeStack: routeStack,
  //   ));
  // }

  // void _onNavigationOpenChoicePage(
  //     NavigationOpenChoicePage event, Emitter<NavigationState> emit) {
  //   List<NavigationPath> routeStack = [...state.routeStack];
  //   routeStack.add(NavigationPath.choice);
  //   emit(NavigationChoicePage(
  //     routeStack: routeStack,
  //   ));
  // }

  void _onNavigationPopEvent(
      NavigationPopEvent event, Emitter<NavigationState> emit) {
    // List<NavigationPath> routeStack = [...state.routeStack];
    // routeStack.removeLast();
    // if (routeStack.isEmpty) {
    //   emit(const NavigationInitial(routeStack: []));
    // } else {
    //   final NavigationPath lastPath = routeStack.last;

    //   if (lastPath == NavigationPath.dateOfBirth) {
    //     emit(NavigationDateOfBirthPage(
    //       routeStack: routeStack,
    //     ));
    //   } else if (lastPath == NavigationPath.summary) {
    //     emit(NavigationSummaryPage(
    //       routeStack: routeStack,
    //     ));
    //   } else if (lastPath == NavigationPath.choice) {
    //     emit(NavigationChoicePage(
    //       routeStack: routeStack,
    //     ));
    //   } else {
    //     throw Exception('Unknown path: $lastPath');
    //   }
    // }

    if (state.routeStack.length <= 1) return;

    final routeStack = [...state.routeStack];

    routeStack.removeLast();
    emit(NavigationOpenPageState(routeStack: routeStack));
  }

  void _onNavigationPushPageEvent(
      NavigationPushPageEvent event, Emitter<NavigationState> emit) {
    final routeStack = [...state.routeStack];
    event.canPop ? null : routeStack.removeLast();
    event.replace ? routeStack.clear() : null;
    routeStack.add(event.path);
    emit(NavigationOpenPageState(routeStack: routeStack));
  }
}
