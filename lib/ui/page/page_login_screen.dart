import 'package:flutter/material.dart';
import 'package:flutter_learn_flutter/status/status_login.dart';
import 'package:flutter_learn_flutter/ui/home/home_screen.dart';

class PageScreen extends StatefulWidget {
  @override
  _PageScreenState createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  StatusLoginSignup _statusLoginSignup = StatusLoginSignup();

  @override
  void initState() {
    // TODO: implement initState
    _statusLoginSignup.setStatus(StatusLogin.LOGGED_IN );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    switch (_statusLoginSignup.status) {
      case StatusLogin.LOG_IN:
        // TODO: Handle this case.
        break;
      case StatusLogin.LOGGED_IN:
        return HomeScreen(
          upDataStatus: updateStatus,
          statusLoginSignup: _statusLoginSignup,
        );
        break;
      case StatusLogin.SIGN_IN:
        // TODO: Handle this case.
        break;
    }
  }

  void updateStatus() {
    setState(() {});
  }
}
