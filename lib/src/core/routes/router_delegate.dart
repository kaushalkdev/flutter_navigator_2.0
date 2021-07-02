import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_navigation/src/core/routes/bloc/route_bloc_bloc.dart';
import 'package:test_navigation/src/exports.dart';
import 'package:test_navigation/src/feature/detail/presentation/details.dart';
import 'package:test_navigation/src/feature/settings/presentation/settings.dart';

class AppRouteDetegate extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final GlobalKey<NavigatorState> _navigatorKey;
  AppRouteDetegate(this._navigatorKey);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RouteBlocBloc, RouteBlocState>(
      builder: (context, state) {
        return Navigator(
          key: _navigatorKey,
          pages: [
            MaterialPage(
              key: ValueKey('Home'),
              child: HomePage(),
            ),
            if (state is SettingsState)
              MaterialPage(
                key: ValueKey('Settings'),
                child: SettingsPage(),
              ),
            if (state is DetailState)
              MaterialPage(
                key: ValueKey('Detials'),
                child: DetailsPage(),
              ),
          ],
          onPopPage: (route, result) {
            if (!route.didPop(result)) return false;
            if (state is DetailState) {
              BlocProvider.of<RouteBlocBloc>(context).add(SettingsEvent());
            }

            return true;
          },
        );
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
}
