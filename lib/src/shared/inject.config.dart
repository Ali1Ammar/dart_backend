// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dart_backend/src/middleware/jwt_guard.dart' as _i8;
import 'package:dart_backend/src/model/ad/ad_controller.dart' as _i7;
import 'package:dart_backend/src/service/hash_service.dart' as _i4;
import 'package:dart_backend/src/service/jwt_service.dart' as _i5;
import 'package:dart_backend/src/service/prisma_service.dart' as _i6;
import 'package:dart_backend/src/shared/config.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// an extension to register the provided dependencies inside of [GetIt]
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of provided dependencies inside of [GetIt]
  _i1.GetIt init(
      {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i3.Config>(() => _i3.Config());
    gh.singleton<_i4.HashService>(_i4.HashService(get<_i3.Config>()));
    gh.singleton<_i5.JwtService>(_i5.JwtService(get<_i3.Config>()));
    gh.singleton<_i6.PrismaService>(_i6.PrismaService());
    gh.singleton<_i7.AdController>(_i7.AdController(get<_i6.PrismaService>()));
    gh.singleton<_i8.JwtGuard>(_i8.JwtGuard(get<_i5.JwtService>()));
    return this;
  }
}
