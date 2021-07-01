import 'package:test_navigation/src/core/routes/router_delegate.dart';

import 'src/exports.dart';

void main() {
  final navigationKey = GlobalKey<NavigatorState>();
  final appRouteDelegate = AppRouteDetegate(navigationKey);
  runApp(
    NavigatorApp(appRouteDelegate),
  );
}
