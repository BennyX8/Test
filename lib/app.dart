import 'package:flutter/material.dart';
import 'package:setup/features/timeline/app/pages/timeline.dart';
import 'features/auth/app/pages/login.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      initialRoute: TimelinePage.route,
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              case LoginPage.route:
                return const LoginPage();
              case TimelinePage.route:
                return const TimelinePage();
              default:
                return const TimelinePage();
            }
          },
        );
      },
    );
  }
}
