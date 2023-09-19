import 'package:get_it/get_it.dart';
import 'package:random_color/service/color_generator_service.dart';

/// Crate getIt instance to register all neccessary services, repositories.
final getIt = GetIt.instance;

/// Thi funciton use to registed all neccessary services, repositories
void setup() {
  getIt.registerSingleton<ColorGeneratorService>(ColorGeneratorServiceImpl());
}
