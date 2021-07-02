import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_navigation/src/core/routes/bloc/route_bloc_bloc.dart';

import '../../../exports.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text("Home Page"),
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<RouteBlocBloc>(context).add(SettingsEvent());
              },
              child: Text("Navigate"),
            ),
          ],
        ),
      ),
    );
  }
}
