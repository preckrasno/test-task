import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task_flora/bloc/date_of_birth_bloc/date_of_birth_bloc.dart';
import 'package:flutter_test_task_flora/data/repositories/summary_repository.dart';
import 'package:flutter_test_task_flora/ui/pages/date_of_birth/date_of_birth_page.dart';
import 'package:get_it/get_it.dart';

class DateOfBirthContainer extends StatelessWidget {
  const DateOfBirthContainer({
    super.key,
  });

  static const Page page = MaterialPage<void>(
    child: DateOfBirthContainer(),
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DateOfBirthBloc(
        summaryRepository: GetIt.instance.get<SummaryRepository>(),
      ),
      child: const DateOfBirthPage(),
    );
  }
}
