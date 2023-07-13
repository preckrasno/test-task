import 'package:flutter/material.dart';
import 'package:flutter_test_task_flora/data/models/summary_model.dart';
import 'package:flutter_test_task_flora/theme/app_text_styles.dart';
import 'package:flutter_test_task_flora/theme/app_texts.dart';
import 'package:flutter_test_task_flora/theme/background_vector.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({
    required this.summary,
    super.key,
  });

  final SummaryModel summary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          ...BackgroundVector.combination3,
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  AppTexts.selectionSummary,
                  style: AppTextStyles.nunitoBlack700w25s,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  summary.choice,
                  style: AppTextStyles.nunitoBlack500w22s,
                ),
                Text(
                  summary.dateOfBirth.toString(),
                  style: AppTextStyles.nunitoBlack500w22s,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
