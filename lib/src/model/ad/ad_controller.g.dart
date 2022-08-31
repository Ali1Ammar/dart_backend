// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_controller.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$AdControllerRouter(AdController service) {
  final router = Router();
  router.add('GET', r'/', service.getAd);
  router.add('POST', r'/', service.createAd);
  return router;
}
