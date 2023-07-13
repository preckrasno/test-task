import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_task_flora/theme/app_assets.dart';
import 'package:flutter_test_task_flora/theme/app_text_styles.dart';
import 'package:flutter_test_task_flora/theme/app_texts.dart';
import 'package:flutter_test_task_flora/theme/app_view_styles.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    required this.onNextPressed,
    super.key,
  });

  final void Function() onNextPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: AppViewStyles.nextButton,
      onPressed: onNextPressed,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF454581),
              Color(0xFFFCFCFF),
            ],
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    AppTexts.next,
                    style: AppTextStyles.nunitoWhite400w20s,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: SvgPicture.asset(AppAssets.arrowRightW),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
