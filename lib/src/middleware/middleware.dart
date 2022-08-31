
import 'package:shelf_plus/shelf_plus.dart';

abstract class BaseMiddleware {
  Response? run(Request req);
  Handler call(final Handler innerHandler) {
    return (req){
      final res = run(req);
      return res??innerHandler(req);
    };
  }
}