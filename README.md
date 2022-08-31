# dart for the backend
**a project structure for using dart to develop a rest api**

**_tools used :_**
- shelf , shelf_plus , shelf_router_generator
- get_it , injectable
- orm (prisma orm) , NOTE: we are using a old version for generate a client now (the new version should be avaialbe in a fews day)
- dargon2 (for password hashing)
- dart_jsonwebtoken (for auth)
- dotenv (for config)
- logging (for logging)
- json_annotation (serialization and deserialization)

TODO: we may want some tools to easily this functionallty
- validator 
- apply middleware using annotations @Middleware(JwtGuard)
- parser
- error handling 

some code:
```dart
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
```
```dart
@injectable
class Config {
  late final env = DotEnv(includePlatformEnvironment: true)..load();

  String get hashKey => env["hash_key"]!;
  String get jwtKet => env["jwt_key"]!;
  Duration get expiresIn=> Duration(minutes: int.parse(env["expiresIn"]!));
}
```
```dart
@singleton
class AdController {
  AdController(this.prisma);

  final PrismaService prisma;
  RouterPlus get router {
    final route = _$AdControllerRouter(this).plus;
    // middleware apply here
    route.use(GetIt.instance<JwtGuard>());
    return route;
  }

  @Route.get('/')
  Future<Response> getAd(Request req) async {
    final ads = await prisma.ad.findMany();
    return Response.ok(ads);
  }

  @Route.post('/')
  Future<Response> createAd(final Request req) async {
    final body = await req.body.asJson as Map<String, dynamic>;
    final ad = await prisma.ad.createOne(
        data: AdCreateInput(
            title: body["title"] as String,
            filter: {},
            content: {},
            expiredAt: DateTime.now().add(Duration(days: 3))));
    return Response.ok(ad.id);
  }
}
```

