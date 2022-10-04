import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

import '../../domain/data/services/ihttp_service.dart';
import '../../domain/erros/http_exception.dart';
import '../models/response_model.dart';

class HttpService implements IHttpService<ResponseModel> {
  //final Client http;
  final Dio http;
  HttpService(this.http);

  @override
  Future<ResponseModel> get(
      {required String baseUrl, required String endPoint}) async {
    try {
      String url = '$baseUrl$endPoint';
      //TODO: API CERTIFICADO EXPIRADO //PINS EM POSICOES ERRADAS
      (http.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
      final response = await http.get(
        url,
        options: Options(
          headers: {
            "Authorization": "Token token=b4cfd3156dbc85e472ca3ef8a72673e1",
          },
        ),
      );
      return ResponseModel(response.data);
    } catch (e) {
      throw HttpException(e.toString());
    }
  }
}
