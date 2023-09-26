import 'package:get_it/get_it.dart';
import 'package:player/src/features/settings/theme/data/theme_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt getIt = GetIt.instance;

Future<void> setup() async {
  final pref = await SharedPreferences.getInstance();

  getIt.registerLazySingleton<ThemeRepository>(
      () => ThemeRepository(pref: pref));
}
