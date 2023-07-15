part of 'navigation_bloc.dart';

abstract class NavigationEvent {}

class NavigationOpenChoicePage extends NavigationEvent {}

class NavigationOpenDateOfBirthPage extends NavigationEvent {}

class NavigationOpenSummaryPage extends NavigationEvent {}

class NavigationPopEvent extends NavigationEvent {}
