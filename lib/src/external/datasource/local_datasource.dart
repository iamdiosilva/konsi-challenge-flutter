import 'package:konsi_challange/src/data/datasources/ilocal_datasource.dart';

import '../../core/constants/api.dart';
import '../../data/models/response_model.dart';
import '../../domain/data/services/ihttp_service.dart';

class LocalDatasource implements ILocalDatasource {
  final IHttpService service;
  LocalDatasource(this.service);
  @override
  Future<Map<String, dynamic>> getLocal(String cep) async {
    ResponseModel response = await service.get(
      baseUrl: Api.baseUrl,
      endPoint: "cep?cep=$cep",
    );
    return response.data;
  }
}
