import 'package:turbo/core/networking/api_result.dart';
import 'package:turbo/features/auth/data/models/login_request_body.dart';
import 'package:turbo/features/auth/data/models/login_response.dart';
import 'package:turbo/features/auth/data/services/auth_services.dart';

class AuthRepo {
  final AuthServices services;

  AuthRepo({required this.services});

  Future<ApiResult<LoginResponse>> login({
    required LoginRequestBody body,
  }) async {
    try {
      final response = await services.login(body: body);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(e);
    }
  }
}
