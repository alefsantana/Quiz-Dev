import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_dev/core/app_colors.dart';
import 'package:quiz_dev/core/app_text_styles.dart';
import 'package:quiz_dev/home/widgets/chart/chart_widget.dart';

class ScoreCardWidget extends StatelessWidget {

  /*final int score;*/
  final double percent;
  const ScoreCardWidget({Key? key, required this.percent}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15,),
      child: Container(
        height: 126,
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child: ChartWidget(
                  percent: percent
                )
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text("Vamos Começar",
                      style: AppTextStyles.heading,
                    ),
                    Text("Complete os Desafios e avance em Conhecimento",
                      style: AppTextStyles.body,),
                  ],
                ),
              ),
            ),
          ],
        ),

        ),
      ),
    );
  }
}
