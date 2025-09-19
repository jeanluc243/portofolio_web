import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

import 'router.dart';
import 'pages/home.dart';

/// Root application widget powered by Shadcn design system.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // return ShadcnApp(
    //   title: 'Jean Luc Kabulu | Full-Stack Developer',
    //   home: const HomePage(),
    //   theme: ThemeData(colorScheme: ColorSchemes.lightGreen),
    //   debugShowCheckedModeBanner: false,
    //   navigatorKey: rootNavigatorKey,
    //   onGenerateRoute: onGenerateRoute,
    // );
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return ShadcnApp(
          theme: ThemeData(colorScheme: ColorSchemes.lightGreen),
          home: HomePage(),
          title: 'Jean Luc Kabulu | Full-Stack Developer',
          debugShowCheckedModeBanner: false,
          navigatorKey: rootNavigatorKey,
          onGenerateRoute: onGenerateRoute,
        );
      },
    );
  }
}
