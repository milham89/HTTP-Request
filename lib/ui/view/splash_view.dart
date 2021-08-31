import 'package:belajar/global_resources.dart';

class SplashView extends StatefulWidget {
  _SplashView createState() => _SplashView();
}

class _SplashView extends State<SplashView> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.pushReplacementNamed(context, 'home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/icon_plane.png',
              height: 150,
            ),
            SizedBox(
              height: 24.0,
            ),
            Text('Splash View'),
          ],
        ),
      ),
    );
  }
}
