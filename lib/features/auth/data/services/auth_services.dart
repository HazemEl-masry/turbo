import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:turbo/core/networking/api_constants.dart';
import 'package:turbo/features/auth/data/models/login_request_body.dart';
import 'package:turbo/features/auth/data/models/login_response.dart';

part 'auth_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AuthServices {
  factory AuthServices(Dio dio) = _AuthServices;

  @POST("auth/login")
  Future<LoginResponse> login({@Body() required LoginRequestBody body});
}
