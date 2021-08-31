import 'package:belajar/global_resources.dart';

class ViewDetail extends StatefulWidget {
  final UserModel user;

  ViewDetail({this.user});

  @override
  _ViewDetailState createState() => _ViewDetailState();
}

class _ViewDetailState extends State<ViewDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.user.name),
      ),
    );
  }
}
