import 'package:app_coletor/components/app_colors.dart';
import 'package:flutter/material.dart';

class AppButtons {
  static final menuButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.button,
    foregroundColor: Colors.black,
  );
  static final exitbuttonstyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.redColor,
    foregroundColor: Colors.black,
  );
  // Botao usado para fins de negaçao
  static final negativeButtonStyle = OutlinedButton.styleFrom(
    side: BorderSide(width: 1, color: AppColors.redColor),
  );
  // Botao usado para fins de afirmaçao
  static final positiveButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.whiteColor,
    side: BorderSide(width: 1, color: AppColors.greenColor),
  );
  static final eraseAllButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.whiteColor,
    side: BorderSide(width: 1, color: AppColors.redColor),
  );
}
