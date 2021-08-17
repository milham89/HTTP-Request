import 'package:belajar/global_resources.dart';

const String home = '/home';

class Routes {
  Route<dynamic> onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case home:
        // String name = setting.arguments;
        return MaterialPageRoute(builder: (_) => HomeView());
        break;
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Home Page'),
            ),
          ),
        );
    }
  }
}
