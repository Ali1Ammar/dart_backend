import 'package:dart_backend/src/shared/config.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:injectable/injectable.dart';

typedef JwtSecretKet = String;

@singleton
class JwtService {
  JwtService(Config config) {
    _key = SecretKey(config.jwtKet);
    expiresIn = config.expiresIn;
  }

  late final Duration expiresIn;
  late final JWTKey _key;

  String sign(Map<String, dynamic> payload) {
    return JWT(payload).sign(_key, expiresIn: expiresIn);
  }

  Map<String, dynamic> verify(String token) {
    return JWT.verify(token, _key).payload as Map<String, dynamic>;
  }
}
