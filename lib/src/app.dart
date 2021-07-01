import 'package:test_navigation/src/core/routes/router_delegate.dart';

import 'exports.dart';

class NavigatorApp extends StatelessWidget {
  final AppRouteDetegate _routeDelegate;

  const NavigatorApp(
    this._routeDelegate, {
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Router(
        routerDelegate: _routeDelegate,
        backButtonDispatcher: RootBackButtonDispatcher(),
      ),
    );
  }
}
