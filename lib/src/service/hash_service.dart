import 'package:dargon2/dargon2.dart';
import 'package:dart_backend/src/shared/config.dart';
import 'package:injectable/injectable.dart';

//TODO fix raw+key , may use hash or replace argon2 package
@singleton
class HashService {
  HashService(Config config) {
    key = config.hashKey;
  }

  late final String key;

  Future<String> hash(String input) async {
    final res =
        await argon2.hashPasswordString(input + key, salt: Salt.newSalt());
    return res.base64String;
  }

  Future<bool> compare(String raw, String hash) async {
    return await argon2.verifyHashString(raw + key, hash);
  }
}
