import 'package:flutter/material.dart';
import 'package:flutter_test_task_flora/theme/app_texts.dart';
import 'package:flutter_test_task_flora/theme/background_vector.dart';
import 'package:flutter_test_task_flora/ui/widgets/choice/choice_button.dart';

class ChoiceWidget extends StatelessWidget {
  const ChoiceWidget({
    required this.onTrackMyPeriodPressed,
    required this.onGetPregnantPressed,
    super.key,
  });

  final void Function() onTrackMyPeriodPressed;
  final void Function() onGetPregnantPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          ...BackgroundVector.combination1,
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ChoiceButton(
                title: AppTexts.trackMyPeriod,
                subtitle: AppTexts.contraceptionAndWellbeing,
                onPressed: onTrackMyPeriodPressed,
              ),
              const SizedBox(
                height: 73,
              ),
              ChoiceButton(
                title: AppTexts.getPregnant,
                subtitle: AppTexts.learnAboutReproductiveHealth,
                onPressed: onGetPregnantPressed,
              )
            ],
          ),
        ],
      ),
    );
  }
}
