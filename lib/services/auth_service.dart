import '../models/user.dart';

class AuthService {
  static final AuthService _instance = AuthService._internal();
  factory AuthService() => _instance;
  AuthService._internal();

  Future<User?> login(String email, String password) async {
    return null;
  }

  Future<void> logout() async {}
}
