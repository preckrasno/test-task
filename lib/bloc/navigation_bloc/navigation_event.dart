part of 'navigation_bloc.dart';

abstract class NavigationEvent {}

class NavigationPushPageEvent extends NavigationEvent {
  NavigationPushPageEvent({
    required this.path,
    this.canPop = true,
    this.replace = false,
  });

  final NavigationPath path;
  final bool canPop;
  final bool replace;
}

class NavigationPopEvent extends NavigationEvent {}
