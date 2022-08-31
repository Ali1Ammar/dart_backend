import 'package:dotenv/dotenv.dart';
import 'package:injectable/injectable.dart';

@injectable
class Config {
  late final env = DotEnv(includePlatformEnvironment: true)..load();

  String get hashKey => env["hash_key"]!;
  String get jwtKet => env["jwt_key"]!;
  Duration get expiresIn=> Duration(minutes: int.parse(env["expiresIn"]!));
}
