
import 'package:flutter/material.dart';
import 'package:ghibli_studio/utils/constants/colors.dart';

class TElevatedButtonTheme
{
  TElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation:0,
      foregroundColor: Colors.white,
      backgroundColor:TColors.primary,
      disabledBackgroundColor:Colors.grey,
      disabledForegroundColor: Colors.grey, 
      side: const BorderSide(color: TColors.lightGrey),
      padding:const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(fontSize: 16,color: Colors.white,fontWeight:FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(12)),
    ),
  );
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation:0,
      foregroundColor: Colors.white,
      backgroundColor: TColors.primary,
      disabledBackgroundColor:Colors.grey,
      disabledForegroundColor: Colors.grey, 
      side: const BorderSide(color:  TColors.primary),
      padding:const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(fontSize: 16,color: Colors.white,fontWeight:FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(12)),
    ),
  );
}