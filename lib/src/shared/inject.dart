import 'dart:io';

import 'package:dart_backend/src/service/hash_service.dart';
import 'package:dart_backend/src/service/jwt_service.dart';
import 'package:dart_backend/src/shared/inject.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(
    asExtension: true, preferRelativeImports: false, initializerName: "init")
GetIt configureDependencies() {
  final getIt = GetIt.instance.init();

  return getIt;
}


// @module  
// abstract class RegisterModule {  
//  // You can register named preemptive types like follows  
//   @Named("HashSecretKet")  
//   String get baseUrl => ;  

  
// }  
