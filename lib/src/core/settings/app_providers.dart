import 'package:dio/dio.dart';
import 'package:konsi_challange/src/core/providers/local_provider.dart';
import 'package:konsi_challange/src/data/datasources/ilocal_datasource.dart';
import 'package:konsi_challange/src/data/repositories/local_repository.dart';
import 'package:konsi_challange/src/domain/data/repositories/ilocal_repository.dart';
import 'package:konsi_challange/src/external/controllers/g_map_controller.dart';
import 'package:provider/provider.dart';

import '../../data/services/http_services.dart';
import '../../domain/data/services/ihttp_service.dart';
import '../../external/datasource/local_datasource.dart';

class AppProviders {
  static final providers = [
    Provider<IHttpService>(create: (_) => HttpService(Dio())),
    Provider<ILocalDatasource>(
        create: (context) => LocalDatasource(context.read<IHttpService>())),
    Provider<ILocalRepository>(
        create: (context) => LocalRepository(context.read<ILocalDatasource>())),
    ChangeNotifierProvider<LocalProvider>(
        create: (context) => LocalProvider(context.read<ILocalRepository>())),
    ChangeNotifierProvider<GMapController>(
        create: (context) => GMapController()),
  ];
}
