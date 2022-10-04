import '../../domain/data/repositories/ilocal_repository.dart';
import '../../domain/entities/local_entity.dart';
import '../../domain/erros/local_exceptions.dart';
import '../datasources/ilocal_datasource.dart';
import '../models/local_model.dart';

class LocalRepository implements ILocalRepository {
  final ILocalDatasource datasource;
  LocalRepository(this.datasource);

  @override
  Future<LocalEntity> getLocal(String cep) async {
    try {
      Map<String, dynamic> response = await datasource.getLocal(cep);
      LocalEntity local = LocalModel.fromMap(response);

      return local;
    } catch (e) {
      throw LocalException("Erro ao buscar local");
    }
  }
}
