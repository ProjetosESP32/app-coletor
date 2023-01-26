// ignore_for_file: prefer_const_constructors

import 'package:app_coletor/components/app_colors.dart';
import 'package:flutter/material.dart';

class AppTexts {
  static final buttonsText = TextStyle(
    color: Colors.black,
    fontSize: 16,
  );
  static final tittleText = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static final menuText = TextStyle(
    color: Colors.black,
    fontSize: 20,
  );
  static final databaseDemoText = TextStyle(
    color: Colors.grey.shade700,
    fontSize: 18,
  );
  // texto utilizado para fins de negação ou advertencia
  static final negativeText = TextStyle(
    color: AppColors.redColor,
    fontSize: 16,
  );
  // texto usado para fins de confirmação
  static final positiveText = TextStyle(
    color: AppColors.greenColor,
    fontSize: 16,
  );
}
