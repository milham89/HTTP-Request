import 'package:belajar/global_resources.dart';

class Belajar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: SplashView(),
      onGenerateRoute: Routes().onGenerateRoute,
    );
  }
}
