import 'package:flutter/foundation.dart';

class UserData extends ChangeNotifier {
  String? _email;
  String? _fullName;

  String? get email => _email;
  String? get fullName => _fullName;

  void setUserData(String email, String fullName) {
    _email = email;
    _fullName = fullName;
    notifyListeners();
  }

  void clearUserData() {
    _email = null;
    _fullName = null;
    notifyListeners();
  }
}
