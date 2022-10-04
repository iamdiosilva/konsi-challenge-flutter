import '../../domain/entities/local_entity.dart';
import '../../domain/erros/local_exceptions.dart';

class LocalModel {
  static LocalEntity fromMap(Map<String, dynamic> map) {
    try {
      return LocalEntity(
        cep: map['cep'] ?? "",
        adress: map['logradouro'] ?? "",
        complement: map['complemento'] ?? "",
        neighborhood: map['bairro'] ?? "",
        city: map['cidade']['nome'] ?? "",
        initials: map['estado']['sigla'] ?? "",
        latitude: double.parse(map['latitude'] ?? 0.0),
        longitude: double.parse(map['longitude'] ?? 0.0),
      );
    } catch (e) {
      throw LocalException("Erro ao converter o map para o objeto");
    }
  }
}
