import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import  'inject.config.dart';

  
@InjectableInit(
    asExtension: true,
    initializerName: "init"
)  
GetIt configureDependencies() => GetIt.instance.init();  
