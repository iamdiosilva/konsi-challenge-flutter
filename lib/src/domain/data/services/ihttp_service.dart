abstract class IHttpService<T> {
  Future<T> get({required String baseUrl, required String endPoint});
}
