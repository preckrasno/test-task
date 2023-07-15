import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_task_flora/theme/app_text_styles.dart';
import 'package:flutter_test_task_flora/theme/app_texts.dart';
import 'package:flutter_test_task_flora/theme/background_vector.dart';
import 'package:flutter_test_task_flora/ui/widgets/next_button.dart';

class DateOfBirthWidget extends StatefulWidget {
  const DateOfBirthWidget({
    required this.onNextPressed,
    super.key,
  });

  final void Function(int) onNextPressed;

  @override
  State<DateOfBirthWidget> createState() => _DateOfBirthWidgetState();
}

class _DateOfBirthWidgetState extends State<DateOfBirthWidget> {
  late FixedExtentScrollController _scrollController;
  late final DateTime now;
  late final DateTime oneHundredFiftyYearsAgo;

  List<int> get _getYears {
    final List<int> years = <int>[];

    for (int i = oneHundredFiftyYearsAgo.year; i <= now.year; i++) {
      years.add(i);
    }

    return years;
  }

  List<Widget> get _getYearWidgets {
    final List<Widget> years = <Widget>[];

    for (int year in _getYears) {
      years.add(SizedBox(
          height: 67,
          child: Align(
              alignment: Alignment.center,
              child: Text(
                year.toString(),
                style: AppTextStyles.nunitoBlack900w40s,
              ))));
    }

    return years;
  }

  @override
  void initState() {
    super.initState();
    now = DateTime.now();
    oneHundredFiftyYearsAgo = DateTime(now.year - 150);
    _scrollController = FixedExtentScrollController(
        initialItem: now.year - oneHundredFiftyYearsAgo.year - 28);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          ...BackgroundVector.combination2,
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  AppTexts.logInYourYearOfBirth,
                  style: AppTextStyles.nunitoBlack700w25s,
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.07,
                ),
                SizedBox(
                  height: 300,
                  width: 355,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CupertinoPicker(
                        itemExtent: 67,
                        magnification: 1,
                        squeeze: 1,
                        diameterRatio: 2.5,
                        scrollController: _scrollController,
                        onSelectedItemChanged: (_) {},
                        selectionOverlay: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.12),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        children: _getYearWidgets,
                      ),
                      Positioned(
                        top: 0,
                        child: IgnorePointer(
                          child: Container(
                            width: 355,
                            height: 65 * 2,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  const Color(0xFFFFFFFF).withOpacity(0.9),
                                  const Color(0xFFFFFFFF).withOpacity(0.1),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: IgnorePointer(
                          child: Container(
                            width: 355,
                            height: 65 * 2,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  const Color(0xFFFFFFFF).withOpacity(0.9),
                                  const Color(0xFFFFFFFF).withOpacity(0.1),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.2,
                ),
                NextButton(
                  onNextPressed: () {
                    widget.onNextPressed(
                        _getYears[_scrollController.selectedItem]);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
