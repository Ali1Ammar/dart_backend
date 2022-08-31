import 'package:dart_backend/src/middleware/middleware.dart';
import 'package:dart_backend/src/service/jwt_service.dart';
import 'package:injectable/injectable.dart';
import 'package:shelf_plus/shelf_plus.dart';

@singleton
class JwtGuard extends BaseMiddleware {
  JwtGuard(this.jwt);
  final JwtService jwt;

  @override
  Response? run(Request req) {
    final token = req.headers["token"];
    if(token==null) return Response.badRequest();
    
    final payload = jwt.verify(token);
    req.context["payload"]=payload;
    
    return null;
  }
}
