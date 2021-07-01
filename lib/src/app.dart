import 'package:test_navigation/src/feature/detail/presentation/details.dart';
import 'package:test_navigation/src/feature/settings/presentation/settings.dart';

import 'exports.dart';

class NavigatorApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _NavigatorAppState createState() => _NavigatorAppState();
}

class _NavigatorAppState extends State<NavigatorApp> {
  String? page;

  bool isSettingsPage = false;
  bool isDetialScreen = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navigator(
        pages: [
          MaterialPage(
            key: ValueKey('HomePage'),
            child: HomePage(
              onTap: _handleOnTap,
            ),
          ),
          if (isSettingsPage)
            MaterialPage(
              key: ValueKey('SettingsPage'),
              child: SettingsPage(
                onTap: _handleOnTap,
              ),
            ),
          if (isDetialScreen)
            MaterialPage(
              key: ValueKey('Details'),
              child: DetailsPage(),
            ),
        ],
        onPopPage: (route, result) {
          print(page);
          if (!route.didPop(result)) return false;
          if (page == 'Settings') {
            isSettingsPage = false;
          } else if (page == 'Details') {
            isDetialScreen = false;
            page = 'Settings';
          }

          setState(() {});
          return true;
        },
      ),
    );
  }

  void _handleOnTap(String? value) {
    if (value == 'Settings') {
      isSettingsPage = true;
    } else if (value == 'Details') {
      isDetialScreen = true;
    }

    page = value;
    setState(() {});
  }
}
