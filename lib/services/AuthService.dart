
import '../models/User.dart';

class AuthService{
  Future login({required User user}) async {
  if (user.Username == "admin@gmail.com" && user.Password == "Password") {
    return true;
  }
  return false;
  }
}