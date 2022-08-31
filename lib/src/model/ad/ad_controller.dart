import 'package:dart_backend/prisma/prisma_generated.dart';
import 'package:dart_backend/src/middleware/jwt_guard.dart';
import 'package:dart_backend/src/service/prisma_service.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shelf_plus/shelf_plus.dart';

part 'ad_controller.g.dart';

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
