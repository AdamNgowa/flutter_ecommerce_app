import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/utils/constants/colors.dart';

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: TColors.grey.withValues(alpha: 0.5),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: TColors.grey.withValues(alpha: 0.5),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );
}
