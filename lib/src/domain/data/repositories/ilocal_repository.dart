import '../../entities/local_entity.dart';

abstract class ILocalRepository {
  Future<LocalEntity> getLocal(String cep);
}
