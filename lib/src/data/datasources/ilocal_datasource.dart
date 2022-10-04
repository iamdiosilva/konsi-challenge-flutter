abstract class ILocalDatasource {
  Future<Map<String, dynamic>> getLocal(String cep);
}
