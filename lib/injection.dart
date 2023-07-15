import 'package:flutter_test_task_flora/data/repositories/summary_repository.dart';
import 'package:get_it/get_it.dart';

final injection = GetIt.instance;

void setupInjection() {
  injection.registerSingleton<SummaryRepository>(SummaryRepository());
}
