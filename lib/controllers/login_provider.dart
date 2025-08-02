import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class LoginProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
}
