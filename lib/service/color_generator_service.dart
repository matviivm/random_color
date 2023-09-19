import 'dart:math';

import 'package:random_color/common/constants.dart';

/// Base service for color generation
abstract class ColorGeneratorService {
  /// Base funciton for color generation
  int generateRandomColor();
}

/// Implementation of the base class for color generation
class ColorGeneratorServiceImpl extends ColorGeneratorService {
  @override
  /// generate random color
  int generateRandomColor() =>
      (Random().nextDouble() * Constants.hexWhiteColor).toInt();
}
