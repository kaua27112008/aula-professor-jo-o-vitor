import 'package:flutter_app/models/user_model.dart';

class LoginConntroller {
  String? login(String email, String password){
    for (var user in mockusers) {
      if (user.email == email && user.password == password) {
        return null;
      }
    }
    return 'Email ou senha invalidos';
  }
}
