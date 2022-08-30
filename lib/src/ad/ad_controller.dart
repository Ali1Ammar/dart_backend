import 'package:dart_backend/prisma/prisma_generated.dart';
import 'package:injectable/injectable.dart';
import 'package:shelf_plus/shelf_plus.dart';
import '../shared/prisma_service.dart';

part 'ad_controller.g.dart';

@singleton  
class AdController {
  final PrismaService prisma;

  AdController(this.prisma);

  @Route.get('/')
  Future<Response> getAd(Request req) async {
    final ads = await prisma.ad.findMany();
    return Response.ok(ads);
  }

  @Route.post('/')
  Future<Response> createAd(Request req) async {
    final Map<String, dynamic> body = await req.body.asJson;
    final ad = await prisma.ad.createOne(
        data: AdCreateInput(
            title: body["title"],
            filter: {},
            content: {},
            expiredAt: DateTime.now().add(Duration(days: 3))));
    return Response.ok(ad.id);
  }

  Router get router => _$AdControllerRouter(this);
}
