import 'package:adv_app/core/networking/api_error_handler.dart';
import 'package:adv_app/core/networking/api_result.dart';
import 'package:adv_app/core/networking/api_service.dart';
import 'package:adv_app/features/signup/data/models/sign_up_request_body.dart';
import 'package:adv_app/features/signup/data/models/signup_response.dart';

class SignUpRepo {
  final ApiService apiService;
  SignUpRepo(this.apiService);

  Future<ApiResult<SignupResponse>> signup(
    SignupRequestBody signupRequestBody,
  ) async {
    try {
      final response = await apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
