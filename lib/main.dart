import 'src/shared/prisma_service.dart';
import 'package:shelf_plus/shelf_plus.dart';
import 'src/shared/inject.dart';
import 'src/ad/ad_controller.dart';

Handler init() {
  final getIt = configureDependencies();
  
  var app = Router().plus;

  //mount your contoller to router here
  getIt.get<PrismaService>();
  final adController = getIt.get<AdController>();
  app.mount("/ad", adController.router);
  return app;
}
