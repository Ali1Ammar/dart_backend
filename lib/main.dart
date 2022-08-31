import 'package:dart_backend/src/model/ad/ad_controller.dart';
import 'package:dart_backend/src/shared/inject.dart';
import 'package:shelf_plus/shelf_plus.dart';

Handler init() {
  final getIt = configureDependencies();


  final app = Router().plus;

  //mount your contoller to router here
  final adController = getIt.get<AdController>();
    app.mount("/ad", adController.router);
  return app;
}
