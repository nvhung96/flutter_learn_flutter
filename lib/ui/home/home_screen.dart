import 'package:flutter/material.dart';
import 'package:flutter_learn_flutter/status/status_login.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback upDataStatus;
  final StatusLoginSignup statusLoginSignup;

  const HomeScreen({Key key, this.upDataStatus, this.statusLoginSignup})
      : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
        actions: <Widget>[
          _showIconButtonLogout(),
        ],
      ),
    );
  }

  Widget _showIconButtonLogout() {
    return IconButton(
      icon: Icon(Icons.backup),
      onPressed: () {
        widget.statusLoginSignup.setStatus(StatusLogin.SIGN_IN);
        widget.upDataStatus();
      },
    );
  }
}
