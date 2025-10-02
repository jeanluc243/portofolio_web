import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import 'routing/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterBootstrap5(
      builder: (ctx) => ShadApp.router(
        routerConfig: appRouter,
        theme: ShadThemeData(
            colorScheme: const ShadSlateColorScheme.light(),
            brightness: Brightness.light),
      ),
    );
  }
}
