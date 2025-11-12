import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:turbo/features/auth/data/repos/auth_repo.dart';
import 'package:turbo/features/auth/data/services/auth_services.dart';

final getIt = GetIt.instance;

setupDependencies() {}
setupAuth() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<AuthServices>(AuthServices(getIt()));
  getIt.registerSingleton<AuthRepo>(AuthRepo(services: getIt()));
}
