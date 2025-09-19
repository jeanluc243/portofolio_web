import 'package:flutter/material.dart';

/// Global navigator key to access navigation without context when needed.
final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

/// Route generator for the application.
Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case PortfolioRoute.home:
    case '/':
      return _buildPageRoute(
        settings,
        const PortfolioHomeScreen(),
      );
    default:
      return _buildPageRoute(
        settings,
        const UnknownRouteScreen(),
      );
  }
}

PageRoute<dynamic> _buildPageRoute(RouteSettings settings, Widget child) {
  return MaterialPageRoute<dynamic>(
    settings: settings,
    builder: (_) => child,
  );
}

/// Named routes used across the portfolio.
abstract final class PortfolioRoute {
  static const String home = '/home';
}

class PortfolioHomeScreen extends StatelessWidget {
  const PortfolioHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Portfolio Home',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}

class UnknownRouteScreen extends StatelessWidget {
  const UnknownRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Route not found: '${settingsName(context)}'",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }

  String? settingsName(BuildContext context) => ModalRoute.of(context)?.settings.name;
}
