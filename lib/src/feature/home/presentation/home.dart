import '../../../exports.dart';

class HomePage extends StatefulWidget {
  final ValueChanged<String?>? onTap;
  const HomePage({Key? key, this.onTap}) : super(key: key);

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
              onPressed: () => widget.onTap!("Settings"),
              child: Text("Navigate"),
            ),
          ],
        ),
      ),
    );
  }
}
