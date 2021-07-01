import '../../../exports.dart';

class SettingsPage extends StatefulWidget {
  final ValueChanged<String>? onTap;
  const SettingsPage({
    Key? key,
    @required this.onTap,
  }) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Settings"),
            ),
            ElevatedButton(
              onPressed: () => widget.onTap!("Details"),
              child: Text("Detials"),
            )
          ],
        ),
      ),
    );
  }
}
