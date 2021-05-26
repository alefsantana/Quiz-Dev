import 'package:flutter/material.dart';
import 'package:quiz_dev/core/app_text_styles.dart';
import 'package:quiz_dev/shared/widgets/progress_indicator_widgets.dart';

class QuestionIndicatorWidget extends StatelessWidget {

  final int currentPage;
  final int lenght;
  const QuestionIndicatorWidget({Key? key, required this.currentPage, required this.lenght}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Questão $currentPage",
                  style: AppTextStyles.body,
                ),
                Text("de $lenght", style: AppTextStyles.body),
              ],
            ),

          SizedBox(height: 10,),
          ProgressIndicatorWidget(value:  currentPage / lenght),
        ],
      ),
    );
  }
}
