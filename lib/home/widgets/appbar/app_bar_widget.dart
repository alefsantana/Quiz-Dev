import 'package:flutter/material.dart';
import 'package:quiz_dev/core/app_gradients.dart';
import 'package:quiz_dev/core/app_text_styles.dart';
import 'package:quiz_dev/home/widgets/score_card/score_card_widget.dart';
import 'package:quiz_dev/shared/models/user_model.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  AppBarWidget({required this.user})
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            child: Stack(
              children: [
                Container(
                  height: 161,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  width: double.maxFinite,
                  decoration: BoxDecoration(gradient: AppGradients.linear),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(TextSpan(
                          text: "Olá,",
                          style: AppTextStyles.title,
                          children: [
                            TextSpan(
                              text: user.name,
                              style: AppTextStyles.titleBold,
                            )
                          ])),
                      Container(
                        height: 100,
                        width: 68,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(300),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                user.photoUrl),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0.0 , 1.0),
                  child: ScoreCardWidget(percent: user.score/100),


                )
              ],
            ),
          ),
        );
}
