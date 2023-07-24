import 'package:bloc/bloc.dart';
import 'package:flutter_test_task_flora/navigation/navigation_path.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationInitial()) {
    on<NavigationPopEvent>(_onNavigationPopEvent);
    on<NavigationPushPageEvent>(_onNavigationPushPageEvent);
  }

  void _onNavigationPopEvent(
      NavigationPopEvent event, Emitter<NavigationState> emit) {
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
