import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_navigation/src/core/routes/bloc/route_bloc_bloc.dart';

import '../../../exports.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Settings"),
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<RouteBlocBloc>(context).add(DetialEvent());
              },
              child: Text("Detials"),
            )
          ],
        ),
      ),
    );
  }
}
