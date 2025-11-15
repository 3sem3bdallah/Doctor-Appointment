import 'package:adv_app/core/networking/api_service.dart';
import 'package:adv_app/core/networking/dio_factory.dart';
import 'package:adv_app/features/login/data/repo/login_repo.dart';
import 'package:adv_app/features/login/logic/cubit/login_cubit.dart';
import 'package:adv_app/features/signup/data/repo/sign_up_repo.dart';
import 'package:adv_app/features/signup/logic/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setUpGetIt() async {
  
  // Dio& ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}