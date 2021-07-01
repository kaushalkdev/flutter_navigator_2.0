import 'package:test_navigation/src/exports.dart';
import 'package:test_navigation/src/feature/detail/presentation/details.dart';
import 'package:test_navigation/src/feature/settings/presentation/settings.dart';

class AppRouteDetegate extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final GlobalKey<NavigatorState> _navigatorKey;
  AppRouteDetegate(this._navigatorKey);
  String? page;
  bool? isDetailPage = false;
  bool? isSettingsPage = false;
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _navigatorKey,
      pages: [
        MaterialPage(child: HomePage(onTap: _handleRouting)),
        if (isSettingsPage!)
          MaterialPage(child: SettingsPage(onTap: _handleRouting)),
        if (isDetailPage!) MaterialPage(child: DetailsPage()),
      ],
      onPopPage: (route, result) {
        print(page);
        if (!route.didPop(result)) return false;
        if (page == 'Settings') {
          isSettingsPage = false;
        }
        if (page == 'Details') {
          isSettingsPage = true;
          isDetailPage = false;
          page = 'Settings';
        }
        notifyListeners();
        return true;
      },
    );
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => _navigatorKey;

  @override
  Future<void> setNewRoutePath(configuration) async {
    {
      print("TODO");
    }
  }

  void _handleRouting(String? value) {
    if (value == 'Settings') {
      page = value;
      isSettingsPage = true;
    }
    if (value == 'Details') {
      page = value;
      isDetailPage = true;
      isSettingsPage = false;
    }
    notifyListeners();
  }
}
