import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:solid_principle_demo_wc/core/common_models/status_models.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
part 'api_services.g.dart';

@RestApi(baseUrl: "https://dev.milkride.com/api/milkride/v1")
abstract class ApiServices {
  factory ApiServices(Dio dio) {
    dio.interceptors.add(PrettyDioLogger(
      responseBody: true,
      responseHeader: true,
      requestBody: true,
      requestHeader: true,
    ));
    return _ApiServices(dio);
  }

  @POST("/signin")
  Future<StatusModel> signInData(
    @Field("mobile_number") String mobileNumber,
    @Field("user_id") String userid,
  );
}
