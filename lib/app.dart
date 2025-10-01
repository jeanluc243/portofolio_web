import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import 'routing/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadApp.router(
      routerConfig: appRouter,
      theme: ShadThemeData(
          colorScheme: const ShadSlateColorScheme.light(),
          brightness: Brightness.light),
    );
  }
}
