import 'package:random_color/common/constants.dart';
import 'package:random_color/common/provider_manager.dart';
import 'package:random_color/service/color_generator_service.dart';
import 'package:riverpod/riverpod.dart';

/// Global definition of provider, add possibility get access
/// to this provider in the widgets.
final colorGenerationProvider =
    NotifierProvider<ColorGenerationProvider, int>(ColorGenerationProvider.new);

/// Color generation provider used to store and update current color value
class ColorGenerationProvider extends Notifier<int> {
  /// Create instance ColorGeneratorService
  final colorGenerationService = getIt<ColorGeneratorService>();

  @override
  int build() => Constants.hexWhiteColor;

  /// Generate new color value and update current state
  void generateRandomColor() =>
      state = colorGenerationService.generateRandomColor();
}
