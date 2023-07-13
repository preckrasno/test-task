import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_task_flora/theme/app_assets.dart';
import 'package:flutter_test_task_flora/theme/app_text_styles.dart';
import 'package:flutter_test_task_flora/theme/app_view_styles.dart';

class ChoiceButton extends StatelessWidget {
  const ChoiceButton({
    required this.title,
    required this.subtitle,
    required this.onPressed,
    super.key,
  });

  final String title;
  final String subtitle;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: AppViewStyles.choiceButton,
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 17, 17, 17),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: AppTextStyles.nunitoBlack900w30s,
                ),
                SizedBox(
                  width: 289,
                  child: Text(
                    subtitle,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.nunitoBlack400w20s,
                  ),
                ),
              ],
            ),
            SvgPicture.asset(
              AppAssets.arrowRightB,
            )
          ],
        ),
      ),
    );
  }
}
