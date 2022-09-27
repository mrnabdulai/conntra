import 'package:contra/constants/api.dart';
import 'package:contra/model/user.dart';
import 'package:dio/dio.dart';

class ApiService {
  late Dio _dio;

  ApiService(Dio dio) {
    _dio = dio;
  }

  Future login({required String email, required String password}) async {
    try {
      Response res = await _dio.post(API_BASE_URL + 'login',
          data: {'email': email, 'password': password});
      if (res.statusCode == null) throw Exception('Invalid status code');
      String? msg = _getErrorMsg(res.statusCode!);
      //TODO: return user details here
      if (msg == null) return;
      return msg;
    } on Exception {
      return 'An error while trying to login';
    }
  }

  Future signUp(User user, String confirmPassword) async {
    try {
      Response res = await _dio.post('${API_BASE_URL}signUp',
          data: {...user.toJson, 'password_confirmation': confirmPassword});
      if (res.statusCode == null) throw Exception('Invalid status code');
      String? msg = _getErrorMsg(res.statusCode!);
      //TODO: return user details here
      if (msg == null) return;
      return msg;
    } on Exception {
      return 'An error while trying to signup';
    }
  }

  String? _getErrorMsg(int statusCode) {
    switch (statusCode) {
      case 200:
        return null;
      case 201:
        return null;
      case 400:
        return 'Bad request';
      case 404:
        return 'Url not found';
      case 500:
        return 'Internal server error';
      default:
        return 'Error connecting to api';
    }
  }
}
