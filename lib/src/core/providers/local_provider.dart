import 'package:flutter/material.dart';
import 'package:konsi_challange/src/domain/data/repositories/ilocal_repository.dart';
import 'package:konsi_challange/src/domain/entities/local_entity.dart';

class LocalProvider with ChangeNotifier {
  final ILocalRepository repository;
  LocalEntity? localEntity = null;
  bool isLoading = false;

  LocalProvider(this.repository);

  Future<void> getLocal(String cep) async {
    isLoading = true;
    notifyListeners();
    try {
      localEntity = await repository.getLocal(cep);
    } catch (e) {
      localEntity = null;
    }
    isLoading = false;
    notifyListeners();
  }
}
