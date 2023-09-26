import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:player/src/common/core/di/di_service.dart';
import 'package:player/src/common/local/generated/locale_keys.g.dart';
import 'package:player/src/features/settings/theme/bloc/theme_bloc.dart';
import 'package:player/src/features/settings/theme/data/theme_repository.dart';

class AppProviders extends StatelessWidget {
  const AppProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => ThemeBloc(repository: getIt<ThemeRepository>())),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(
      builder: (context, state) {
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          title: '',
          theme: state,
          home: const Scaffold(body: Center(child: Text(LocaleKeys.start))),
          routes: {},
          // builder: (context, child) => const SplashScreen(),
        );
      },
    );
  }
}
