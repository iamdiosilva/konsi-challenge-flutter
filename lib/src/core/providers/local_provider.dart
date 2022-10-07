import 'package:flutter/material.dart';
import 'package:konsi_challange/src/domain/data/repositories/ilocal_repository.dart';
import 'package:konsi_challange/src/domain/entities/local_entity.dart';

class LocalProvider with ChangeNotifier {
  final ILocalRepository repository;
  // ignore: avoid_init_to_null
  LocalEntity? localEntity = null;
  LocalEntity? lastLocalEntity = null;
  bool isLoading = false;

  LocalProvider(this.repository);

  Future<void> getLocal(String cep) async {
    if (!isLoading) {
      isLoading = true;
      notifyListeners();
      try {
        getLastLocal();
        localEntity = await repository.getLocal(cep);
        if (lastLocalEntity == null) {
          getLastLocal();
        }
      } catch (e) {
        localEntity = null;
      }
      isLoading = false;
      notifyListeners();
    }
  }

  getLastLocal() {
    lastLocalEntity = localEntity;
  }
}
