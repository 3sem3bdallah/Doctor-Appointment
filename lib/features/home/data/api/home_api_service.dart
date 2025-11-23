import '../../../../core/networking/api_constants.dart';
import 'home_api_constant.dart';
import '../models/specialization_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'home_api_service.g.dart';
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String baseUrl}) = _HomeApiService;

  @GET(HomeApiConstant.specializationEP)
  
  Future<SpecializationResponseModel> getSpecialization();
}
